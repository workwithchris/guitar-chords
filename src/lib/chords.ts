export const SHARP_SCALE = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
export const FLAT_SCALE = ['C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab', 'A', 'Bb', 'B']

const NOTE_TO_INDEX: Record<string, number> = {
  C: 0, 'C#': 1, Db: 1, D: 2, 'D#': 3, Eb: 3, E: 4, F: 5,
  'F#': 6, Gb: 6, G: 7, 'G#': 8, Ab: 8, A: 9, 'A#': 10, Bb: 10, B: 11,
}

export const CHORD_REGEX =
  /(^|[^A-Za-z])([A-G](?:#|b)?(?:maj7|maj9|maj|M7|min|m7b5|m7-5|m7|m6|min7|maj|min|dim7|dim|aug|sus2|sus4|sus|add9|add2|madd9|6|7|9|11|13|5)?(?:\/[A-G](?:#|b)?)?)(?![A-Za-z])/g

export type ParsedChord = { root: string; quality: string; bass: string }

export function parseChordToken(token: string): ParsedChord | null {
  const m = token.match(/^([A-G])(#|b)?(.*)$/)
  if (!m) return null
  const root = m[1] + (m[2] ?? '')
  let rest = m[3] ?? ''
  let bass = ''
  const slash = rest.indexOf('/')
  if (slash >= 0) {
    const tail = rest.slice(slash + 1)
    const bm = tail.match(/^([A-G])(#|b)?/)
    if (bm) bass = bm[1] + (bm[2] ?? '')
    rest = rest.slice(0, slash)
  }
  return { root, quality: rest, bass }
}

export function shiftNote(note: string, semitones: number, useFlats: boolean): string {
  const idx = NOTE_TO_INDEX[note]
  if (idx === undefined) return note
  const scale = useFlats ? FLAT_SCALE : SHARP_SCALE
  const next = (((idx + semitones) % 12) + 12) % 12
  return scale[next]
}

export function transposeChordToken(token: string, semitones: number, useFlats: boolean): string {
  const parsed = parseChordToken(token)
  if (!parsed) return token
  const root = shiftNote(parsed.root, semitones, useFlats)
  const bass = parsed.bass ? `/${shiftNote(parsed.bass, semitones, useFlats)}` : ''
  return `${root}${parsed.quality}${bass}`
}

export function transformTextNodes(html: string, fn: (text: string) => string): string {
  const parts = html.split(/(<[^>]*>)/g)
  return parts
    .map((part, i) => {
      if (i % 2 === 1) return part
      return fn(part)
    })
    .join('')
}

export function wrapChords(
  html: string,
  semitones: number,
  useFlats: boolean,
  className = 'chord-pop'
): string {
  return transformTextNodes(html, (text) =>
    text.replace(CHORD_REGEX, (_full, prefix: string, chord: string) => {
      const transposed = semitones === 0 ? chord : transposeChordToken(chord, semitones, useFlats)
      const escaped = transposed.replace(/"/g, '&quot;')
      return `${prefix}<span class="${className}" data-chord="${escaped}">${transposed}</span>`
    })
  )
}

export function extractChordsFromHtml(html: string): string[] {
  const found = new Set<string>()
  transformTextNodes(html, (text) => {
    let m: RegExpExecArray | null
    CHORD_REGEX.lastIndex = 0
    while ((m = CHORD_REGEX.exec(text)) !== null) {
      found.add(m[2])
    }
    return text
  })
  return Array.from(found)
}

export function songKeyIndex(key?: string | null): number {
  if (!key) return -1
  return NOTE_TO_INDEX[key] ?? -1
}

export function preferFlatsForKey(key: string): boolean {
  return FLAT_SCALE.includes(key) && !SHARP_SCALE.includes(key)
}