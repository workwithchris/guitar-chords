import React, { Suspense } from 'react'
import { fetchActiveArtistsWithSongCountServer as fetchActiveArtistsWithSongCount } from "@/store/api/song.server"
import ArtistsList from "./components/list"
import type { Metadata } from 'next'

export const revalidate = 0

export const metadata: Metadata = {
  title: 'All Artists - Guitar Chords',
  description: 'Browse guitar chords and lyrics by your favorite artists.',
}

export default async function ArtistsPage() {
    const data: any = await fetchActiveArtistsWithSongCount()
    return (
        <div className="space-y-8">
            <div>
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                    All Artists
                </h1>
                <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
                    {data?.length ?? 0} {data?.length === 1 ? 'artist' : 'artists'} in the collection
                </p>
            </div>
            <div className="border-t border-neutral-200 dark:border-neutral-800" />
            <Suspense>
                <ArtistsList artists={data ?? []} />
            </Suspense>
        </div>
    )
}
