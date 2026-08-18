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
                    <div className="flex items-center gap-1 p-1 rounded-lg border border-border bg-secondary">
                        <button
                            onClick={() => setViewMode('grid')}
                            className={`p-1.5 rounded-md transition-colors ${viewMode === 'grid'
                                ? 'bg-card dark:bg-muted shadow-sm text-foreground'
                                : 'text-muted-foreground hover:text-foreground'
                                }`}
                            aria-label="Grid view"
                        >
                            <LayoutGrid className="h-4 w-4" />
                        </button>
                        <button
                            onClick={() => setViewMode('list')}
                            className={`p-1.5 rounded-md transition-colors ${viewMode === 'list'
                                ? 'bg-card dark:bg-muted shadow-sm text-foreground'
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
                            <option value="songCount">Most songs</option>
                            <option value="name">Name</option>
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

            {/* A-Z letter filter */}
            <div className="flex flex-wrap gap-1">
                <button
                    onClick={() => navigate({ letter: null, page: '1' })}
                    className={`px-2.5 py-1 text-xs rounded-md font-mono transition-colors ${!currentLetter
                        ? 'bg-foreground text-background'
                        : 'bg-secondary text-muted-foreground hover:bg-muted dark:hover:bg-muted'
                        }`}
                >
                    All
                </button>
                {LETTERS.map((l) => (
                    <button
                        key={l}
                        onClick={() => navigate({ letter: currentLetter === l ? null : l, page: '1' })}
                        className={`px-2.5 py-1 text-xs rounded-md font-mono transition-colors ${currentLetter === l
                            ? 'bg-foreground text-background'
                            : 'bg-secondary text-muted-foreground hover:bg-muted dark:hover:bg-muted'
                            }`}
                    >
                        {l}
                    </button>
                ))}
            </div>

            {/* Results count */}
            <p className="text-xs text-muted-foreground">
                {totalCount} result{totalCount !== 1 ? 's' : ''}
            </p>

            {/* Results */}
            {artists.length === 0 ? (
                <div className="flex flex-col items-center py-20 text-center">
                    <div className="h-14 w-14 rounded-xl bg-secondary flex items-center justify-center mb-4">
                        <MicVocal className="h-6 w-6 text-muted-foreground" />
                    </div>
                    <p className="text-base font-medium text-muted-foreground">
                        No artists found
                    </p>
                    <p className="text-sm text-muted-foreground mt-1">
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

function ArtistCardGrid({ artist }: { artist: Artist }) {
    return (
        <Link
            href={`/artists/${artist.slug}`}
            className="group block p-5 rounded-xl border border-border bg-card hover:border-border dark:hover:border-border hover:shadow-sm transition-all"
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
                    <div className="h-24 w-24 rounded-full bg-secondary flex items-center justify-center group-hover:bg-muted dark:group-hover:bg-muted transition-colors">
                        <MicVocal className="h-8 w-8 text-muted-foreground" />
                    </div>
                )}
                <div className="space-y-1">
                    <h2 className="font-semibold text-foreground">
                        {artist.name}
                    </h2>
                    <p className="text-xs text-muted-foreground">
                        {artist.songCount} {artist.songCount === 1 ? 'song' : 'songs'}
                    </p>
                </div>
                {artist.bio && (
                    <p className="text-xs text-muted-foreground line-clamp-2 leading-relaxed">
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
            className="group flex items-start gap-4 p-4 rounded-xl border border-border bg-card hover:border-border dark:hover:border-border hover:shadow-sm transition-all"
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
                <div className="h-12 w-12 rounded-full bg-secondary flex items-center justify-center shrink-0 mt-0.5 group-hover:bg-muted dark:group-hover:bg-muted transition-colors">
                    <MicVocal className="h-5 w-5 text-muted-foreground" />
                </div>
            )}
            <div className="min-w-0 flex-1 space-y-1">
                <div className="flex items-center justify-between gap-4">
                    <h2 className="font-semibold text-foreground truncate group-hover:text-muted-foreground dark:group-hover:text-muted-foreground transition-colors">
                        {artist.name}
                    </h2>
                    <span className="text-xs text-muted-foreground shrink-0">
                        {artist.songCount} {artist.songCount === 1 ? 'song' : 'songs'}
                    </span>
                </div>
                {artist.bio && (
                    <p className="text-xs text-muted-foreground line-clamp-1">
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
