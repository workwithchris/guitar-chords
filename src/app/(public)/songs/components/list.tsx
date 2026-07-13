"use client"

import { useState } from 'react'
import { useRouter, useSearchParams, usePathname } from 'next/navigation'
import Link from 'next/link'
import Image from 'next/image'
import { Music, Search, X, ArrowUpDown, LayoutGrid, List, ChevronLeft, ChevronRight } from 'lucide-react'

const DIFFICULTIES = ['Beginner', 'Intermediate', 'Advanced'] as const
const CHROMATIC_KEYS = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']

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

function isNew(dateStr: string): boolean {
    return Date.now() - new Date(dateStr).getTime() < 7 * 24 * 60 * 60 * 1000
}

export default function SongsList({
    songs,
    genres,
    genreCounts,
    totalCount,
    currentPage,
    totalPages,
    currentDifficulty,
    currentGenre,
    currentKey,
    currentSort,
    currentSortDir,
    allKeys,
}: {
    songs: Song[]
    genres: string[]
    genreCounts?: Map<string, number>
    totalCount: number
    currentPage: number
    totalPages: number
    currentDifficulty?: string
    currentGenre?: string
    currentKey?: string
    currentSort: string
    currentSortDir: string
    allKeys?: string[]
}) {
    const router = useRouter()
    const pathname = usePathname()
    const searchParams = useSearchParams()
    const [viewMode, setViewMode] = useState<'grid' | 'list'>('grid')
    const [search, setSearch] = useState(searchParams.get('q') ?? '')

    const hasFilters = currentDifficulty || currentGenre || currentKey || currentSort !== 'createdAt' || currentSortDir !== 'desc'

    function buildUrl(overrides: Record<string, string | null>) {
        const next = new URLSearchParams()
        const q = overrides.q ?? search
        if (q) next.set('q', q)
        if (overrides.difficulty ?? currentDifficulty) next.set('difficulty', overrides.difficulty ?? currentDifficulty!)
        if (overrides.genre ?? currentGenre) next.set('genre', overrides.genre ?? currentGenre!)
        if (overrides.key ?? currentKey) next.set('key', overrides.key ?? currentKey!)
        if ((overrides.sort ?? currentSort) !== 'createdAt') next.set('sort', overrides.sort ?? currentSort)
        if ((overrides.dir ?? currentSortDir) !== 'desc') next.set('dir', overrides.dir ?? currentSortDir)
        if (overrides.page && overrides.page !== '1') next.set('page', overrides.page)
        const qs = next.toString()
        return qs ? `${pathname}?${qs}` : pathname
    }

    function navigate(overrides: Record<string, string | null>) {
        router.push(buildUrl(overrides), { scroll: false })
    }

    function handleSearchSubmit(e: React.FormEvent) {
        e.preventDefault()
        if (search) {
            router.push(`/search?query=${encodeURIComponent(search)}`)
        }
    }

    return (
        <div className="space-y-6">
            {/* Toolbar: search, sort, view toggle */}
            <div className="flex flex-col sm:flex-row gap-3">
                <form onSubmit={handleSearchSubmit} className="relative flex-1">
                    <Search className="absolute left-3.5 top-1/2 h-4 w-4 -translate-y-1/2 text-neutral-400" />
                    <input
                        type="text"
                        placeholder="Search songs or artists..."
                        value={search}
                        onChange={(e) => setSearch(e.target.value)}
                        className="w-full rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 pl-10 pr-4 py-2.5 text-sm text-neutral-900 dark:text-neutral-100 placeholder:text-neutral-400 focus:outline-none focus:ring-2 focus:ring-neutral-400 dark:focus:ring-neutral-500 transition-all"
                    />
                </form>
                <div className="flex items-center gap-2">
                    <div className="flex items-center gap-1 p-1 rounded-lg border border-neutral-200 dark:border-neutral-800 bg-neutral-100 dark:bg-neutral-900">
                        <button
                            onClick={() => setViewMode('grid')}
                            className={`p-1.5 rounded-md transition-colors ${viewMode === 'grid'
                                ? 'bg-white dark:bg-neutral-800 shadow-sm text-neutral-900 dark:text-neutral-100'
                                : 'text-neutral-500 hover:text-neutral-900 dark:hover:text-neutral-100'
                                }`}
                            aria-label="Grid view"
                        >
                            <LayoutGrid className="h-4 w-4" />
                        </button>
                        <button
                            onClick={() => setViewMode('list')}
                            className={`p-1.5 rounded-md transition-colors ${viewMode === 'list'
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
                            value={currentSort}
                            onChange={(e) => navigate({ sort: e.target.value, page: '1' })}
                            className="rounded-lg border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 px-3 py-2 text-sm text-neutral-900 dark:text-neutral-100 focus:outline-none focus:ring-2 focus:ring-neutral-400"
                        >
                            <option value="createdAt">Recently added</option>
                            <option value="title">Title</option>
                            <option value="year">Year</option>
                            <option value="difficulty">Difficulty</option>
                        </select>
                        <button
                            onClick={() => navigate({ dir: currentSortDir === 'asc' ? 'desc' : 'asc', page: '1' })}
                            className="px-3 py-2 rounded-lg border border-neutral-200 dark:border-neutral-800 text-xs font-medium text-neutral-600 dark:text-neutral-400 hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
                            aria-label="Toggle sort direction"
                        >
                            <ArrowUpDown className="h-3.5 w-3.5" />
                        </button>
                    </div>
                </div>
            </div>

            {/* Filter chips */}
            <div className="space-y-2">
                <div className="flex flex-wrap items-center gap-2">
                    {DIFFICULTIES.map((d) => (
                        <button
                            key={d}
                            onClick={() => navigate({ difficulty: currentDifficulty === d ? null : d, page: '1' })}
                            className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-colors ${currentDifficulty === d
                                ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                                : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
                                }`}
                        >
                            {d}
                        </button>
                    ))}
                    {genres.map((g) => {
                        const count = genreCounts?.get(g)
                        return (
                            <button
                                key={g}
                                onClick={() => navigate({ genre: currentGenre === g ? null : g, page: '1' })}
                                className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-colors ${currentGenre === g
                                    ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                                    : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
                                    }`}
                            >
                                {g}
                                {count !== undefined && (
                                    <span className="ml-1.5 opacity-60">({count})</span>
                                )}
                            </button>
                        )
                    })}
                </div>
                {(allKeys ?? CHROMATIC_KEYS).length > 0 && (
                    <div className="flex flex-wrap items-center gap-1.5">
                        <span className="text-[11px] font-medium text-neutral-400 mr-1">Key</span>
                        {(allKeys ?? CHROMATIC_KEYS).map((k) => (
                            <button
                                key={k}
                                onClick={() => navigate({ key: currentKey === k ? null : k, page: '1' })}
                                className={`px-2 py-1 rounded text-xs font-mono font-medium transition-colors ${currentKey === k
                                    ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                                    : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-500 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
                                    }`}
                            >
                                {k}
                            </button>
                        ))}
                    </div>
                )}
                <div className="flex items-center gap-2">
                    {hasFilters && (
                        <button
                            onClick={() => {
                                setSearch('')
                                router.push(pathname, { scroll: false })
                            }}
                            className="inline-flex items-center gap-1 px-3 py-1.5 rounded-lg text-xs font-medium text-neutral-500 hover:text-neutral-700 dark:hover:text-neutral-300 transition-colors"
                        >
                            <X className="h-3 w-3" />
                            Clear all filters
                        </button>
                    )}
                    <span className="text-xs text-neutral-400 ml-auto">
                        {totalCount} result{totalCount !== 1 ? 's' : ''}
                    </span>
                </div>
            </div>

            {/* Results */}
            {songs.length === 0 ? (
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
                    {songs.map((song) => (
                        <SongCardGrid key={song.id} song={song} />
                    ))}
                </div>
            ) : (
                <div className="space-y-3">
                    {songs.map((song) => (
                        <SongCardList key={song.id} song={song} />
                    ))}
                </div>
            )}

            {/* Pagination */}
            {totalPages > 1 && (
                <div className="flex items-center justify-center gap-1.5 pt-2">
                    <button
                        disabled={currentPage <= 1}
                        onClick={() => navigate({ page: String(currentPage - 1) })}
                        className="inline-flex items-center gap-1 px-3 py-2 rounded-lg border border-neutral-200 dark:border-neutral-800 text-sm font-medium text-neutral-700 dark:text-neutral-300 hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors disabled:opacity-40 disabled:pointer-events-none"
                    >
                        <ChevronLeft className="h-4 w-4" />
                        <span className="hidden sm:inline">Prev</span>
                    </button>
                    <PaginationNumbers currentPage={currentPage} totalPages={totalPages} onNavigate={(p) => navigate({ page: String(p) })} />
                    <button
                        disabled={currentPage >= totalPages}
                        onClick={() => navigate({ page: String(currentPage + 1) })}
                        className="inline-flex items-center gap-1 px-3 py-2 rounded-lg border border-neutral-200 dark:border-neutral-800 text-sm font-medium text-neutral-700 dark:text-neutral-300 hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors disabled:opacity-40 disabled:pointer-events-none"
                    >
                        <span className="hidden sm:inline">Next</span>
                        <ChevronRight className="h-4 w-4" />
                    </button>
                </div>
            )}
        </div>
    )
}

function SongCardGrid({ song }: { song: Song }) {
    const showNew = isNew(song.createdAt)

    return (
        <Link
            href={`/songs/${song.slug}`}
            className="group block rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all overflow-hidden"
        >
            <div className="relative aspect-[3/2] bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
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
                {showNew && (
                    <span className="absolute top-2 right-2 px-2 py-0.5 rounded-md bg-emerald-500/90 text-white text-[10px] font-semibold shadow-sm">
                        New
                    </span>
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
    const showNew = isNew(song.createdAt)

    return (
        <Link
            href={`/songs/${song.slug}`}
            className="group flex items-start gap-4 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
        >
            <div className="relative h-12 w-12 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 mt-0.5 overflow-hidden group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
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
                {showNew && (
                    <span className="absolute -top-1 -right-1 h-3 w-3 rounded-full bg-emerald-500 shadow-sm" />
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

function PaginationNumbers({ currentPage, totalPages, onNavigate }: { currentPage: number; totalPages: number; onNavigate: (page: number) => void }) {
    const pages: (number | 'ellipsis')[] = []
    const range = 1
    pages.push(1)
    if (currentPage - range > 2) pages.push('ellipsis')
    for (let i = Math.max(2, currentPage - range); i <= Math.min(totalPages - 1, currentPage + range); i++) {
        pages.push(i)
    }
    if (currentPage + range < totalPages - 1) pages.push('ellipsis')
    if (totalPages > 1) pages.push(totalPages)
    return pages.map((p, i) =>
        p === 'ellipsis' ? (
            <span key={`e-${i}`} className="px-1.5 text-sm text-neutral-400">...</span>
        ) : (
            <button
                key={p}
                onClick={() => onNavigate(p)}
                className={`min-w-[32px] px-2 py-2 rounded-lg text-sm font-medium transition-colors ${p === currentPage
                    ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                    : 'border border-neutral-200 dark:border-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-100 dark:hover:bg-neutral-800'
                    }`}
            >
                {p}
            </button>
        )
    )
}
