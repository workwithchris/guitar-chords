"use client"

import React from "react"
import { parseChordToken, transposeChordToken } from "@/lib/chords"

type Segment = { chord: string | null; lyric: string }
type ParsedLine =
  | { type: "section"; text: string }
  | { type: "line"; segments: Segment[] }

const SECTION_RE =
  /^(Intro|Verse|Chorus|Pre-?Chorus|Bridge|Outro|Hook|Solo|Instrumental|Interlude|Refrain|Tag|Vamp|Ending|Coda|Break|Middle 8)(?:\s*\d*)?$/i

// Some legacy entries wrap plain [Chord]/\n shorthand content in a single
// <pre>...</pre> tag (e.g. pasted from a rich text editor). That wrapper
// alone shouldn't count as "real" HTML formatting, so strip it before
// inspecting or parsing the content.
export function unwrapContent(raw: string): string {
  const trimmed = raw.trim()
  const m = trimmed.match(/^<pre[^>]*>([\s\S]*)<\/pre>$/i)
  return m ? m[1] : raw
}

function normalizeInput(raw: string): string {
  return unwrapContent(raw).replace(/\\n/g, "\n").replace(/\r\n?/g, "\n")
}

export function hasHtmlTags(raw: string): boolean {
  return /<[a-zA-Z][^>]*>/.test(unwrapContent(raw))
}

function parseLine(line: string): ParsedLine {
  const trimmed = line.trim()
  if (trimmed.startsWith("[") && trimmed.endsWith("]")) {
    const content = trimmed.slice(1, -1).trim()
    if (SECTION_RE.test(content)) {
      return { type: "section", text: content }
    }
  }

  const segments: Segment[] = []
  let i = 0
  let pendingChord: string | null = null

  while (i < line.length) {
    if (line[i] === "[") {
      const end = line.indexOf("]", i + 1)
      if (end < 0) {
        const lyric = line.slice(i)
        if (pendingChord) {
          segments.push({ chord: pendingChord, lyric })
          pendingChord = null
        } else {
          segments.push({ chord: null, lyric })
        }
        break
      }

      const content = line.slice(i + 1, end).trim()
      if (parseChordToken(content)) {
        if (pendingChord) {
          segments.push({ chord: pendingChord, lyric: "" })
        }
        pendingChord = content
      } else if (SECTION_RE.test(content)) {
        return { type: "section", text: content }
      } else {
        const lyric = `[${content}]`
        if (pendingChord) {
          segments.push({ chord: pendingChord, lyric })
          pendingChord = null
        } else {
          segments.push({ chord: null, lyric })
        }
      }
      i = end + 1
    } else {
      const next = line.indexOf("[", i)
      const run = next < 0 ? line.slice(i) : line.slice(i, next)
      if (pendingChord) {
        segments.push({ chord: pendingChord, lyric: run })
        pendingChord = null
      } else {
        const last = segments[segments.length - 1]
        if (last && last.chord === null && last.lyric !== "") {
          last.lyric += run
        } else {
          segments.push({ chord: null, lyric: run })
        }
      }
      i = next < 0 ? line.length : next
    }
  }

  if (pendingChord) {
    segments.push({ chord: pendingChord, lyric: "" })
  }

  return { type: "line", segments }
}

export function parseChordSheet(raw: string): { lines: ParsedLine[]; chords: string[] } {
  const text = normalizeInput(raw)
  const chords = new Set<string>()
  const lines = text.split("\n").map((line, idx) => {
    const parsed = parseLine(line)
    if (parsed.type === "line") {
      parsed.segments.forEach((seg) => {
        if (seg.chord) chords.add(seg.chord)
      })
    }
    return parsed
  })

  return { lines, chords: Array.from(chords) }
}

interface ChordSheetRendererProps {
  raw: string
  semitones?: number
  useFlats?: boolean
  onChordsFound?: (chords: string[]) => void
}

export default function ChordSheetRenderer({
  raw,
  semitones = 0,
  useFlats = false,
  onChordsFound,
}: ChordSheetRendererProps) {
  const { lines, chords } = React.useMemo(() => parseChordSheet(raw), [raw])

  React.useEffect(() => {
    onChordsFound?.(chords)
  }, [chords, onChordsFound])

  if (hasHtmlTags(raw)) {
    return (
      <div
        className="chords-lyrics prose prose-neutral dark:prose-invert max-w-none"
        dangerouslySetInnerHTML={{ __html: raw }}
      />
    )
  }

  return (
    <div className="chords-lyrics">
      {lines.map((line, idx) => {
        if (line.type === "section") {
          return (
            <h3 key={idx} className="lyric-section">
              {line.text}
            </h3>
          )
        }
        return (
          <div key={idx} className="lyric-line">
            {line.segments.map((seg, sIdx) => {
              const chord = seg.chord
                ? semitones === 0
                  ? seg.chord
                  : transposeChordToken(seg.chord, semitones, useFlats)
                : null
              return (
                <span key={sIdx} className="seg">
                  {chord && (
                    <span className="chord" data-chord={chord}>
                      {chord}
                    </span>
                  )}
                  <span className="lyric">{seg.lyric || "\u00A0"}</span>
                </span>
              )
            })}
          </div>
        )
      })}
    </div>
  )
}
