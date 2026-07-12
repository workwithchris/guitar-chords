"use client"

import Image from 'next/image'
import Link from 'next/link'
import { useSearchParams, useRouter } from 'next/navigation'
import { useEffect, useMemo, useState } from 'react'
import { Music, Search, MicVocal, ArrowUpDown, LayoutGrid, List, ChevronDown } from 'lucide-react'

const LETTERS = [...'ABCDEFGHIJKLMNOPQRSTUVWXYZ'].map((l) => l)
const PAGE_SIZE = 24

type SortKey = 'name' | 'songCount'
type SortDir = 'asc' | 'desc'

interface Artist {
  id: number
  name: string
  slug: string
  image?: string
  bio?: string
  songCount: number
}

export default function ArtistsList({ artists }: { artists: Artist[] }) {
  const router = useRouter()
  const searchParams = useSearchParams()
  const letter = searchParams.get('letter')

  const [viewMode, setViewMode] = useState<'grid' | 'list'>('grid')
  const [q, setQ] = useState('')
  const [sortKey, setSortKey] = useState<SortKey>('songCount')
  const [sortDir, setSortDir] = useState<SortDir>('desc')
  const [visibleCount, setVisibleCount] = useState(PAGE_SIZE)

  useEffect(() => { setVisibleCount(PAGE_SIZE) }, [q, letter, sortKey, sortDir])

  const filtered = useMemo(() => {
    const query = q.toLowerCase()
    const list = (artists ?? []).filter((a) => {
      const matchesLetter = !letter || a.name?.toUpperCase().startsWith(letter)
      const matchesSearch = !query || a.name?.toLowerCase().includes(query)
      return matchesLetter && matchesSearch
    })
    return [...list].sort((a, b) => {
      let cmp = 0
      if (sortKey === 'name') cmp = (a.name ?? '').localeCompare(b.name ?? '')
      else cmp = (a.songCount ?? 0) - (b.songCount ?? 0)
      return sortDir === 'asc' ? cmp : -cmp
    })
  }, [artists, letter, q, sortKey, sortDir])

  const visible = filtered.slice(0, visibleCount)
  const hasMore = visibleCount < filtered.length

  const setLetter = (l: string | null) => {
    const next = new URLSearchParams(searchParams.toString())
    if (l) next.set('letter', l)
    else next.delete('letter')
    router.replace(`/artists${next.toString() ? `?${next.toString()}` : ''}`, { scroll: false })
  }

  return (
    <div className="space-y-6">
      {/* Toolbar: search, sort, view toggle */}
      <div className="flex flex-col sm:flex-row gap-3">
        <div className="relative flex-1">
          <Search className="absolute left-3.5 top-1/2 h-4 w-4 -translate-y-1/2 text-neutral-400" />
          <input
            type="text"
            placeholder="Search artists..."
            value={q}
            onChange={(e) => setQ(e.target.value)}
            className="w-full rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 pl-10 pr-4 py-2.5 text-sm text-neutral-900 dark:text-neutral-100 placeholder:text-neutral-400 focus:outline-none focus:ring-2 focus:ring-neutral-400 dark:focus:ring-neutral-500 transition-all"
          />
        </div>
        <div className="flex items-center gap-2">
          <div className="flex items-center gap-1 p-1 rounded-lg border border-neutral-200 dark:border-neutral-800 bg-neutral-100 dark:bg-neutral-900">
            <button
              onClick={() => setViewMode('grid')}
              className={`p-1.5 rounded-md transition-colors ${
                viewMode === 'grid'
                  ? 'bg-white dark:bg-neutral-800 shadow-sm text-neutral-900 dark:text-neutral-100'
                  : 'text-neutral-500 hover:text-neutral-900 dark:hover:text-neutral-100'
              }`}
              aria-label="Grid view"
            >
              <LayoutGrid className="h-4 w-4" />
            </button>
            <button
              onClick={() => setViewMode('list')}
              className={`p-1.5 rounded-md transition-colors ${
                viewMode === 'list'
                  ? 'bg-white dark:bg-neutral-800 shadow-sm text-neutral-900 dark:text-neutral-100'
                  : 'text-neutral-500 hover:text-neutral-900 dark:hover:text-neutral-100'
              }`}
              aria-label="List view"
            >
              <List className="h-4 w-4" />
            </button>
          </div>
          <div className="flex items-center gap-1">
            <select
              value={sortKey}
              onChange={(e) => setSortKey(e.target.value as SortKey)}
              className="rounded-lg border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 px-3 py-2 text-sm text-neutral-900 dark:text-neutral-100 focus:outline-none focus:ring-2 focus:ring-neutral-400"
            >
              <option value="songCount">Most songs</option>
              <option value="name">Name</option>
            </select>
            <button
              onClick={() => setSortDir((d) => (d === 'asc' ? 'desc' : 'asc'))}
              className="px-3 py-2 rounded-lg border border-neutral-200 dark:border-neutral-800 text-xs font-medium text-neutral-600 dark:text-neutral-400 hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
              aria-label="Toggle sort direction"
            >
              <ArrowUpDown className="h-3.5 w-3.5" />
            </button>
          </div>
        </div>
      </div>

      {/* A-Z letter filter */}
      <div className="flex flex-wrap gap-1">
        <button
          onClick={() => setLetter(null)}
          className={`px-2.5 py-1 text-xs rounded-md font-mono transition-colors ${
            !letter
              ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
              : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
          }`}
        >
          All
        </button>
        {LETTERS.map((l) => (
          <button
            key={l}
            onClick={() => setLetter(l)}
            className={`px-2.5 py-1 text-xs rounded-md font-mono transition-colors ${
              letter === l
                ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
            }`}
          >
            {l}
          </button>
        ))}
      </div>

      {/* Results count */}
      <p className="text-xs text-neutral-400">
        {filtered.length} result{filtered.length !== 1 ? 's' : ''}
      </p>

      {/* Results */}
      {filtered.length === 0 ? (
        <div className="flex flex-col items-center py-20 text-center">
          <div className="h-14 w-14 rounded-xl bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center mb-4">
            <MicVocal className="h-6 w-6 text-neutral-400 dark:text-neutral-500" />
          </div>
          <p className="text-base font-medium text-neutral-600 dark:text-neutral-400">
            No artists found
          </p>
          <p className="text-sm text-neutral-400 mt-1">
            Try adjusting your search or filter criteria
          </p>
        </div>
      ) : viewMode === 'grid' ? (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
          {visible.map((artist) => (
            <ArtistCardGrid key={artist.id} artist={artist} />
          ))}
        </div>
      ) : (
        <div className="space-y-3">
          {visible.map((artist) => (
            <ArtistCardList key={artist.id} artist={artist} />
          ))}
        </div>
      )}

      {hasMore && (
        <div className="flex justify-center pt-2">
          <button
            onClick={() => setVisibleCount((c) => c + PAGE_SIZE)}
            className="inline-flex items-center gap-2 px-6 py-2.5 rounded-xl border border-neutral-200 dark:border-neutral-800 text-sm font-medium text-neutral-700 dark:text-neutral-300 hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
          >
            <ChevronDown className="h-4 w-4" />
            Show {Math.min(PAGE_SIZE, filtered.length - visibleCount)} more
          </button>
        </div>
      )}
    </div>
  )
}

function ArtistCardGrid({ artist }: { artist: Artist }) {
  return (
    <Link
      href={`/artists/${artist.slug}`}
      className="group block p-5 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
    >
      <div className="flex flex-col items-center text-center gap-3">
        {artist.image ? (
          <div className="overflow-hidden rounded-full">
            <Image
              src={artist.image}
              width={96}
              height={96}
              alt={artist.name}
              className="rounded-full object-cover group-hover:scale-105 transition-transform"
            />
          </div>
        ) : (
          <div className="h-24 w-24 rounded-full bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
            <MicVocal className="h-8 w-8 text-neutral-300 dark:text-neutral-600" />
          </div>
        )}
        <div className="space-y-1">
          <h2 className="font-semibold text-neutral-900 dark:text-neutral-100">
            {artist.name}
          </h2>
          <p className="text-xs text-neutral-500 dark:text-neutral-400">
            {artist.songCount} {artist.songCount === 1 ? 'song' : 'songs'}
          </p>
        </div>
        {artist.bio && (
          <p className="text-xs text-neutral-400 dark:text-neutral-500 line-clamp-2 leading-relaxed">
            {artist.bio}
          </p>
        )}
      </div>
    </Link>
  )
}

function ArtistCardList({ artist }: { artist: Artist }) {
  return (
    <Link
      href={`/artists/${artist.slug}`}
      className="group flex items-start gap-4 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
    >
      {artist.image ? (
        <div className="overflow-hidden rounded-full shrink-0 mt-0.5">
          <Image
            src={artist.image}
            width={48}
            height={48}
            alt={artist.name}
            className="rounded-full object-cover group-hover:scale-105 transition-transform"
          />
        </div>
      ) : (
        <div className="h-12 w-12 rounded-full bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 mt-0.5 group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
          <MicVocal className="h-5 w-5 text-neutral-400 dark:text-neutral-500" />
        </div>
      )}
      <div className="min-w-0 flex-1 space-y-1">
        <div className="flex items-center justify-between gap-4">
          <h2 className="font-semibold text-neutral-900 dark:text-neutral-100 truncate group-hover:text-neutral-700 dark:group-hover:text-neutral-300 transition-colors">
            {artist.name}
          </h2>
          <span className="text-xs text-neutral-400 dark:text-neutral-500 shrink-0">
            {artist.songCount} {artist.songCount === 1 ? 'song' : 'songs'}
          </span>
        </div>
        {artist.bio && (
          <p className="text-xs text-neutral-400 dark:text-neutral-500 line-clamp-1">
            {artist.bio}
          </p>
        )}
      </div>
    </Link>
  )
}
