import React, { Suspense } from 'react'
import { fetchActiveArtistsWithParams } from "@/store/api/song.server"
import ArtistsList from "./components/list"
import type { Metadata } from 'next'

// TODO: Cache Components adoption. Refactor this route so this opt-out can be removed.
// See: https://nextjs.org/docs/app/guides/migrating-to-cache-components
export const instant = false;


const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export const metadata: Metadata = {
    title: 'All Artists',
    description: 'Browse guitar chords and lyrics by your favorite artists. Find songs by artist name, A-Z.',
    openGraph: {
        title: 'All Artists - Guitar Chords',
        description: 'Browse guitar chords and lyrics by your favorite artists. Find songs by artist name.',
        url: '/artists',
    },
    alternates: { canonical: `${baseUrl}/artists` },
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

    const prevPage = page > 1 ? page - 1 : null
    const nextPage = page < result.totalPages ? page + 1 : null

    return (
        <div className="space-y-8">
            {prevPage && <link rel="prev" href={`${baseUrl}/artists?page=${prevPage}${letter ? `&letter=${letter}` : ''}${search ? `&q=${search}` : ''}`} />}
            {nextPage && <link rel="next" href={`${baseUrl}/artists?page=${nextPage}${letter ? `&letter=${letter}` : ''}${search ? `&q=${search}` : ''}`} />}
            <div>
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-foreground">
                    All Artists
                </h1>
                <p className="mt-1 text-sm text-muted-foreground">
                    {result.totalCount} {result.totalCount === 1 ? 'artist' : 'artists'} in the collection
                </p>
            </div>
            <div className="border-t border-border" />
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
