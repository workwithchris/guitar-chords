import React from 'react'

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

const SHARP_NAMES = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
const FLAT_NAMES = ['C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab', 'A', 'Bb', 'B']

const STRING_OPEN_PITCH = [4, 9, 2, 11, 6, 4]

const CHORD_INTERVALS: Record<string, number[]> = {
  maj: [0, 4, 7],
  '': [0, 4, 7],
  m: [0, 3, 7],
  min: [0, 3, 7],
  dim: [0, 3, 6],
  aug: [0, 4, 8],
  sus2: [0, 2, 7],
  sus4: [0, 5, 7],
  '7': [0, 4, 7, 10],
  maj7: [0, 4, 7, 11],
  M7: [0, 4, 7, 11],
  m7: [0, 3, 7, 10],
  min7: [0, 3, 7, 10],
  dim7: [0, 3, 6, 9],
  m7b5: [0, 3, 6, 10],
  'm7-5': [0, 3, 6, 10],
  '6': [0, 4, 7, 9],
  m6: [0, 3, 7, 9],
  '9': [0, 4, 7, 10, 2],
  maj9: [0, 4, 7, 11, 2],
  m9: [0, 3, 7, 10, 2],
  'add9': [0, 4, 7, 2],
  'add2': [0, 4, 7, 2],
  madd9: [0, 3, 7, 2],
  '11': [0, 4, 7, 10, 2, 5],
  '13': [0, 4, 7, 10, 2, 5, 9],
  '5': [0, 7],
  power: [0, 7],
}

const OPEN_SHAPES: Record<string, ChordShape> = {
  C: { name: 'C', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 1, finger: 1 }, { string: 3, fret: 0 }, { string: 4, fret: 2, finger: 2 }, { string: 5, fret: 3, finger: 3 }, { string: 6, fret: -1 }] },
  G: { name: 'G', positions: [{ string: 1, fret: 3, finger: 3 }, { string: 2, fret: 0 }, { string: 3, fret: 0 }, { string: 4, fret: 0 }, { string: 5, fret: 2, finger: 1 }, { string: 6, fret: 3, finger: 4 }] },
  D: { name: 'D', positions: [{ string: 1, fret: 2, finger: 2 }, { string: 2, fret: 3, finger: 3 }, { string: 3, fret: 2, finger: 1 }, { string: 4, fret: 0 }, { string: 5, fret: -1 }, { string: 6, fret: -1 }] },
  A: { name: 'A', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 2, finger: 2 }, { string: 3, fret: 2, finger: 3 }, { string: 4, fret: 2, finger: 1 }, { string: 5, fret: 0 }, { string: 6, fret: -1 }] },
  E: { name: 'E', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 0 }, { string: 3, fret: 1, finger: 1 }, { string: 4, fret: 2, finger: 2 }, { string: 5, fret: 2, finger: 3 }, { string: 6, fret: 0 }] },
  Am: { name: 'Am', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 1, finger: 1 }, { string: 3, fret: 2, finger: 2 }, { string: 4, fret: 2, finger: 3 }, { string: 5, fret: 0 }, { string: 6, fret: -1 }] },
  Em: { name: 'Em', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 0 }, { string: 3, fret: 0 }, { string: 4, fret: 2, finger: 2 }, { string: 5, fret: 2, finger: 3 }, { string: 6, fret: 0 }] },
  Dm: { name: 'Dm', positions: [{ string: 1, fret: 1, finger: 1 }, { string: 2, fret: 3, finger: 3 }, { string: 3, fret: 2, finger: 2 }, { string: 4, fret: 0 }, { string: 5, fret: -1 }, { string: 6, fret: -1 }] },
  D7: { name: 'D7', positions: [{ string: 1, fret: 2, finger: 2 }, { string: 2, fret: 1, finger: 1 }, { string: 3, fret: 2, finger: 3 }, { string: 4, fret: 0 }, { string: 5, fret: -1 }, { string: 6, fret: -1 }] },
  G7: { name: 'G7', positions: [{ string: 1, fret: 1, finger: 1 }, { string: 2, fret: 0 }, { string: 3, fret: 0 }, { string: 4, fret: 0 }, { string: 5, fret: 2, finger: 2 }, { string: 6, fret: 3, finger: 3 }] },
  C7: { name: 'C7', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 1, finger: 1 }, { string: 3, fret: 3, finger: 3 }, { string: 4, fret: 2, finger: 2 }, { string: 5, fret: 3, finger: 4 }, { string: 6, fret: -1 }] },
  A7: { name: 'A7', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 2, finger: 2 }, { string: 3, fret: 0 }, { string: 4, fret: 2, finger: 1 }, { string: 5, fret: 0 }, { string: 6, fret: -1 }] },
  E7: { name: 'E7', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 0 }, { string: 3, fret: 1, finger: 1 }, { string: 4, fret: 0 }, { string: 5, fret: 2, finger: 2 }, { string: 6, fret: 0 }] },
  Cmaj7: { name: 'Cmaj7', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 0 }, { string: 3, fret: 0 }, { string: 4, fret: 2, finger: 2 }, { string: 5, fret: 3, finger: 3 }, { string: 6, fret: -1 }] },
  Dm7: { name: 'Dm7', positions: [{ string: 1, fret: 1, finger: 1 }, { string: 2, fret: 1, finger: 1 }, { string: 3, fret: 2, finger: 2 }, { string: 4, fret: 0 }, { string: 5, fret: -1 }, { string: 6, fret: -1 }], barre: { fret: 1, fromString: 1, toString: 2 } },
  Em7: { name: 'Em7', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 0 }, { string: 3, fret: 0 }, { string: 4, fret: 0 }, { string: 5, fret: 2, finger: 2 }, { string: 6, fret: 0 }] },
  Am7: { name: 'Am7', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 1, finger: 1 }, { string: 3, fret: 0 }, { string: 4, fret: 2, finger: 2 }, { string: 5, fret: 0 }, { string: 6, fret: -1 }] },
  Fmaj7: { name: 'Fmaj7', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 0 }, { string: 3, fret: 2, finger: 1 }, { string: 4, fret: 3, finger: 2 }, { string: 5, fret: 3, finger: 3 }, { string: 6, fret: -1 }] },
  Cadd9: { name: 'Cadd9', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 3, finger: 3 }, { string: 3, fret: 0 }, { string: 4, fret: 2, finger: 1 }, { string: 5, fret: 3, finger: 2 }, { string: 6, fret: -1 }] },
  Dsus2: { name: 'Dsus2', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 3, finger: 3 }, { string: 3, fret: 2, finger: 1 }, { string: 4, fret: 0 }, { string: 5, fret: -1 }, { string: 6, fret: -1 }] },
  Dsus4: { name: 'Dsus4', positions: [{ string: 1, fret: 3, finger: 3 }, { string: 2, fret: 3, finger: 4 }, { string: 3, fret: 2, finger: 1 }, { string: 4, fret: 0 }, { string: 5, fret: -1 }, { string: 6, fret: -1 }] },
  Asus4: { name: 'Asus4', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 3, finger: 3 }, { string: 3, fret: 2, finger: 1 }, { string: 4, fret: 2, finger: 2 }, { string: 5, fret: 0 }, { string: 6, fret: -1 }] },
  Asus2: { name: 'Asus2', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 2, finger: 2 }, { string: 3, fret: 2, finger: 1 }, { string: 4, fret: 0 }, { string: 5, fret: 0 }, { string: 6, fret: -1 }] },
  Esus4: { name: 'Esus4', positions: [{ string: 1, fret: 0 }, { string: 2, fret: 0 }, { string: 3, fret: 2, finger: 1 }, { string: 4, fret: 2, finger: 2 }, { string: 5, fret: 2, finger: 3 }, { string: 6, fret: 0 }] },
}

function noteToPitch(name: string): number {
  const map: Record<string, number> = { C: 0, 'C#': 1, Db: 1, D: 2, 'D#': 3, Eb: 3, E: 4, F: 5, 'F#': 6, Gb: 6, G: 7, 'G#': 8, Ab: 8, A: 9, 'A#': 10, Bb: 10, B: 11 }
  return map[name] ?? -1
}

export function parseChord(raw: string): { root: string; quality: string; bass: string; intervals: number[]; rootPitch: number } | null {
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
  const qualityKey = rest.replace(/maj7$/, 'maj7').replace(/maj9$/, 'maj9').replace(/M7$/, 'maj7').replace(/maj/, 'maj').trim() || ''
  let intervals = CHORD_INTERVALS[qualityKey]
  if (!intervals) {
    if (qualityKey.endsWith('7')) intervals = CHORD_INTERVALS['7']
    else if (qualityKey.endsWith('9')) intervals = CHORD_INTERVALS['9']
    else if (qualityKey.endsWith('sus2')) intervals = CHORD_INTERVALS['sus2']
    else if (qualityKey.endsWith('sus4')) intervals = CHORD_INTERVALS['sus4']
    else if (qualityKey.endsWith('add9') || qualityKey.endsWith('add2')) intervals = CHORD_INTERVALS['add9']
    else if (qualityKey.endsWith('dim')) intervals = CHORD_INTERVALS['dim']
    else if (qualityKey.endsWith('aug')) intervals = CHORD_INTERVALS['aug']
    else intervals = CHORD_INTERVALS['']
  }
  return { root, quality: qualityKey, bass, intervals, rootPitch: noteToPitch(root) }
}

function mod12(n: number): number {
  return ((n % 12) + 12) % 12
}

function generateVoicing(rootPitch: number, intervals: number[], bassPitch?: number): ChordShape | null {
  const needed = new Set(intervals.map((i) => mod12(rootPitch + i)))
  const targetBass = bassPitch !== undefined && bassPitch >= 0 ? mod12(bassPitch) : mod12(rootPitch)

  const MAX_FRET = 12
  const MAX_FINGERS = 4
  const MAX_SPAN = 4

  const stringsByIndex = [1, 2, 3, 4, 5, 6]

  type Candidate = { string: number; fret: number; pitch: number }
  const candidatesPerString: Candidate[][] = stringsByIndex.map((s, idx) => {
    const open = STRING_OPEN_PITCH[idx]
    const list: Candidate[] = [{ string: s, fret: -1, pitch: -1 }]
    if (needed.has(mod12(open))) list.push({ string: s, fret: 0, pitch: mod12(open) })
    for (let f = 1; f <= MAX_FRET; f++) {
      const p = mod12(open + f)
      if (needed.has(p)) list.push({ string: s, fret: f, pitch: p })
    }
    return list
  })

  const best: { current: { positions: FretPosition[]; score: number } | null } = { current: null }

  const dfs = (idx: number, positions: FretPosition[], covered: Set<number>, mutedCount: number, frettedCount: number) => {
    if (mutedCount > 2) return
    if (idx === candidatesPerString.length) {
      if (covered.size < needed.size) return
      const fretted = positions.filter((p) => p.fret > 0)
      if (fretted.length === 0) return
      if (fretted.length > MAX_FINGERS) return
      const frets = fretted.map((p) => p.fret)
      const span = Math.max(...frets) - Math.min(...frets)
      if (Math.min(...frets) > 0 && span > MAX_SPAN) return
      let score = 0
      score -= mutedCount * 8
      score -= frettedCount * 2
      score -= Math.min(...frets) > 0 ? Math.min(...frets) * 1 : 0
      const lowest = [...positions].sort((a, b) => a.string - b.string).find((p) => p.fret !== -1)
      if (lowest && mod12(STRING_OPEN_PITCH[6 - lowest.string] + Math.max(lowest.fret, 0)) === targetBass) score += 5
      if (!best.current || score > best.current.score) {
        best.current = { positions: positions.slice(), score }
      }
      return
    }
    for (const cand of candidatesPerString[idx]) {
      const nextCovered = new Set(covered)
      if (cand.pitch >= 0) nextCovered.add(cand.pitch)
      const nextMuted = cand.fret === -1 ? mutedCount + 1 : mutedCount
      const nextFretted = cand.fret > 0 ? frettedCount + 1 : frettedCount
      if (nextFretted > MAX_FINGERS) continue
      positions.push({ string: cand.string, fret: cand.fret })
      dfs(idx + 1, positions, nextCovered, nextMuted, nextFretted)
      positions.pop()
    }
  }

  dfs(0, [], new Set(), 0, 0)
  if (!best.current || best.current.positions.length === 0) return null
  const finalPositions = best.current.positions

  const fretted = finalPositions.filter((p) => p.fret > 0)
  const minFret = fretted.length ? Math.min(...fretted.map((p) => p.fret)) : 0
  const maxFret = fretted.length ? Math.max(...fretted.map((p) => p.fret)) : 0

  let barre: ChordShape['barre'] | undefined
  if (minFret > 0 && maxFret > minFret) {
    const barreStrings = finalPositions.filter((p) => p.fret === minFret)
    if (barreStrings.length >= 2) {
      const strNums = barreStrings.map((s) => s.string)
      barre = { fret: minFret, fromString: Math.min(...strNums), toString: Math.max(...strNums) }
    }
  }

  return {
    name: '',
    positions: finalPositions,
    barre,
    baseFret: minFret > 1 ? minFret : 1,
  }
}

export function getChordShape(name: string, capo = 0): ChordShape | null {
  const trimmed = name.trim()
  const parsed = parseChord(trimmed)
  if (!parsed) return null

  if (parsed.bass === '') {
    const cached = OPEN_SHAPES[trimmed]
    if (cached) return cached
  }

  const rootPitch = parsed.rootPitch
  const bassPitch = parsed.bass ? noteToPitch(parsed.bass) : -1
  const voicing = generateVoicing(rootPitch, parsed.intervals, bassPitch)
  if (!voicing) return null
  voicing.name = trimmed
  return voicing
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
  const shape = getChordShape(chord, capo)
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