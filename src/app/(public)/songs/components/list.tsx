"use client"

import { useEffect, useMemo, useState } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'
import Link from 'next/link'
import Image from 'next/image'
import {
  Music,
  Search,
  X,
  ArrowUpDown,
  LayoutGrid,
  List,
} from 'lucide-react'

const DIFFICULTIES = ['Beginner', 'Intermediate', 'Advanced'] as const
const PAGE_SIZE = 24

type SortKey = 'createdAt' | 'title' | 'year' | 'difficulty'
type SortDir = 'asc' | 'desc'

interface Song {
  id: number
  title: string
  slug: string
  image?: string
  difficulty: string
  genre?: string
  year?: number
  key?: string
  capo?: number
  tuning?: string
  createdAt: string
  artist: { name: string; isActive: boolean; id: number }
}

export default function SongsList({
  songs,
  genres,
}: {
  songs: Song[]
  genres: string[]
}) {
  const router = useRouter()
  const searchParams = useSearchParams()

  const [viewMode, setViewMode] = useState<'grid' | 'list'>('grid')
  const [search, setSearch] = useState(searchParams.get('q') ?? '')
  const [genreFilter, setGenreFilter] = useState<string | null>(
    searchParams.get('genre')
  )
  const [difficultyFilter, setDifficultyFilter] = useState<string | null>(
    searchParams.get('difficulty')
  )
  const [sortKey, setSortKey] = useState<SortKey>('createdAt')
  const [sortDir, setSortDir] = useState<SortDir>('desc')
  const [visibleCount, setVisibleCount] = useState(PAGE_SIZE)

  useEffect(() => {
    const next = new URLSearchParams()
    if (search) next.set('q', search)
    if (genreFilter) next.set('genre', genreFilter)
    if (difficultyFilter) next.set('difficulty', difficultyFilter)
    const qs = next.toString()
    router.replace(qs ? `/songs?${qs}` : '/songs', { scroll: false })
  }, [search, genreFilter, difficultyFilter, router])

  useEffect(() => {
    setVisibleCount(PAGE_SIZE)
  }, [search, genreFilter, difficultyFilter, sortKey, sortDir])

  const filtered = useMemo(() => {
    const q = search.toLowerCase()
    const list = songs.filter((song) => {
      const matchesSearch =
        !q ||
        song.title?.toLowerCase().includes(q) ||
        song.artist?.name?.toLowerCase().includes(q)
      const matchesGenre = !genreFilter || song.genre === genreFilter
      const matchesDifficulty =
        !difficultyFilter || song.difficulty === difficultyFilter
      return matchesSearch && matchesGenre && matchesDifficulty
    })

    const sorted = [...list].sort((a, b) => {
      let cmp = 0
      switch (sortKey) {
        case 'title':
          cmp = (a.title ?? '').localeCompare(b.title ?? '')
          break
        case 'year':
          cmp = (a.year ?? 0) - (b.year ?? 0)
          break
        case 'difficulty':
          cmp =
            DIFFICULTIES.indexOf(a.difficulty as typeof DIFFICULTIES[number]) -
            DIFFICULTIES.indexOf(b.difficulty as typeof DIFFICULTIES[number])
          break
        case 'createdAt':
        default:
          cmp =
            new Date(a.createdAt ?? 0).getTime() -
            new Date(b.createdAt ?? 0).getTime()
          break
      }
      return sortDir === 'asc' ? cmp : -cmp
    })
    return sorted
  }, [songs, search, genreFilter, difficultyFilter, sortKey, sortDir])

  const hasFilters =
    search ||
    genreFilter ||
    difficultyFilter ||
    sortKey !== 'createdAt' ||
    sortDir !== 'desc'
  const visible = filtered.slice(0, visibleCount)
  const hasMore = visibleCount < filtered.length

  return (
    <div className="space-y-6">
      {/* Toolbar: search, sort, view toggle */}
      <div className="flex flex-col sm:flex-row gap-3">
        <div className="relative flex-1">
          <Search className="absolute left-3.5 top-1/2 h-4 w-4 -translate-y-1/2 text-neutral-400" />
          <input
            type="text"
            placeholder="Search songs or artists..."
            value={search}
            onChange={(e) => setSearch(e.target.value)}
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
              <option value="createdAt">Recently added</option>
              <option value="title">Title</option>
              <option value="year">Year</option>
              <option value="difficulty">Difficulty</option>
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

      {/* Filter chips */}
      <div className="flex flex-wrap items-center gap-2">
        {DIFFICULTIES.map((d) => (
          <button
            key={d}
            onClick={() =>
              setDifficultyFilter(difficultyFilter === d ? null : d)
            }
            className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-colors ${
              difficultyFilter === d
                ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
            }`}
          >
            {d}
          </button>
        ))}
        {genres.map((g) => (
          <button
            key={g}
            onClick={() => setGenreFilter(genreFilter === g ? null : g)}
            className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-colors ${
              genreFilter === g
                ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
            }`}
          >
            {g}
          </button>
        ))}
        {hasFilters && (
          <button
            onClick={() => {
              setSearch('')
              setGenreFilter(null)
              setDifficultyFilter(null)
              setSortKey('createdAt')
              setSortDir('desc')
            }}
            className="inline-flex items-center gap-1 px-3 py-1.5 rounded-lg text-xs font-medium text-neutral-500 hover:text-neutral-700 dark:hover:text-neutral-300 transition-colors"
          >
            <X className="h-3 w-3" />
            Clear
          </button>
        )}
        <span className="text-xs text-neutral-400 ml-auto">
          {filtered.length} result{filtered.length !== 1 ? 's' : ''}
        </span>
      </div>

      {/* Results */}
      {filtered.length === 0 ? (
        <div className="flex flex-col items-center py-20 text-center">
          <div className="h-14 w-14 rounded-xl bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center mb-4">
            <Music className="h-6 w-6 text-neutral-400 dark:text-neutral-500" />
          </div>
          <p className="text-base font-medium text-neutral-600 dark:text-neutral-400">
            No songs match your filters
          </p>
          <p className="text-sm text-neutral-400 mt-1">
            Try adjusting your search or filter criteria
          </p>
        </div>
      ) : viewMode === 'grid' ? (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
          {visible.map((song) => (
            <SongCardGrid key={song.id} song={song} />
          ))}
        </div>
      ) : (
        <div className="space-y-3">
          {visible.map((song) => (
            <SongCardList key={song.id} song={song} />
          ))}
        </div>
      )}

      {/* Load more */}
      {hasMore && (
        <div className="flex justify-center pt-2">
          <button
            onClick={() => setVisibleCount((c) => c + PAGE_SIZE)}
            className="px-6 py-2.5 rounded-lg border border-neutral-200 dark:border-neutral-800 text-sm font-medium text-neutral-700 dark:text-neutral-300 hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
          >
            Show {Math.min(PAGE_SIZE, filtered.length - visibleCount)} more
          </button>
        </div>
      )}
    </div>
  )
}

function SongCardGrid({ song }: { song: Song }) {
  return (
    <Link
      href={`/songs/${song.slug}`}
      className="group block rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all overflow-hidden"
    >
      <div className="aspect-[3/2] bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
        {song.image ? (
          <Image
            src={song.image}
            width={400}
            height={267}
            alt=""
            className="h-full w-full object-cover"
          />
        ) : (
          <Music className="h-10 w-10 text-neutral-300 dark:text-neutral-600" />
        )}
      </div>
      <div className="p-4 space-y-2">
        <h2 className="font-semibold text-neutral-900 dark:text-neutral-100 truncate group-hover:text-neutral-700 dark:group-hover:text-neutral-300 transition-colors">
          {song.title}
        </h2>
        <p className="text-xs text-neutral-500 dark:text-neutral-400 truncate">
          {song.artist?.name ?? 'Unknown Artist'}
        </p>
        <div className="flex items-center gap-1.5 flex-wrap pt-1">
          {song.key && (
            <span className="text-xs px-2 py-0.5 rounded-md bg-neutral-100 dark:bg-neutral-800 text-neutral-500 dark:text-neutral-400 font-mono">
              {song.key}
            </span>
          )}
          {song.difficulty && (
            <span className="text-xs px-2 py-0.5 rounded-md bg-neutral-100 dark:bg-neutral-800 text-neutral-500 dark:text-neutral-400">
              {song.difficulty}
            </span>
          )}
          {song.genre && (
            <span className="text-xs px-2 py-0.5 rounded-md bg-neutral-100 dark:bg-neutral-800 text-neutral-500 dark:text-neutral-400">
              {song.genre}
            </span>
          )}
          {song.year && (
            <span className="text-xs text-neutral-400 dark:text-neutral-500">
              {song.year}
            </span>
          )}
        </div>
      </div>
    </Link>
  )
}

function SongCardList({ song }: { song: Song }) {
  return (
    <Link
      href={`/songs/${song.slug}`}
      className="group flex items-start gap-4 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
    >
      <div className="h-12 w-12 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 mt-0.5 overflow-hidden group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
        {song.image ? (
          <Image
            src={song.image}
            width={48}
            height={48}
            alt=""
            className="h-full w-full object-cover"
          />
        ) : (
          <Music className="h-5 w-5 text-neutral-400 dark:text-neutral-500" />
        )}
      </div>
      <div className="min-w-0 flex-1 space-y-1">
        <h2 className="font-semibold text-neutral-900 dark:text-neutral-100 truncate group-hover:text-neutral-700 dark:group-hover:text-neutral-300 transition-colors">
          {song.title}
        </h2>
        <p className="text-xs text-neutral-500 dark:text-neutral-400 truncate">
          {song.artist?.name ?? 'Unknown Artist'}
        </p>
        <div className="flex items-center gap-1.5 flex-wrap pt-0.5">
          {song.key && (
            <span className="text-xs px-2 py-0.5 rounded-md bg-neutral-100 dark:bg-neutral-800 text-neutral-500 dark:text-neutral-400 font-mono">
              {song.key}
            </span>
          )}
          {song.difficulty && (
            <span className="text-xs px-2 py-0.5 rounded-md bg-neutral-100 dark:bg-neutral-800 text-neutral-500 dark:text-neutral-400">
              {song.difficulty}
            </span>
          )}
          {song.genre && (
            <span className="text-xs px-2 py-0.5 rounded-md bg-neutral-100 dark:bg-neutral-800 text-neutral-500 dark:text-neutral-400">
              {song.genre}
            </span>
          )}
          {song.year && (
            <span className="text-xs text-neutral-400 dark:text-neutral-500">
              {song.year}
            </span>
          )}
        </div>
      </div>
    </Link>
  )
}
