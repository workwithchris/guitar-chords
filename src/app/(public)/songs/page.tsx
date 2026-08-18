import React, { Suspense } from 'react'
import SongsList from './components/list'
import { fetchActiveSongsWithParams, getDistinctGenres, getGenreCounts } from '@/store/api/song.server'
import type { Metadata } from 'next'

export const revalidate = 60

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export const metadata: Metadata = {
  title: 'All Songs',
  description: 'Browse our complete collection of guitar chords and lyrics for popular songs. Filter by difficulty, genre, and key.',
  openGraph: {
    title: 'All Songs - Guitar Chords',
    description: 'Browse guitar chords and lyrics for popular songs. Filter by difficulty, genre, and key.',
    url: '/songs',
  },
  alternates: { canonical: `${baseUrl}/songs` },
}

const COMMON_KEYS = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']

export default async function SongsPage({ searchParams }: { searchParams: Promise<{ [key: string]: string | undefined }> }) {
    const sp = await searchParams
    const page = parseInt(sp.page ?? '1', 10)
    const difficulty = sp.difficulty || undefined
    const genre = sp.genre || undefined
    const key = sp.key || undefined
    const sortBy = (sp.sort as any) || 'createdAt'
    const sortOrder = (sp.dir as any) || 'desc'

    const [result, genres, genreCounts] = await Promise.all([
        fetchActiveSongsWithParams({ page, difficulty, genre, key, sortBy, sortOrder }).catch((): { data: any[]; totalCount: number; page: number; totalPages: number } => ({
            data: [], totalCount: 0, page: 1, totalPages: 1,
        })),
        getDistinctGenres().catch(() => []),
        getGenreCounts().catch(() => []),
    ])

    const countMap = new Map(genreCounts.map((g: any) => [g.genre, g.count]))

    const prevPage = page > 1 ? page - 1 : null
    const nextPage = page < result.totalPages ? page + 1 : null

    return (
        <div className="space-y-8">
            {prevPage && <link rel="prev" href={`${baseUrl}/songs?page=${prevPage}${difficulty ? `&difficulty=${difficulty}` : ''}${genre ? `&genre=${genre}` : ''}${key ? `&key=${key}` : ''}`} />}
            {nextPage && <link rel="next" href={`${baseUrl}/songs?page=${nextPage}${difficulty ? `&difficulty=${difficulty}` : ''}${genre ? `&genre=${genre}` : ''}${key ? `&key=${key}` : ''}`} />}
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
                    genreCounts={countMap}
                    totalCount={result.totalCount}
                    currentPage={result.page}
                    totalPages={result.totalPages}
                    currentDifficulty={difficulty}
                    currentGenre={genre}
                    currentKey={key}
                    currentSort={sortBy}
                    currentSortDir={sortOrder}
                    allKeys={COMMON_KEYS}
                />
            </Suspense>
        </div>
    )
}
