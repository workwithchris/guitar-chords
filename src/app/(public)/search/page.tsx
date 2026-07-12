import React from 'react'
import Link from 'next/link';
import { searchSongsAndArtists } from '@/store/api/search.api';
import Image from 'next/image';
import { Music, MicVocal, Search } from 'lucide-react';
import type { Metadata } from 'next'

export const revalidate = 0

export async function generateMetadata({ searchParams }: { searchParams: Promise<{ query: string }> }): Promise<Metadata> {
    const { query } = await searchParams
    return {
        title: query ? `Search: ${query} - Guitar Chords` : 'Search - Guitar Chords',
        description: `Search results for guitar chords and lyrics matching "${query}".`,
    }
}

export default async function SearchPage({ searchParams }: { searchParams: Promise<{ query: string }> }) {
    const { query } = await searchParams
    const data = await searchSongsAndArtists(query);

    if (!query) {
        return (
            <div className="flex flex-col items-center justify-center py-20 text-center space-y-3">
                <Search className="h-12 w-12 text-neutral-300 dark:text-neutral-600" />
                <h1 className="text-xl font-semibold text-neutral-900 dark:text-neutral-100">Search</h1>
                <p className="text-sm text-neutral-500 dark:text-neutral-400 max-w-sm">
                    Use the search bar above to find songs and artists.
                </p>
            </div>
        )
    }

    return (
        <div className="space-y-8">
            <div>
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                    Results for &ldquo;{query}&rdquo;
                </h1>
                <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
                    {data?.length ?? 0} {data?.length === 1 ? 'result' : 'results'} found
                </p>
            </div>

            <div className="border-t border-neutral-200 dark:border-neutral-800" />

            {!data || data.length === 0 ? (
                <div className="flex flex-col items-center gap-3 py-16 text-center">
                    <Search className="h-10 w-10 text-neutral-300 dark:text-neutral-600" />
                    <p className="text-sm text-neutral-500 dark:text-neutral-400">No results found for &ldquo;{query}&rdquo;</p>
                </div>
            ) : (
                <div className="space-y-3">
                    {data.map((searchData: any, index: number) => {
                        if (searchData.type === 'artist') {
                            return (
                                <Link
                                    key={`artist-${index}`}
                                    href={`/artists/${searchData?.details?.slug}`}
                                    className="group flex items-center gap-4 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
                                >
                                    <div className="h-10 w-10 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                                        <MicVocal className="h-4 w-4 text-neutral-500 dark:text-neutral-400" />
                                    </div>
                                    {searchData.details?.image && (
                                        <Image
                                            src={searchData.details.image}
                                            width={40}
                                            height={40}
                                            alt={searchData.details?.name ?? ''}
                                            className="rounded-full object-cover shrink-0"
                                        />
                                    )}
                                    <div className="min-w-0">
                                        <h2 className="font-semibold text-neutral-900 dark:text-neutral-100 truncate">
                                            {searchData.details?.name}
                                        </h2>
                                        <span className="inline-flex items-center gap-1 mt-0.5 text-xs text-neutral-400 dark:text-neutral-500">
                                            <MicVocal className="h-3 w-3" />
                                            Artist
                                        </span>
                                    </div>
                                </Link>
                            )
                        }
                        return (
                            <Link
                                key={`song-${index}`}
                                href={`/songs/${searchData?.details?.slug}`}
                                className="group flex items-center gap-4 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
                            >
                                <div className="h-10 w-10 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                                    <Music className="h-4 w-4 text-neutral-500 dark:text-neutral-400" />
                                </div>
                                <div className="min-w-0 flex-1">
                                    <h2 className="font-semibold text-neutral-900 dark:text-neutral-100 truncate">
                                        {searchData.details?.title}
                                    </h2>
                                    <div className="flex items-center gap-3 mt-0.5">
                                        <span className="text-xs text-neutral-500 dark:text-neutral-400">
                                            {searchData.details?.artist?.name}
                                        </span>
                                        <span className="inline-flex items-center gap-1 text-xs text-neutral-400 dark:text-neutral-500">
                                            <Music className="h-3 w-3" />
                                            Song
                                        </span>
                                    </div>
                                </div>
                            </Link>
                        )
                    })}
                </div>
            )}
        </div>
    )
}
