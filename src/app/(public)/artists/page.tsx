import React, { Suspense } from 'react'
import { fetchActiveArtistsWithParams } from "@/store/api/song.server"
import ArtistsList from "./components/list"
import type { Metadata } from 'next'

export const revalidate = 300

export const metadata: Metadata = {
    title: 'All Artists - Guitar Chords',
    description: 'Browse guitar chords and lyrics by your favorite artists.',
}

export default async function ArtistsPage({ searchParams }: { searchParams: Promise<{ [key: string]: string | undefined }> }) {
    const sp = await searchParams
    const page = parseInt(sp.page ?? '1', 10)
    const letter = sp.letter || undefined
    const search = sp.q || undefined
    const sortBy = (sp.sort as any) || 'songCount'
    const sortOrder = (sp.dir as any) || 'desc'

    const result = await fetchActiveArtistsWithParams({ page, letter, search, sortBy, sortOrder }).catch((): { data: any[]; totalCount: number; page: number; totalPages: number } => ({
        data: [], totalCount: 0, page: 1, totalPages: 1,
    }))

    return (
        <div className="space-y-8">
            <div>
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                    All Artists
                </h1>
                <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
                    {result.totalCount} {result.totalCount === 1 ? 'artist' : 'artists'} in the collection
                </p>
            </div>
            <div className="border-t border-neutral-200 dark:border-neutral-800" />
            <Suspense>
                <ArtistsList
                    artists={result.data as any}
                    totalCount={result.totalCount}
                    currentPage={result.page}
                    totalPages={result.totalPages}
                    currentLetter={letter}
                    currentSearch={search}
                    currentSort={sortBy}
                    currentSortDir={sortOrder}
                />
            </Suspense>
        </div>
    )
}
