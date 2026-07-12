import { createClient } from '@supabase/supabase-js'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

if (!supabaseUrl || !supabaseKey) {
  console.error('Missing NEXT_PUBLIC_SUPABASE_URL or NEXT_PUBLIC_SUPABASE_ANON_KEY in env')
  process.exit(1)
}

const supabase = createClient(supabaseUrl, supabaseKey)

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms))
}

function normalizeTerm(s) {
  if (!s) return ''
  return s.replace(/[’'´`]/g, "'").replace(/[–—]/g, '-').normalize('NFD').replace(/[\u0300-\u036f]/g, '').trim()
}

async function fetchItunesImage(artist, title) {
  const term = encodeURIComponent(`${artist} ${title}`)
  const url = `https://itunes.apple.com/search?term=${term}&limit=5&entity=song`
  try {
    const res = await fetch(url, { signal: AbortSignal.timeout(8000) })
    if (!res.ok) return null
    const data = await res.json()
    if (!data.results?.length) return null

    const artistNorm = normalizeTerm(artist).toLowerCase()
    const titleNorm = normalizeTerm(title).toLowerCase()

    const match = data.results.find(r => {
      const rArtist = normalizeTerm(r.artistName).toLowerCase()
      const rTrack = normalizeTerm(r.trackName).toLowerCase()
      const artistOk = rArtist.includes(artistNorm) || artistNorm.includes(rArtist)
      const titleOk = rTrack.includes(titleNorm) || titleNorm.includes(rTrack)
      return artistOk && titleOk
    }) || data.results[0]

    if (match?.artworkUrl100) {
      return match.artworkUrl100.replace('100x100bb', '500x500bb')
    }
    return null
  } catch {
    return null
  }
}

async function searchYoutube(artist, title) {
  try {
    const { search } = await import('yt-search')
    const query = `${artist} - ${title} official audio`
    const result = await search(query)
    const video = result?.videos?.[0]
    if (video?.videoId) {
      return `https://www.youtube.com/embed/${video.videoId}`
    }
    return null
  } catch {
    return null
  }
}

async function main() {
  console.log('Fetching all songs from Supabase...')
  const { data: songs, error } = await supabase
    .from('song')
    .select('id, title, slug, image, "videoUrl", artist!inner(name)')
    .order('id', { ascending: true })

  if (error) {
    console.error('Error fetching songs:', error.message)
    process.exit(1)
  }

  console.log(`Total songs: ${songs.length}`)

  const missingImage = songs.filter(s => !s.image)
  const missingVideo = songs.filter(s => !s.videoUrl)

  console.log(`Missing image: ${missingImage.length}`)
  console.log(`Missing videoUrl: ${missingVideo.length}`)

  let imageUpdated = 0
  let imageFailed = 0
  let videoUpdated = 0
  let videoFailed = 0

  // Process missing images (iTunes API — fast)
  if (missingImage.length > 0) {
    console.log('\n--- Fetching album art from iTunes ---')
    for (let i = 0; i < missingImage.length; i++) {
      const song = missingImage[i]
      const artistName = song.artist?.name || ''
      const title = song.title || ''

      process.stdout.write(`[${i + 1}/${missingImage.length}] "${title}" by ${artistName}... `)

      const imageUrl = await fetchItunesImage(artistName, title)

      if (imageUrl) {
        const { error: updateErr } = await supabase
          .from('song')
          .update({ image: imageUrl })
          .eq('id', song.id)

        if (updateErr) {
          console.log(`FAIL (db): ${updateErr.message}`)
          imageFailed++
        } else {
          console.log(`OK → ${imageUrl}`)
          imageUpdated++
        }
      } else {
        console.log('SKIP (not found)')
        imageFailed++
      }

      if (i < missingImage.length - 1) await sleep(300)
    }
  }

  // Process missing videos (yt-search — slower)
  if (missingVideo.length > 0) {
    console.log('\n--- Fetching YouTube videos ---')
    for (let i = 0; i < missingVideo.length; i++) {
      const song = missingVideo[i]
      const artistName = song.artist?.name || ''
      const title = song.title || ''

      process.stdout.write(`[${i + 1}/${missingVideo.length}] "${title}" by ${artistName}... `)

      const videoUrl = await searchYoutube(artistName, title)

      if (videoUrl) {
        const { error: updateErr } = await supabase
          .from('song')
          .update({ videoUrl })
          .eq('id', song.id)

        if (updateErr) {
          console.log(`FAIL (db): ${updateErr.message}`)
          videoFailed++
        } else {
          console.log(`OK → ${videoUrl}`)
          videoUpdated++
        }
      } else {
        console.log('SKIP (not found)')
        videoFailed++
      }

      if (i < missingVideo.length - 1) await sleep(500)
    }
  }

  console.log('\n=== Summary ===')
  console.log(`Images: ${imageUpdated} updated, ${imageFailed} failed/skipped`)
  console.log(`Videos: ${videoUpdated} updated, ${videoFailed} failed/skipped`)
  console.log('Done!')
}

main().catch(err => {
  console.error('Fatal:', err)
  process.exit(1)
})
