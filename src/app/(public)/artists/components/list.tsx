"use client"

import Image from 'next/image'
import Link from 'next/link'
import { useRouter, usePathname } from 'next/navigation'
import { useState } from 'react'
import { Music, MicVocal, ArrowUpDown, LayoutGrid, List, ChevronLeft, ChevronRight } from 'lucide-react'

const LETTERS = [...'ABCDEFGHIJKLMNOPQRSTUVWXYZ'].map((l) => l)

interface Artist {
    id: number
    name: string
    slug: string
    image?: string
    bio?: string
    songCount: number
}

export default function ArtistsList({
    artists,
    totalCount,
    currentPage,
    totalPages,
    currentLetter,
    currentSearch,
    currentSort,
    currentSortDir,
}: {
    artists: Artist[]
    totalCount: number
    currentPage: number
    totalPages: number
    currentLetter?: string
    currentSearch?: string
    currentSort: string
    currentSortDir: string
}) {
    const router = useRouter()
    const pathname = usePathname()
    const [viewMode, setViewMode] = useState<'grid' | 'list'>('grid')

    function buildUrl(overrides: Record<string, string | null>) {
        const next = new URLSearchParams()
        if (overrides.letter ?? currentLetter) next.set('letter', overrides.letter ?? currentLetter!)
        if (overrides.q ?? currentSearch) next.set('q', overrides.q ?? currentSearch!)
        if ((overrides.sort ?? currentSort) !== 'songCount') next.set('sort', overrides.sort ?? currentSort)
        if ((overrides.dir ?? currentSortDir) !== 'desc') next.set('dir', overrides.dir ?? currentSortDir)
        if (overrides.page && overrides.page !== '1') next.set('page', overrides.page)
        const qs = next.toString()
        return qs ? `${pathname}?${qs}` : pathname
    }

    function navigate(overrides: Record<string, string | null>) {
        router.push(buildUrl(overrides), { scroll: false })
    }

    return (
        <div className="space-y-6">
            {/* Toolbar: sort, view toggle */}
            <div className="flex flex-col sm:flex-row gap-3">
                <div className="flex-1" />
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
                            <option value="songCount">Most songs</option>
                            <option value="name">Name</option>
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

            {/* A-Z letter filter */}
            <div className="flex flex-wrap gap-1">
                <button
                    onClick={() => navigate({ letter: null, page: '1' })}
                    className={`px-2.5 py-1 text-xs rounded-md font-mono transition-colors ${!currentLetter
                        ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                        : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
                        }`}
                >
                    All
                </button>
                {LETTERS.map((l) => (
                    <button
                        key={l}
                        onClick={() => navigate({ letter: currentLetter === l ? null : l, page: '1' })}
                        className={`px-2.5 py-1 text-xs rounded-md font-mono transition-colors ${currentLetter === l
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
                {totalCount} result{totalCount !== 1 ? 's' : ''}
            </p>

            {/* Results */}
            {artists.length === 0 ? (
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
                    {artists.map((artist) => (
                        <ArtistCardGrid key={artist.id} artist={artist} />
                    ))}
                </div>
            ) : (
                <div className="space-y-3">
                    {artists.map((artist) => (
                        <ArtistCardList key={artist.id} artist={artist} />
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
