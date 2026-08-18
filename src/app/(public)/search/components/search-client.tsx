"use client"

import Image from 'next/image'
import Link from 'next/link'
import React, { useDeferredValue, useMemo, useState } from 'react'
import { Music, MicVocal, Search } from 'lucide-react'

interface Song { title: string; slug: string; image?: string; artist?: { name: string } | null }
interface Artist { name: string; slug: string; image?: string }
type SearchResult =
  | { type: 'song'; details: Song }
  | { type: 'artist'; details: Artist }

type Tab = 'all' | 'songs' | 'artists'

function Highlight({ text, query }: { text: string; query: string }) {
  if (!query.trim()) return <>{text}</>
  const parts = text.split(new RegExp(`(${query.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')})`, 'ig'))
  return (
    <>
      {parts.map((part, i) =>
        part.toLowerCase() === query.toLowerCase() ? (
          <mark key={i} className="bg-muted text-foreground rounded px-0.5">
            {part}
          </mark>
        ) : (
          <React.Fragment key={i}>{part}</React.Fragment>
        )
      )}
    </>
  )
}

export default function SearchClient({
  query,
  results,
  suggestions,
}: {
  query: string
  results: SearchResult[]
  suggestions: { slug: string; title: string; artistName?: string; image?: string }[]
}) {
  const [tab, setTab] = useState<Tab>('all')
  const deferredQuery = useDeferredValue(query)

  const songs = results.filter((r) => r.type === 'song') as { type: 'song'; details: Song }[]
  const artists = results.filter((r) => r.type === 'artist') as { type: 'artist'; details: Artist }[]

  const visible = useMemo(() => {
    if (tab === 'songs') return songs
    if (tab === 'artists') return artists
    return results
  }, [tab, songs, artists, results])

  if (!query) {
    return (
      <div className="space-y-8">
        <div className="flex flex-col items-center justify-center py-12 text-center space-y-3">
          <Search className="h-12 w-12 text-muted-foreground" />
          <h1 className="text-xl font-semibold text-foreground">Search</h1>
          <p className="text-sm text-muted-foreground max-w-sm">
            Use the search bar above to find songs and artists.
          </p>
        </div>
        {suggestions.length > 0 && (
          <div>
            <h2 className="text-sm font-semibold text-foreground mb-3">Popular songs</h2>
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
              {suggestions.map((s) => (
                <Link
                  key={s.slug}
                  href={`/songs/${s.slug}`}
                  className="group flex items-center gap-3 p-4 rounded-xl border border-border bg-card hover:border-border dark:hover:border-border hover:shadow-sm transition-all"
                >
                  {s.image ? (
                  <Image src={s.image} width={36} height={36} alt="" className="rounded-lg object-cover shrink-0" />
                ) : (
                  <div className="h-9 w-9 rounded-lg bg-secondary flex items-center justify-center shrink-0">
                    <Music className="h-4 w-4 text-muted-foreground" />
                  </div>
                )}
                  <div className="min-w-0">
                    <p className="text-sm font-medium text-foreground truncate">{s.title}</p>
                    <p className="text-xs text-muted-foreground truncate">{s.artistName}</p>
                  </div>
                </Link>
              ))}
            </div>
          </div>
        )}
      </div>
    )
  }

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-foreground">
          Results for &ldquo;{query}&rdquo;
        </h1>
        <p className="mt-1 text-sm text-muted-foreground">
          {results.length} {results.length === 1 ? 'result' : 'results'} found
        </p>
      </div>

      <div className="flex items-center gap-1 p-1 rounded-lg border border-border bg-secondary w-fit">
        {([
          { key: 'all', label: `All (${results.length})` },
          { key: 'songs', label: `Songs (${songs.length})` },
          { key: 'artists', label: `Artists (${artists.length})` },
        ] as const).map((t) => (
          <button
            key={t.key}
            onClick={() => setTab(t.key)}
            className={`px-3 py-1.5 text-xs font-medium rounded-md transition-colors ${
              tab === t.key
                ? 'bg-card dark:bg-muted text-foreground shadow-sm'
                : 'text-muted-foreground hover:text-foreground'
            }`}
          >
            {t.label}
          </button>
        ))}
      </div>

      {!visible || visible.length === 0 ? (
        <div className="flex flex-col items-center gap-3 py-16 text-center">
          <Search className="h-10 w-10 text-muted-foreground" />
          <p className="text-sm text-muted-foreground">No results found for &ldquo;{query}&rdquo;</p>
        </div>
      ) : (
        <div className="space-y-3">
          {visible.map((item, index) => {
            if (item.type === 'artist') {
              const a = item.details
              return (
                <Link
                  key={`artist-${index}`}
                  href={`/artists/${a.slug}`}
                  className="group flex items-center gap-4 p-4 rounded-xl border border-border bg-card hover:border-border dark:hover:border-border hover:shadow-sm transition-all"
                >
                  <div className="h-10 w-10 rounded-lg bg-secondary flex items-center justify-center shrink-0 group-hover:bg-muted dark:group-hover:bg-muted transition-colors">
                    <MicVocal className="h-4 w-4 text-muted-foreground" />
                  </div>
                  {a.image && (
                    <Image src={a.image} width={40} height={40} alt={a.name ?? ''} className="rounded-full object-cover shrink-0" />
                  )}
                  <div className="min-w-0">
                    <h2 className="font-semibold text-foreground truncate">
                      <Highlight text={a.name} query={deferredQuery} />
                    </h2>
                    <span className="inline-flex items-center gap-1 mt-0.5 text-xs text-muted-foreground">
                      <MicVocal className="h-3 w-3" /> Artist
                    </span>
                  </div>
                </Link>
              )
            }
            const s = item.details
            return (
              <Link
                key={`song-${index}`}
                href={`/songs/${s.slug}`}
                className="group flex items-center gap-4 p-4 rounded-xl border border-border bg-card hover:border-border dark:hover:border-border hover:shadow-sm transition-all"
              >
                {s.image ? (
                  <Image src={s.image} width={40} height={40} alt="" className="rounded-lg object-cover shrink-0" />
                ) : (
                  <div className="h-10 w-10 rounded-lg bg-secondary flex items-center justify-center shrink-0 group-hover:bg-muted dark:group-hover:bg-muted transition-colors">
                    <Music className="h-4 w-4 text-muted-foreground" />
                  </div>
                )}
                <div className="min-w-0 flex-1">
                  <h2 className="font-semibold text-foreground truncate">
                    <Highlight text={s.title} query={deferredQuery} />
                  </h2>
                  <div className="flex items-center gap-3 mt-0.5">
                    <span className="text-xs text-muted-foreground truncate">
                      {s.artist?.name ? <Highlight text={s.artist.name} query={deferredQuery} /> : 'Unknown artist'}
                    </span>
                    <span className="inline-flex items-center gap-1 text-xs text-muted-foreground">
                      <Music className="h-3 w-3" /> Song
                    </span>
                  </div>
                </div>
              </Link>
            )
          })}
        </div>
      )}
    </div>
  )
}