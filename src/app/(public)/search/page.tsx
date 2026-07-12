import React from 'react'
import { searchSongsAndArtists } from '@/store/api/search.api'
import type { Metadata } from 'next'
import { fetchActiveSongsServer as fetchActiveSongs } from '@/store/api/song.server'
import SearchClient from './components/search-client'

export const revalidate = 0

export async function generateMetadata({ searchParams }: { searchParams: Promise<{ query: string }> }): Promise<Metadata> {
    const { query } = await searchParams
    const title = query ? `Search: ${query} - Guitar Chords` : 'Search - Guitar Chords'
    const description = query ? `Search results for guitar chords and lyrics matching "${query}".` : 'Search guitar chords and lyrics by song or artist.'
    return {
        title,
        description,
        openGraph: {
            title, description,
            url: `https://guitarchords.techyatraa.com/search${query ? `?query=${encodeURIComponent(query)}` : ''}`,
            siteName: 'Guitar Chords',
        },
        twitter: { card: 'summary_large_image', title, description },
    }
}

export default async function SearchPage({ searchParams }: { searchParams: Promise<{ query: string }> }) {
    const { query } = await searchParams
    const trimmed = query?.trim() ?? ''

    const [results, songs] = await Promise.all([
        trimmed ? searchSongsAndArtists(trimmed).catch(() => []) : Promise.resolve([]),
        fetchActiveSongs().catch(() => []),
    ])

    const suggestions = (songs ?? [])
        .slice(0, 6)
        .map((s: any) => ({ slug: s.slug, title: s.title, artistName: s.artist?.name, image: s.image }))

    return <SearchClient query={trimmed} results={results} suggestions={suggestions} />
}