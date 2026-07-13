import React from 'react'
import { getHomeStats, getRecentSongs, getFeaturedArtist, getDistinctGenres } from '@/store/api/song.server'
import HomeClient from './components/home-client'

export const revalidate = 60

export default async function HomePage() {
    const [stats, recentSongs, featuredArtist, genres] = await Promise.all([
        getHomeStats().catch(() => ({ totalSongs: 0, totalArtists: 0, totalGenres: 0, beginnerCount: 0 })),
        getRecentSongs(6).catch(() => []),
        getFeaturedArtist().catch(() => null),
        getDistinctGenres().catch(() => []),
    ])
    return (
        <HomeClient
            stats={stats}
            recentSongs={recentSongs ?? []}
            genres={genres}
            featuredArtist={featuredArtist}
        />
    )
}
