import React, { Suspense } from 'react'
import SongsList from './components/list'
import { fetchActiveSongsWithParams, getDistinctGenres } from '@/store/api/song.server'
import type { Metadata } from 'next'

export const revalidate = 60

export const metadata: Metadata = {
  title: 'All Songs - Guitar Chords',
  description: 'Browse our complete collection of guitar chords and lyrics for popular songs.',
}

export default async function SongsPage({ searchParams }: { searchParams: Promise<{ [key: string]: string | undefined }> }) {
    const sp = await searchParams
    const page = parseInt(sp.page ?? '1', 10)
    const difficulty = sp.difficulty || undefined
    const genre = sp.genre || undefined
    const sortBy = (sp.sort as any) || 'createdAt'
    const sortOrder = (sp.dir as any) || 'desc'

    const [result, genres] = await Promise.all([
        fetchActiveSongsWithParams({ page, difficulty, genre, sortBy, sortOrder }).catch((): { data: any[]; totalCount: number; page: number; totalPages: number } => ({
            data: [], totalCount: 0, page: 1, totalPages: 1,
        })),
        getDistinctGenres().catch(() => []),
    ])

    return (
        <div className="space-y-8">
            <div>
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                    All Songs
                </h1>
                <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
                    {result.totalCount} {result.totalCount === 1 ? 'song' : 'songs'} in the collection
                </p>
            </div>
            <div className="border-t border-neutral-200 dark:border-neutral-800" />
            <Suspense>
                <SongsList
                    songs={result.data as any}
                    genres={genres}
                    totalCount={result.totalCount}
                    currentPage={result.page}
                    totalPages={result.totalPages}
                    currentDifficulty={difficulty}
                    currentGenre={genre}
                    currentSort={sortBy}
                    currentSortDir={sortOrder}
                />
            </Suspense>
        </div>
    )
}
