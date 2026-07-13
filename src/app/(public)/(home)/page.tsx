import React from 'react'
import type { Metadata } from 'next'
import { getHomeStats, getRecentSongs, getFeaturedArtist, getDistinctGenres, getTrendingSongs, getKeysWithSongCount } from '@/store/api/song.server'
import HomeClient from './components/home-client'

export const revalidate = 60

export const metadata: Metadata = {
  title: 'Free Chords & Lyrics',
  description: 'Find guitar chords and lyrics for your favorite songs. Browse by artist, genre, difficulty, and key. Transpose chords, auto-scroll lyrics, and learn to play.',
  openGraph: {
    title: 'Guitar Chords - Free Chords & Lyrics',
    description: 'Find guitar chords and lyrics for your favorite songs. Browse by artist, genre, difficulty, and key.',
    url: '/',
  },
}

export default async function HomePage() {
    const [stats, recentSongs, featuredArtist, genres, trendingSongs, keyCounts] = await Promise.all([
        getHomeStats().catch(() => ({ totalSongs: 0, totalArtists: 0, totalGenres: 0, beginnerCount: 0 })),
        getRecentSongs(6).catch(() => []),
        getFeaturedArtist().catch(() => null),
        getDistinctGenres().catch(() => []),
        getTrendingSongs(6).catch(() => []),
        getKeysWithSongCount().catch(() => []),
    ])
    return (
        <HomeClient
            stats={stats}
            recentSongs={recentSongs ?? []}
            genres={genres}
            featuredArtist={featuredArtist}
            trendingSongs={trendingSongs ?? []}
            keyCounts={keyCounts}
        />
    )
}
