import React, { Suspense } from 'react'
import SongsList from './components/list'
import { fetchActiveSongsServer as fetchActiveSongs } from '@/store/api/song.server'
import type { Metadata } from 'next'

export const revalidate = 60

export const metadata: Metadata = {
  title: 'All Songs - Guitar Chords',
  description: 'Browse our complete collection of guitar chords and lyrics for popular songs.',
}

export default async function SongsPage() {
    const songs: any[] = await fetchActiveSongs()
    const genres = [...new Set(songs.map((s: any) => s.genre).filter(Boolean))] as string[]
    return (
        <div className="space-y-8">
            <div>
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                    All Songs
                </h1>
                <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
                    {songs.length} {songs.length === 1 ? 'song' : 'songs'} in the collection
                </p>
            </div>
            <div className="border-t border-neutral-200 dark:border-neutral-800" />
            <Suspense>
                <SongsList songs={songs} genres={genres} />
            </Suspense>
        </div>
    )
}
