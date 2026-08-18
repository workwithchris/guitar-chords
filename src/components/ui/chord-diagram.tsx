import React from 'react'
import guitarChords from '@tombatossals/chords-db/lib/guitar.json'

type FretPosition = {
  string: number
  fret: number
  finger?: number
}

type ChordShape = {
  name: string
  positions: FretPosition[]
  barre?: { fret: number; fromString: number; toString: number }
  baseFret?: number
}

type DbPosition = {
  frets: number[]
  fingers?: number[]
  baseFret?: number
  barres?: number[]
  capo?: boolean
}

type DbEntry = { key: string; suffix: string; positions: DbPosition[] }

const CHORDS = (guitarChords as { chords: Record<string, DbEntry[]> }).chords

// chords-db root keys (uses sharps for C#/F#, flats for Eb/Ab/Bb)
const DB_KEYS = ['C', 'Csharp', 'D', 'Eb', 'E', 'F', 'Fsharp', 'G', 'Ab', 'A', 'Bb', 'B']

// our chord quality tokens -> chords-db suffix names
const QUALITY_TO_SUFFIX: Record<string, string> = {
  '': 'major',
  maj: 'major',
  M: 'major',
  m: 'minor',
  min: 'minor',
  dim: 'dim',
  aug: 'aug',
  sus: 'sus4',
  sus2: 'sus2',
  sus4: 'sus4',
  '7': '7',
  maj7: 'maj7',
  M7: 'maj7',
  m7: 'm7',
  min7: 'm7',
  dim7: 'dim7',
  'm7b5': 'm7b5',
  'm7-5': 'm7b5',
  '6': '6',
  m6: 'm6',
  '9': '9',
  maj9: 'maj9',
  m9: 'm9',
  add9: 'add9',
  add2: 'add9',
  madd9: 'madd9',
  '11': '11',
  '13': '13',
}

function noteToPitch(name: string): number {
  const map: Record<string, number> = { C: 0, 'C#': 1, Db: 1, D: 2, 'D#': 3, Eb: 3, E: 4, 'E#': 5, F: 5, 'F#': 6, Gb: 6, G: 7, 'G#': 8, Ab: 8, A: 9, 'A#': 10, Bb: 10, B: 11, Cb: 11, 'B#': 0 }
  return map[name] ?? -1
}

function mod12(n: number): number {
  return ((n % 12) + 12) % 12
}

export function parseChord(raw: string): { root: string; quality: string; bass: string } | null {
  const m = raw.match(/^([A-G])(#|b)?(.*)$/)
  if (!m) return null
  const root = m[1] + (m[2] ?? '')
  let rest = m[3] ?? ''
  let bass = ''
  const slashIdx = rest.indexOf('/')
  if (slashIdx >= 0) {
    const tail = rest.slice(slashIdx + 1)
    const bassMatch = tail.match(/^([A-G])(#|b)?/)
    if (bassMatch) bass = bassMatch[1] + (bassMatch[2] ?? '')
    rest = rest.slice(0, slashIdx)
  }
  return { root, quality: rest.trim() || '', bass }
}

// Power chords (root + 5th) are movable shapes not in chords-db — build directly.
function powerShape(root: string): ChordShape | null {
  const pitch = noteToPitch(root)
  if (pitch < 0) return null
  const eFret = mod12(pitch - 4) // root on low E string
  if (eFret <= 3) {
    return {
      name: `${root}5`,
      positions: [
        { string: 6, fret: eFret, finger: eFret > 0 ? 1 : undefined },
        { string: 5, fret: eFret + 2, finger: eFret > 0 ? 3 : undefined },
        { string: 4, fret: eFret + 2, finger: eFret > 0 ? 4 : undefined },
        { string: 3, fret: -1 },
        { string: 2, fret: -1 },
        { string: 1, fret: -1 },
      ],
      baseFret: eFret === 0 ? 1 : eFret,
    }
  }
  const aFret = mod12(pitch - 9) // root on A string
  return {
    name: `${root}5`,
    positions: [
      { string: 6, fret: -1 },
      { string: 5, fret: aFret, finger: 1 },
      { string: 4, fret: aFret + 2, finger: 3 },
      { string: 3, fret: aFret + 2, finger: 4 },
      { string: 2, fret: -1 },
      { string: 1, fret: -1 },
    ],
    baseFret: aFret,
  }
}

export function getChordShape(name: string): ChordShape | null {
  const trimmed = name.trim()
  const parsed = parseChord(trimmed)
  if (!parsed) return null

  if (parsed.quality === '5' || parsed.quality === 'power') return powerShape(parsed.root)

  const pitch = noteToPitch(parsed.root)
  if (pitch < 0) return null
  const dbKey = DB_KEYS[pitch]
  const suffix = QUALITY_TO_SUFFIX[parsed.quality] ?? parsed.quality
  const rootShapes = CHORDS[dbKey]
  if (!rootShapes) return null
  const entry =
    rootShapes.find((e) => e.suffix === suffix) ??
    rootShapes.find((e) => e.suffix === 'major')
  if (!entry || entry.positions.length === 0) return null

  // chords-db orders positions by popularity — first is the standard shape.
  const pick = entry.positions[0]
  if (!pick || pick.frets.length !== 6) return null

  // frets/fingers index 0 = low E (string 6), 5 = high E (string 1).
  // chords-db frets are relative to baseFret (when > 1) — normalize to
  // absolute fret numbers so the renderer can treat them uniformly.
  const base = pick.baseFret ?? 1
  const toAbsolute = (f: number) => (f <= 0 ? f : base + f - 1)
  const positions: FretPosition[] = pick.frets.map((f, i) => {
    const finger = pick.fingers?.[i]
    return {
      string: 6 - i,
      fret: toAbsolute(f),
      finger: finger && finger > 0 ? finger : undefined,
    }
  })

  const shape: ChordShape = {
    name: trimmed,
    positions,
    baseFret: base,
  }

  const barres = pick.barres ?? []
  if (barres.length) {
    const bf = toAbsolute(barres[0])
    const strNums = positions
      .filter((p) => p.fret === bf)
      .map((p) => p.string)
    if (strNums.length >= 2) {
      shape.barre = { fret: bf, fromString: Math.min(...strNums), toString: Math.max(...strNums) }
    }
  }

  return shape
}

const FRET_COUNT = 5
const STRING_SPACING = 20
const FRET_SPACING = 24
const PADDING = 20
const DIAGRAM_WIDTH = STRING_SPACING * 5 + PADDING * 2
const DIAGRAM_HEIGHT = FRET_SPACING * FRET_COUNT + PADDING * 2 + 20

export interface ChordDiagramProps {
  chord: string
  size?: number
  capo?: number
  showLabel?: boolean
}

export default function ChordDiagram({ chord, size = 120, capo = 0, showLabel = true }: ChordDiagramProps) {
  const shape = getChordShape(chord)
  if (!shape) return null

  const scale = size / DIAGRAM_WIDTH
  const svgW = DIAGRAM_WIDTH * scale
  const svgH = DIAGRAM_HEIGHT * scale
  const baseFret = shape.baseFret ?? 1
  const startFret = baseFret > 1 ? baseFret : 1

  return (
    <div className="inline-flex flex-col items-center gap-1">
      <svg viewBox={`0 0 ${DIAGRAM_WIDTH} ${DIAGRAM_HEIGHT}`} width={svgW} height={svgH} className="text-neutral-700 dark:text-neutral-300">
        <g transform={`scale(${scale})`}>
          {baseFret === 1 && (
            <rect x={PADDING - 2} y={PADDING} width={STRING_SPACING * 4 + 4} height={3} rx={1} fill="currentColor" />
          )}
          {capo > 0 && baseFret === 1 && (
            <rect
              x={PADDING - 4}
              y={PADDING - 6}
              width={STRING_SPACING * 5 + 8}
              height={5}
              rx={2.5}
              className="fill-neutral-500 dark:fill-neutral-400"
            />
          )}
          {baseFret > 1 && (
            <text x={4} y={PADDING + FRET_SPACING / 2} fontSize={9} fontWeight={600} className="fill-neutral-500 dark:fill-neutral-400">
              {baseFret}fr
            </text>
          )}

          {Array.from({ length: FRET_COUNT + 1 }, (_, i) => (
            <line
              key={`fret-${i}`}
              x1={PADDING}
              y1={PADDING + i * FRET_SPACING}
              x2={PADDING + STRING_SPACING * 5}
              y2={PADDING + i * FRET_SPACING}
              stroke="currentColor"
              strokeWidth={i === 0 && baseFret === 1 ? 3 : 1}
              opacity={i === 0 && baseFret === 1 ? 1 : 0.3}
            />
          ))}

          {Array.from({ length: 6 }, (_, i) => (
            <line
              key={`string-${i}`}
              x1={PADDING + i * STRING_SPACING}
              y1={PADDING + (baseFret > 1 ? 0 : 3)}
              x2={PADDING + i * STRING_SPACING}
              y2={PADDING + FRET_COUNT * FRET_SPACING}
              stroke="currentColor"
              strokeWidth={1.5 - i * 0.15}
              opacity={0.5 + i * 0.08}
            />
          ))}

          {shape.barre && (
            <rect
              x={PADDING + (5 - shape.barre.fromString) * STRING_SPACING - 7}
              y={PADDING + (shape.barre.fret - startFret + 1) * FRET_SPACING - FRET_SPACING / 2 - 7}
              width={(shape.barre.toString - shape.barre.fromString) * STRING_SPACING + 14}
              height={14}
              rx={7}
              className="fill-neutral-900 dark:fill-neutral-100"
            />
          )}

          {shape.positions.map((pos) => {
            const cx = PADDING + (5 - pos.string) * STRING_SPACING
            const cy = PADDING + (pos.fret - startFret + 1) * FRET_SPACING - FRET_SPACING / 2

            if (pos.fret === -1) {
              return (
                <g key={`pos-${pos.string}`}>
                  <line x1={cx - 5} y1={PADDING - 10} x2={cx + 5} y2={PADDING - 2} stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                  <line x1={cx + 5} y1={PADDING - 10} x2={cx - 5} y2={PADDING - 2} stroke="currentColor" strokeWidth={2} strokeLinecap="round" />
                </g>
              )
            }

            if (pos.fret === 0) {
              return (
                <circle key={`pos-${pos.string}`} cx={cx} cy={PADDING - 5} r={4} fill="none" stroke="currentColor" strokeWidth={1.5} />
              )
            }

            return (
              <g key={`pos-${pos.string}`}>
                <circle cx={cx} cy={cy} r={7} className="fill-neutral-900 dark:fill-neutral-100" />
                {pos.finger && (
                  <text x={cx} y={cy + 1} textAnchor="middle" dominantBaseline="middle" className="fill-neutral-50 dark:fill-neutral-900" fontSize={9} fontWeight={600}>
                    {pos.finger}
                  </text>
                )}
              </g>
            )
          })}
        </g>
      </svg>
      {showLabel && (
        <span className="text-xs font-bold font-mono text-neutral-600 dark:text-neutral-400">{shape.name}</span>
      )}
    </div>
  )
}

export function ChordDiagramList({ chords, capo = 0 }: { chords: string[]; capo?: number }) {
  const unique = [...new Set(chords.filter(Boolean))]
  return (
    <div className="flex flex-wrap gap-3 justify-center">
      {unique.map((chord) => (
        <ChordDiagram key={chord} chord={chord} capo={capo} />
      ))}
    </div>
  )
}