import React from 'react'
import { fetchActiveSongsServer as fetchActiveSongs } from '@/store/api/song.server'
import { fetchActiveArtistsWithSongCountServer as fetchActiveArtists } from '@/store/api/song.server'
import HomeClient from './components/home-client'

export const revalidate = 60

export default async function HomePage() {
    const [songs, artists] = await Promise.all([
        fetchActiveSongs().catch(() => []),
        fetchActiveArtists().catch(() => []),
    ])
    return <HomeClient songs={songs ?? []} artists={artists ?? []} />
}