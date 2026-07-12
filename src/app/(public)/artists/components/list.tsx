"use client"
import { useArtistStore } from '@/store/artist.store'
import Image from 'next/image'
import Link from 'next/link'
import React from 'react'
import { Music } from 'lucide-react'

export default function ArtistsList({ artists }: { artists: any[] }) {
    const { renderList }: any = useArtistStore();

    if (renderList) {
        return (
            <div className="divide-y divide-neutral-100 dark:divide-neutral-800">
                {artists?.map((artist) => (
                    <Link key={artist.id} href={`/artists/${artist.slug}`} className="group block">
                        <div className="flex items-center gap-4 py-4 px-1 hover:bg-neutral-50 dark:hover:bg-neutral-900/50 rounded-lg transition-colors">
                            {artist.image ? (
                                <Image
                                    src={artist.image}
                                    width={48}
                                    height={48}
                                    alt={artist.name}
                                    className="rounded-full object-cover shrink-0"
                                />
                            ) : (
                                <div className="h-12 w-12 rounded-full bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0">
                                    <Music className="h-5 w-5 text-neutral-400" />
                                </div>
                            )}
                            <div className="min-w-0 flex-1">
                                <h2 className="font-semibold text-neutral-900 dark:text-neutral-100 truncate">
                                    {artist.name}
                                </h2>
                                <p className="text-xs text-neutral-500 dark:text-neutral-400">
                                    {artist.songCount} {artist.songCount === 1 ? 'song' : 'songs'}
                                </p>
                            </div>
                        </div>
                    </Link>
                ))}
            </div>
        )
    }

    return (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
            {artists?.map((artist) => (
                <Link
                    key={artist.id}
                    href={`/artists/${artist.slug}`}
                    className="group block p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
                >
                    <div className="flex flex-col items-center text-center gap-3">
                        {artist.image ? (
                            <Image
                                src={artist.image}
                                width={96}
                                height={96}
                                alt={artist.name}
                                className="rounded-full object-cover group-hover:scale-105 transition-transform"
                            />
                        ) : (
                            <div className="h-24 w-24 rounded-full bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                                <Music className="h-8 w-8 text-neutral-300 dark:text-neutral-600" />
                            </div>
                        )}
                        <div>
                            <h2 className="font-semibold text-neutral-900 dark:text-neutral-100">
                                {artist.name}
                            </h2>
                            <p className="text-xs text-neutral-500 dark:text-neutral-400 mt-0.5">
                                {artist.songCount} {artist.songCount === 1 ? 'song' : 'songs'}
                            </p>
                        </div>
                    </div>
                </Link>
            ))}
        </div>
    )
}
