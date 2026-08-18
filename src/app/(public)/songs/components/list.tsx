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
                    <Search className="absolute left-3.5 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
                    <input
                        type="text"
                        placeholder="Search songs or artists..."
                        value={search}
                        onChange={(e) => setSearch(e.target.value)}
                        className="w-full rounded-xl border border-border bg-card pl-10 pr-4 py-2.5 text-sm text-foreground placeholder:text-muted-foreground focus:outline-none focus:ring-2 focus:ring-ring dark:focus:ring-ring transition-all"
                    />
                </form>
                <div className="flex items-center gap-2">
                    <div className="flex items-center gap-1 p-1 rounded-lg border border-border bg-secondary">
                        <button
                            onClick={() => setViewMode('grid')}
                            className={`p-1.5 rounded-md transition-colors ${viewMode === 'grid'
                                ? 'bg-card shadow-sm text-foreground'
                                : 'text-muted-foreground hover:text-foreground'
                                }`}
                            aria-label="Grid view"
                        >
                            <LayoutGrid className="h-4 w-4" />
                        </button>
                        <button
                            onClick={() => setViewMode('list')}
                            className={`p-1.5 rounded-md transition-colors ${viewMode === 'list'
                                ? 'bg-card shadow-sm text-foreground'
                                : 'text-muted-foreground hover:text-foreground'
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
                            className="rounded-lg border border-border bg-card px-3 py-2 text-sm text-foreground focus:outline-none focus:ring-2 focus:ring-ring"
                        >
                            <option value="createdAt">Recently added</option>
                            <option value="title">Title</option>
                            <option value="year">Year</option>
                            <option value="difficulty">Difficulty</option>
                        </select>
                        <button
                            onClick={() => navigate({ dir: currentSortDir === 'asc' ? 'desc' : 'asc', page: '1' })}
                            className="px-3 py-2 rounded-lg border border-border text-xs font-medium text-muted-foreground hover:bg-secondary transition-colors"
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
                                ? 'bg-foreground text-background'
                                : 'bg-secondary text-muted-foreground hover:bg-muted dark:hover:bg-muted'
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
                                    ? 'bg-foreground text-background'
                                    : 'bg-secondary text-muted-foreground hover:bg-muted dark:hover:bg-muted'
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
                        <span className="text-[11px] font-medium text-muted-foreground mr-1">Key</span>
                        {(allKeys ?? CHROMATIC_KEYS).map((k) => (
                            <button
                                key={k}
                                onClick={() => navigate({ key: currentKey === k ? null : k, page: '1' })}
                                className={`px-2 py-1 rounded text-xs font-mono font-medium transition-colors ${currentKey === k
                                    ? 'bg-foreground text-background'
                                    : 'bg-secondary text-muted-foreground hover:bg-muted dark:hover:bg-muted'
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
                            className="inline-flex items-center gap-1 px-3 py-1.5 rounded-lg text-xs font-medium text-muted-foreground hover:text-muted-foreground dark:hover:text-muted-foreground transition-colors"
                        >
                            <X className="h-3 w-3" />
                            Clear all filters
                        </button>
                    )}
                    <span className="text-xs text-muted-foreground ml-auto">
                        {totalCount} result{totalCount !== 1 ? 's' : ''}
                    </span>
                </div>
            </div>

            {/* Results */}
            {songs.length === 0 ? (
                <div className="flex flex-col items-center py-20 text-center">
                    <div className="h-14 w-14 rounded-xl bg-secondary flex items-center justify-center mb-4">
                        <Music className="h-6 w-6 text-muted-foreground" />
                    </div>
                    <p className="text-base font-medium text-muted-foreground">
                        No songs match your filters
                    </p>
                    <p className="text-sm text-muted-foreground mt-1">
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
                        className="inline-flex items-center gap-1 px-3 py-2 rounded-lg border border-border text-sm font-medium text-muted-foreground hover:bg-secondary transition-colors disabled:opacity-40 disabled:pointer-events-none"
                    >
                        <ChevronLeft className="h-4 w-4" />
                        <span className="hidden sm:inline">Prev</span>
                    </button>
                    <PaginationNumbers currentPage={currentPage} totalPages={totalPages} onNavigate={(p) => navigate({ page: String(p) })} />
                    <button
                        disabled={currentPage >= totalPages}
                        onClick={() => navigate({ page: String(currentPage + 1) })}
                        className="inline-flex items-center gap-1 px-3 py-2 rounded-lg border border-border text-sm font-medium text-muted-foreground hover:bg-secondary transition-colors disabled:opacity-40 disabled:pointer-events-none"
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
            className="group block rounded-xl border border-border bg-card hover:border-border dark:hover:border-border hover:shadow-sm transition-all overflow-hidden"
        >
            <div className="relative aspect-[3/2] bg-secondary flex items-center justify-center group-hover:bg-muted dark:group-hover:bg-muted transition-colors">
                {song.image ? (
                    <Image
                        src={song.image}
                        width={400}
                        height={267}
                        alt=""
                        className="h-full w-full object-cover"
                    />
                ) : (
                    <Music className="h-10 w-10 text-muted-foreground" />
                )}
                {showNew && (
                    <span className="absolute top-2 right-2 px-2 py-0.5 rounded-md bg-emerald-500/90 text-white text-[10px] font-semibold shadow-sm">
                        New
                    </span>
                )}
            </div>
            <div className="p-4 space-y-2">
                <h2 className="font-semibold text-foreground truncate group-hover:text-muted-foreground dark:group-hover:text-muted-foreground transition-colors">
                    {song.title}
                </h2>
                <p className="text-xs text-muted-foreground truncate">
                    {song.artist?.name ?? 'Unknown Artist'}
                </p>
                <div className="flex items-center gap-1.5 flex-wrap pt-1">
                    {song.key && (
                        <span className="text-xs px-2 py-0.5 rounded-md bg-secondary text-muted-foreground font-mono">
                            {song.key}
                        </span>
                    )}
                    {song.difficulty && (
                        <span className="text-xs px-2 py-0.5 rounded-md bg-secondary text-muted-foreground">
                            {song.difficulty}
                        </span>
                    )}
                    {song.genre && (
                        <span className="text-xs px-2 py-0.5 rounded-md bg-secondary text-muted-foreground">
                            {song.genre}
                        </span>
                    )}
                    {song.year && (
                        <span className="text-xs text-muted-foreground">
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
            className="group flex items-start gap-4 p-4 rounded-xl border border-border bg-card hover:border-border dark:hover:border-border hover:shadow-sm transition-all"
        >
            <div className="relative h-12 w-12 rounded-lg bg-secondary flex items-center justify-center shrink-0 mt-0.5 overflow-hidden group-hover:bg-muted dark:group-hover:bg-muted transition-colors">
                {song.image ? (
                    <Image
                        src={song.image}
                        width={48}
                        height={48}
                        alt=""
                        className="h-full w-full object-cover"
                    />
                ) : (
                    <Music className="h-5 w-5 text-muted-foreground" />
                )}
                {showNew && (
                    <span className="absolute -top-1 -right-1 h-3 w-3 rounded-full bg-emerald-500 shadow-sm" />
                )}
            </div>
            <div className="min-w-0 flex-1 space-y-1">
                <h2 className="font-semibold text-foreground truncate group-hover:text-muted-foreground dark:group-hover:text-muted-foreground transition-colors">
                    {song.title}
                </h2>
                <p className="text-xs text-muted-foreground truncate">
                    {song.artist?.name ?? 'Unknown Artist'}
                </p>
                <div className="flex items-center gap-1.5 flex-wrap pt-0.5">
                    {song.key && (
                        <span className="text-xs px-2 py-0.5 rounded-md bg-secondary text-muted-foreground font-mono">
                            {song.key}
                        </span>
                    )}
                    {song.difficulty && (
                        <span className="text-xs px-2 py-0.5 rounded-md bg-secondary text-muted-foreground">
                            {song.difficulty}
                        </span>
                    )}
                    {song.genre && (
                        <span className="text-xs px-2 py-0.5 rounded-md bg-secondary text-muted-foreground">
                            {song.genre}
                        </span>
                    )}
                    {song.year && (
                        <span className="text-xs text-muted-foreground">
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
            <span key={`e-${i}`} className="px-1.5 text-sm text-muted-foreground">...</span>
        ) : (
            <button
                key={p}
                onClick={() => onNavigate(p)}
                className={`min-w-[32px] px-2 py-2 rounded-lg text-sm font-medium transition-colors ${p === currentPage
                    ? 'bg-foreground text-background'
                    : 'border border-border text-muted-foreground hover:bg-secondary'
                    }`}
            >
                {p}
            </button>
        )
    )
}
