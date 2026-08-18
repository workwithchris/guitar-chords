import React from 'react'
import type { Metadata } from 'next'
import ChordDiagram from '@/components/ui/chord-diagram'
import Breadcrumbs from '@/components/ui/breadcrumbs'
import { WebSiteJsonLd } from '@/components/ui/json-ld'

export const revalidate = 86400

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export const metadata: Metadata = {
  title: 'Chord Library',
  description: 'Learn guitar chord shapes and fingerings for over 50 common chords. Includes diagrams for major, minor, seventh, and suspended chords.',
  openGraph: {
    title: 'Chord Library - Guitar Chords',
    description: 'Learn guitar chord shapes and fingerings for over 50 common chords with diagrams.',
    url: '/chords',
  },
  alternates: { canonical: `${baseUrl}/chords` },
}

const CHORD_GROUPS = [
  {
    title: 'Major Chords',
    chords: ['C', 'D', 'E', 'F', 'G', 'A', 'B'],
  },
  {
    title: 'Minor Chords',
    chords: ['Cm', 'Dm', 'Em', 'Fm', 'Gm', 'Am', 'Bm'],
  },
  {
    title: 'Seventh Chords',
    chords: ['C7', 'D7', 'E7', 'F7', 'G7', 'A7', 'B7'],
  },
  {
    title: 'Major Seventh',
    chords: ['Cmaj7', 'Dmaj7', 'Fmaj7', 'Gmaj7', 'Amaj7'],
  },
  {
    title: 'Minor Seventh',
    chords: ['Cm7', 'Dm7', 'Em7', 'Fm7', 'Gm7', 'Am7', 'Bm7'],
  },
  {
    title: 'Suspended & Add Chords',
    chords: ['Csus2', 'Csus4', 'Dsus2', 'Dsus4', 'Esus4', 'Asus2', 'Asus4', 'Cadd9', 'Dm7b5'],
  },
]

export default function ChordsPage() {
  return (
    <>
      <WebSiteJsonLd />
      <div className="space-y-10 pb-16">
        <Breadcrumbs items={[{ label: 'Chord Library' }]} />

        <div className="space-y-2 text-center max-w-2xl mx-auto">
          <h1 className="text-3xl md:text-4xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
            Chord Library
          </h1>
          <p className="text-sm text-neutral-500 dark:text-neutral-400">
            Learn essential guitar chord shapes with finger positions. Tap or hover any chord for a closer look.
          </p>
        </div>

        {CHORD_GROUPS.map((group) => (
          <section key={group.title} className="space-y-4">
            <h2 className="text-lg font-semibold tracking-tight text-neutral-900 dark:text-neutral-100">
              {group.title}
            </h2>
            <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-4">
              {group.chords.map((chord) => (
                <div
                  key={chord}
                  className="flex flex-col items-center gap-2 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
                >
                  <ChordDiagram chord={chord} size={100} />
                  <span className="text-sm font-bold font-mono text-neutral-900 dark:text-neutral-100">
                    {chord}
                  </span>
                </div>
              ))}
            </div>
          </section>
        ))}

        <section className="rounded-2xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 p-6 md:p-8 space-y-4">
          <h2 className="text-lg font-semibold tracking-tight text-neutral-900 dark:text-neutral-100">
            How to Read Chord Diagrams
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6 text-sm text-neutral-600 dark:text-neutral-400">
            <div className="space-y-3">
              <h3 className="font-medium text-neutral-900 dark:text-neutral-100">The Grid</h3>
              <ul className="list-disc list-inside space-y-1.5">
                <li>Vertical lines = strings (E A D G B e, left to right)</li>
                <li>Horizontal lines = frets</li>
                <li>Thick top line = the nut (top of guitar neck)</li>
                <li>Number on the side = starting fret number</li>
              </ul>
            </div>
            <div className="space-y-3">
              <h3 className="font-medium text-neutral-900 dark:text-neutral-100">The Dots</h3>
              <ul className="list-disc list-inside space-y-1.5">
                <li>Black dots = fret position — press here</li>
                <li>Numbers inside dots = suggested finger (1=index, 2=middle, 3=ring, 4=pinky)</li>
                <li>Circle above = open string (play without fretting)</li>
                <li>X above = don&apos;t play this string</li>
                <li>Curved line = barre (one finger presses multiple strings)</li>
              </ul>
            </div>
          </div>
          <p className="text-xs text-neutral-400 dark:text-neutral-500 pt-2 border-t border-neutral-100 dark:border-neutral-800">
            Chord diagrams are generated algorithmically and may show alternate voicings. Capo-aware diagrams adjust automatically.
          </p>
        </section>
      </div>
    </>
  )
}
