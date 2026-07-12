import { parseChordToken, transposeChordToken } from './chords'

export type Segment = { chord: string | null; chordRaw: string | null; lyric: string }
export type ParsedLine = { section: string | null; segments: Segment[] }

const SECTION_RE =
  /^(Intro|Verse|Chorus|Pre-?Chorus|Bridge|Outro|Hook|Solo|Instrumental|Interlude|Refrain|Tag|Vamp|Ending|Coda|Break|Middle 8)(?:\s*\d*)?$/i

function escapeHtml(s: string): string {
  return s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;')
}

export function parseChordContentLine(line: string): ParsedLine {
  let i = 0
  const segments: Segment[] = []
  let pendingChord: string | null = null
  let pendingChordRaw: string | null = null

  while (i < line.length) {
    if (line[i] === '[') {
      const end = line.indexOf(']', i + 1)
      if (end < 0) {
        segments.push({ chord: null, chordRaw: null, lyric: escapeHtml(line.slice(i)) })
        break
      }
      const content = line.slice(i + 1, end).trim()
      const parsed = parseChordToken(content)
      if (parsed) {
        const last = segments[segments.length - 1]
        if (last && last.lyric === '' && last.chord === null) {
          last.chord = content
          last.chordRaw = content
        } else {
          segments.push({ chord: content, chordRaw: content, lyric: '' })
        }
        pendingChord = content
        pendingChordRaw = content
      } else if (SECTION_RE.test(content)) {
        return { section: content, segments: [] }
      } else {
        segments.push({ chord: null, chordRaw: null, lyric: `[${escapeHtml(content)}]` })
      }
      i = end + 1
    } else {
      const next = line.indexOf('[', i)
      const run = next < 0 ? line.slice(i) : line.slice(i, next)
      if (pendingChord) {
        segments.push({ chord: pendingChord, chordRaw: pendingChordRaw, lyric: escapeHtml(run) })
        pendingChord = null
        pendingChordRaw = null
      } else {
        const last = segments[segments.length - 1]
        if (last && last.chord === null && last.lyric !== '') {
          last.lyric += escapeHtml(run)
        } else {
          segments.push({ chord: null, chordRaw: null, lyric: escapeHtml(run) })
        }
      }
      i = next < 0 ? line.length : next
    }
  }

  if (pendingChord) {
    segments.push({ chord: pendingChord, chordRaw: pendingChordRaw, lyric: '' })
  }

  return { section: null, segments }
}

export function normalizeNewlines(raw: string): string {
  return raw.replace(/\\n/g, '\n').replace(/\r\n?/g, '\n')
}

export function isLegacyHtml(raw: string): boolean {
  return /<\w+[^>]*>/.test(raw)
}

export function formatChordContent(
  raw: string,
  opts: { semitones?: number; useFlats?: boolean } = {}
): { html: string; chords: string[] } {
  const { semitones = 0, useFlats = false } = opts
  const text = normalizeNewlines(raw ?? '')
  const chords = new Set<string>()
  const lines = text.split('\n')

  const html = lines
    .map((line) => {
      const parsed = parseChordContentLine(line)
      if (parsed.section) {
        const label = escapeHtml(parsed.section)
        return `<h3 class="lyric-section">${label}</h3>`
      }
      if (parsed.segments.length === 0) return '<div class="lyric-line">&nbsp;</div>'
      const segsHtml = parsed.segments
        .map((seg) => {
          let chordLabel = ''
          if (seg.chord) {
            const transposed =
              semitones === 0 ? seg.chord : transposeChordToken(seg.chord, semitones, useFlats)
            chords.add(transposed)
            const esc = transposed.replace(/"/g, '&quot;')
            chordLabel = `<span class="chord" data-chord="${esc}">${escapeHtml(transposed)}</span>`
          }
          const lyric = seg.lyric === '' ? '&nbsp;' : seg.lyric
          return `<span class="seg">${chordLabel}<span class="lyric">${lyric}</span></span>`
        })
        .join('')
      return `<div class="lyric-line">${segsHtml}</div>`
    })
    .join('')

  return { html, chords: Array.from(chords) }
}