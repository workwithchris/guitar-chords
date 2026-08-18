import React from 'react'
import { searchSongsAndArtists } from '@/store/api/search.api'
import type { Metadata } from 'next'
import { fetchActiveSongsServer as fetchActiveSongs } from '@/store/api/song.server'
import SearchClient from './components/search-client'

// TODO: Cache Components adoption. Refactor this route so this opt-out can be removed.
// See: https://nextjs.org/docs/app/guides/migrating-to-cache-components
export const instant = false;


const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export async function generateMetadata({ searchParams }: { searchParams: Promise<{ query: string }> }): Promise<Metadata> {
    const { query } = await searchParams
    const title = query ? `Search: ${query}` : 'Search'
    const description = query ? `Search results for guitar chords and lyrics matching "${query}".` : 'Search guitar chords and lyrics by song or artist.'
    return {
        title,
        description,
        openGraph: {
            title: query ? `Search: ${query} - Guitar Chords` : 'Search - Guitar Chords',
            description,
            url: `/search${query ? `?query=${encodeURIComponent(query)}` : ''}`,
        },
        twitter: { card: 'summary_large_image', title, description },
        alternates: { canonical: `${baseUrl}/search` },
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