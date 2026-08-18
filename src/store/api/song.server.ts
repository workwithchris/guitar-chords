import { cache } from 'react'
import { unstable_cache } from 'next/cache'
import { createServerClient } from "@/core/supabase/server"
import type { Song, Artist, PaginatedResult, HomeStats } from '@/core/types'

async function _fetchActiveSongs(): Promise<Song[]> {
    const supabase = createServerClient()
    const { data, error } = await supabase
        .from("song")
        .select("*, artist!inner(name,isActive,id)")
        .eq("isActive", true)
        .eq("artist.isActive", true)
        .order("createdAt", { ascending: false })
        .limit(100)
    if (error) throw new Error(error.message)
    return (data ?? []) as unknown as Song[]
}

export const fetchActiveSongsServer = cache(unstable_cache(_fetchActiveSongs, ['songs-active'], { revalidate: 60 }))

async function _fetchActiveArtistsWithSongCount(): Promise<Artist[]> {
    const supabase = createServerClient()
    const { data, error } = await supabase
        .from("artist_with_song_count")
        .select("*")
        .eq("isActive", true)
    if (error) throw new Error(error.message)
    return (data ?? []) as unknown as Artist[]
}

export const fetchActiveArtistsWithSongCountServer = cache(unstable_cache(_fetchActiveArtistsWithSongCount, ['artists-active-count'], { revalidate: 300 }))

async function _fetchSongBySlug(slug: string): Promise<{ song: Song; artist: Artist }> {
    const supabase = createServerClient()
    const { data: song, error } = await supabase
        .from("song")
        .select("*")
        .eq("slug", slug)
        .single()
    if (error || !song) throw new Error(error?.message || "Song not found")
    const typedSong = song as unknown as Song

    const { data: artist, error: artistError } = await supabase
        .from("artist")
        .select("*")
        .eq("id", typedSong.artistId)
        .single()
    if (artistError || !artist) throw new Error(artistError?.message || "Artist not found")

    return { song: typedSong, artist: artist as unknown as Artist }
}

export const fetchSongBySlugServer = cache(async (slug: string) => {
    const getCached = unstable_cache(
        () => _fetchSongBySlug(slug),
        [`song-by-slug-${slug}`],
        { revalidate: 60 }
    )
    return getCached()
})

async function _fetchArtistBySlug(slug: string): Promise<Artist> {
    const supabase = createServerClient()
    const { data, error } = await supabase
        .from("artist")
        .select("*")
        .eq("slug", slug)
        .single()
    if (error) throw new Error(error.message)
    return data as unknown as Artist
}

export const fetchArtistBySlugServer = cache(async (slug: string) => {
    const getCached = unstable_cache(
        () => _fetchArtistBySlug(slug),
        [`artist-by-slug-${slug}`],
        { revalidate: 60 }
    )
    return getCached()
})

async function _fetchSongsByArtistSlug(slug: string): Promise<Song[]> {
    const supabase = createServerClient()
    const { data: artist } = await supabase
        .from("artist")
        .select("id")
        .eq("slug", slug)
        .single()
    if (!artist) throw new Error("Artist not found")
    const a = artist as unknown as { id: number }

    const { data: songs } = await supabase
        .from("song")
        .select("*")
        .eq("artistId", a.id)
    return (songs ?? []) as unknown as Song[]
}

export const fetchSongsByArtistSlugServer = cache(async (slug: string) => {
    const getCached = unstable_cache(
        () => _fetchSongsByArtistSlug(slug),
        [`songs-by-artist-slug-${slug}`],
        { revalidate: 60 }
    )
    return getCached()
})

async function _getHomeStats(): Promise<HomeStats> {
    const supabase = createServerClient()
    const { data, error } = await supabase.rpc('get_home_stats')
    if (error) throw new Error(error.message)
    return data?.[0] ?? { totalSongs: 0, totalArtists: 0, totalGenres: 0, beginnerCount: 0 }
}

export const getHomeStats = cache(unstable_cache(_getHomeStats, ['home-stats'], { revalidate: 60 }))

async function _getRecentSongs(limit = 6): Promise<Song[]> {
    const supabase = createServerClient()
    const { data, error } = await supabase
        .from("song")
        .select("id, title, slug, image, difficulty, artist!inner(name,isActive,id)")
        .eq("isActive", true)
        .eq("artist.isActive", true)
        .order("createdAt", { ascending: false })
        .limit(limit)
    if (error) throw new Error(error.message)
    return (data ?? []) as unknown as Song[]
}

export const getRecentSongs = cache(async (limit = 6) => {
    const getCached = unstable_cache(
        () => _getRecentSongs(limit),
        [`recent-songs-${limit}`],
        { revalidate: 60 }
    )
    return getCached()
})

async function _getFeaturedArtist(): Promise<Artist | null> {
    const supabase = createServerClient()
    const { data: artists, error } = await supabase
        .from("artist_with_song_count")
        .select("*")
        .eq("isActive", true)
        .order("songCount", { ascending: false })
        .limit(1)
    if (error) throw new Error(error.message)
    return (artists?.[0] ?? null) as unknown as Artist | null
}

export const getFeaturedArtist = cache(unstable_cache(_getFeaturedArtist, ['featured-artist'], { revalidate: 300 }))

async function _getDistinctGenres(): Promise<string[]> {
    const supabase = createServerClient()
    const { data, error } = await supabase
        .from("song")
        .select("genre")
        .eq("isActive", true)
        .not("genre", "is", null)
        .limit(100)
    if (error) throw new Error(error.message)
    return [...new Set(((data ?? []) as any[]).map((r: any) => r.genre).filter(Boolean))] as string[]
}

export const getDistinctGenres = cache(unstable_cache(_getDistinctGenres, ['distinct-genres'], { revalidate: 300 }))

async function _getGenreCounts(): Promise<{ genre: string; count: number }[]> {
  const supabase = createServerClient()
  const { data, error } = await supabase
    .from("song")
    .select("genre")
    .eq("isActive", true)
    .not("genre", "is", null)
    .limit(500)
  if (error) throw new Error(error.message)
  const counts: Record<string, number> = {}
  for (const row of data as any[]) {
    if (row.genre) counts[row.genre] = (counts[row.genre] || 0) + 1
  }
  return Object.entries(counts)
    .map(([genre, count]) => ({ genre, count }))
    .sort((a, b) => b.count - a.count)
}

export const getGenreCounts = cache(unstable_cache(_getGenreCounts, ['genre-counts'], { revalidate: 300 }))

async function _getKeysWithSongCount(): Promise<{ key: string; count: number }[]> {
  const supabase = createServerClient()
  const { data, error } = await supabase
    .from("song")
    .select("key")
    .eq("isActive", true)
    .not("key", "is", null)
    .limit(500)
  if (error) throw new Error(error.message)
  const counts: Record<string, number> = {}
  for (const row of data as any[]) {
    if (row.key) counts[row.key] = (counts[row.key] || 0) + 1
  }
  return Object.entries(counts)
    .map(([key, count]) => ({ key, count }))
    .sort((a, b) => b.count - a.count)
}

export const getKeysWithSongCount = cache(unstable_cache(_getKeysWithSongCount, ['keys-song-count'], { revalidate: 300 }))

async function _getTrendingSongs(limit = 6): Promise<Song[]> {
  const supabase = createServerClient()
  try {
    const { data } = await supabase
      .from("page_view")
      .select("songId")
      .not("songId", "is", null)
      .gte("createdAt", new Date(Date.now() - 7 * 86400000).toISOString()) as any

    const views: any[] = data ?? []

    if (views.length === 0) {
      return _getRecentSongsInner(limit)
    }

    const counts: Record<number, number> = {}
    for (const v of views) {
      if (v.songId) counts[v.songId] = (counts[v.songId] || 0) + 1
    }

    const topIds = Object.entries(counts)
      .sort(([, a], [, b]) => b - a)
      .slice(0, limit)
      .map(([id]) => parseInt(id))

    if (topIds.length === 0) return _getRecentSongsInner(limit)

    const { data: songs } = await supabase
      .from("song")
      .select("id, title, slug, image, difficulty, artist!inner(name,isActive,id)")
      .in("id", topIds)
      .eq("isActive", true)
      .eq("artist.isActive", true)

    if (!songs || songs.length === 0) return _getRecentSongsInner(limit)

    return (songs as unknown as Song[])
      .map((s: any) => ({ ...s, views: counts[s.id] }))
      .sort((a: any, b: any) => (b.views ?? 0) - (a.views ?? 0))
      .slice(0, limit)
  } catch {
    return _getRecentSongsInner(limit)
  }
}

async function _getRecentSongsInner(limit = 6): Promise<Song[]> {
  const supabase = createServerClient()
  const { data, error } = await supabase
    .from("song")
    .select("id, title, slug, image, difficulty, artist!inner(name,isActive,id)")
    .eq("isActive", true)
    .eq("artist.isActive", true)
    .order("createdAt", { ascending: false })
    .limit(limit)
  if (error) throw new Error(error.message)
  return (data ?? []) as unknown as Song[]
}

export const getTrendingSongs = cache(async (limit = 6) => {
  const getCached = unstable_cache(
    () => _getTrendingSongs(limit),
    [`trending-songs-${limit}`],
    { revalidate: 300 }
  )
  return getCached()
})

export async function fetchSongsByKey(key: string, excludeId?: number, limit = 4): Promise<Song[]> {
  const supabase = createServerClient()
  let query = supabase
    .from("song")
    .select("id, title, slug, image, difficulty, artist!inner(name,isActive,id)")
    .eq("key", key)
    .eq("isActive", true)
    .eq("artist.isActive", true)
  if (excludeId) query = query.neq("id", excludeId)
  const { data, error } = await query.limit(limit)
  if (error) throw new Error(error.message)
  return (data ?? []) as unknown as Song[]
}

type SongsQueryParams = {
    page?: number
    limit?: number
    difficulty?: string
    genre?: string
    key?: string
    sortBy?: 'createdAt' | 'title' | 'year' | 'difficulty'
    sortOrder?: 'asc' | 'desc'
}

async function _fetchActiveSongsWithParams(params: SongsQueryParams): Promise<PaginatedResult<Song>> {
    const { page = 1, limit = 24, difficulty, genre, key, sortBy = 'createdAt', sortOrder = 'desc' } = params
    const supabase = createServerClient()

    let query = supabase
        .from("song")
        .select("*, artist!inner(name,isActive,id)", { count: 'exact' })
        .eq("isActive", true)
        .eq("artist.isActive", true)

    if (difficulty) query = query.eq("difficulty", difficulty)
    if (genre) query = query.eq("genre", genre)
    if (key) query = query.eq("key", key)

    const from = (page - 1) * limit
    const to = from + limit - 1

    const { data, error, count } = await query
        .order(sortBy, { ascending: sortOrder === 'asc' })
        .range(from, to)

    if (error) throw new Error(error.message)

    return {
        data: (data ?? []) as unknown as Song[],
        totalCount: count ?? 0,
        page,
        totalPages: Math.ceil((count ?? 0) / limit),
    }
}

export const fetchActiveSongsWithParams = cache(async (params: SongsQueryParams) => {
    const cacheKey = [`songs-query-${JSON.stringify(params)}`]
    const getCached = unstable_cache(
        () => _fetchActiveSongsWithParams(params),
        cacheKey,
        { revalidate: 60 }
    )
    return getCached()
})

type ArtistsQueryParams = {
    page?: number
    limit?: number
    letter?: string
    search?: string
    sortBy?: 'name' | 'songCount'
    sortOrder?: 'asc' | 'desc'
}

async function _fetchActiveArtistsWithParams(params: ArtistsQueryParams): Promise<PaginatedResult<Artist>> {
    const { page = 1, limit = 24, letter, search, sortBy = 'songCount', sortOrder = 'desc' } = params
    const supabase = createServerClient()

    let query = supabase
        .from("artist_with_song_count")
        .select("*", { count: 'exact' })
        .eq("isActive", true)

    if (letter) {
        const nextChar = String.fromCharCode(letter.charCodeAt(0) + 1)
        query = query.gte("name", letter).lt("name", nextChar)
    }
    if (search) {
        query = query.ilike("name", `%${search}%`)
    }

    const from = (page - 1) * limit
    const to = from + limit - 1

    const { data, error, count } = await query
        .order("name", { ascending: sortOrder === 'asc' })
        .range(from, to)

    if (error) throw new Error(error.message)

    return {
        data: (data ?? []) as unknown as Artist[],
        totalCount: count ?? 0,
        page,
        totalPages: Math.ceil((count ?? 0) / limit),
    }
}

export const fetchActiveArtistsWithParams = cache(async (params: ArtistsQueryParams) => {
    const cacheKey = [`artists-query-${JSON.stringify(params)}`]
    const getCached = unstable_cache(
        () => _fetchActiveArtistsWithParams(params),
        cacheKey,
        { revalidate: 300 }
    )
    return getCached()
})

type AdminSongsParams = {
    search?: string
    difficulty?: string
    page?: number
    limit?: number
}

async function _searchSongsAdmin(params: AdminSongsParams): Promise<PaginatedResult<Song>> {
    const { search, difficulty, page = 1, limit = 50 } = params
    const supabase = createServerClient()

    let query = supabase
        .from("song")
        .select("*, artist(name,isActive,id)", { count: 'exact' })

    if (search) {
        query = query.or(`title.ilike.%${search}%,artist.name.ilike.%${search}%`)
    }
    if (difficulty) {
        query = query.eq("difficulty", difficulty)
    }

    const from = (page - 1) * limit
    const to = from + limit - 1

    const { data, error, count } = await query
        .order("createdAt", { ascending: false })
        .range(from, to)

    if (error) throw new Error(error.message)
    return { data: (data ?? []) as unknown as Song[], totalCount: count ?? 0, page, totalPages: Math.ceil((count ?? 0) / limit) }
}

export const searchSongsAdmin = cache(async (params: AdminSongsParams) => {
    return _searchSongsAdmin(params)
})

type AdminArtistsParams = {
    search?: string
    page?: number
    limit?: number
}

async function _searchArtistsAdmin(params: AdminArtistsParams): Promise<PaginatedResult<Artist>> {
    const { search, page = 1, limit = 50 } = params
    const supabase = createServerClient()

    let query = supabase
        .from("artist")
        .select("*", { count: 'exact' })

    if (search) {
        query = query.ilike("name", `%${search}%`)
    }

    const from = (page - 1) * limit
    const to = from + limit - 1

    const { data, error, count } = await query
        .order("name", { ascending: true })
        .range(from, to)

    if (error) throw new Error(error.message)
    return { data: (data ?? []) as unknown as Artist[], totalCount: count ?? 0, page, totalPages: Math.ceil((count ?? 0) / limit) }
}

export const searchArtistsAdmin = cache(async (params: AdminArtistsParams) => {
    return _searchArtistsAdmin(params)
})
