import React from 'react'
import Link from 'next/link';
import { fetchSongsByArtistSlug } from '@/store/api/artist.api';
import { Music } from 'lucide-react';

export default async function ArtistList({ slug }: { slug: string }) {
    const songs = await fetchSongsByArtistSlug(slug);

    if (!songs || songs.length === 0) {
        return (
            <div className="flex flex-col items-center gap-3 py-12 text-center">
                <Music className="h-10 w-10 text-neutral-300 dark:text-neutral-600" />
                <p className="text-sm text-neutral-500 dark:text-neutral-400">No songs found</p>
            </div>
        )
    }

    return (
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
            {songs.map((song) => (
                <Link
                    key={song.id}
                    href={`/songs/${song.slug}`}
                    target="_blank"
                    className="group flex items-start gap-4 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
                >
                    <div className="h-10 w-10 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 mt-0.5 group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                        <Music className="h-4 w-4 text-neutral-500 dark:text-neutral-400" />
                    </div>
                    <div className="min-w-0 space-y-1">
                        <h3 className="font-semibold text-neutral-900 dark:text-neutral-100 truncate">
                            {song.title}
                        </h3>
                        <div className="flex items-center gap-3">
                            {song.year && (
                                <span className="text-xs text-neutral-400 dark:text-neutral-500">{song.year}</span>
                            )}
                            {song.writtenBy && (
                                <span className="text-xs text-neutral-400 dark:text-neutral-500 truncate">{song.writtenBy}</span>
                            )}
                        </div>
                    </div>
                </Link>
            ))}
        </div>
    )
}
