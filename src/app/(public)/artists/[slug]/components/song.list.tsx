import React from 'react'
import Image from 'next/image'
import Link from 'next/link';
import { fetchSongsByArtistSlugServer as fetchSongsByArtistSlug } from '@/store/api/song.server';
import { Music } from 'lucide-react';

export default async function ArtistList({ slug }: { slug: string }) {
    const songs = (await fetchSongsByArtistSlug(slug)).filter(s => s.isActive);

    if (!songs || songs.length === 0) {
        return (
            <div className="flex flex-col items-center gap-3 py-12 text-center">
                <Music className="h-10 w-10 text-muted-foreground" />
                <p className="text-sm text-muted-foreground">No songs found</p>
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
                    className="group flex items-start gap-4 p-4 rounded-xl border border-border bg-card hover:border-border dark:hover:border-border hover:shadow-sm transition-all"
                >
                    {song.image ? (
                      <Image src={song.image} width={40} height={40} alt="" className="rounded-lg object-cover shrink-0 mt-0.5" />
                    ) : (
                      <div className="h-10 w-10 rounded-lg bg-secondary flex items-center justify-center shrink-0 mt-0.5 group-hover:bg-muted dark:group-hover:bg-muted transition-colors">
                        <Music className="h-4 w-4 text-muted-foreground" />
                      </div>
                    )}
                    <div className="min-w-0 space-y-1">
                        <h3 className="font-semibold text-foreground truncate">
                            {song.title}
                        </h3>
                        <div className="flex items-center gap-3">
                            {song.year && (
                                <span className="text-xs text-muted-foreground">{song.year}</span>
                            )}
                            {song.writtenBy && (
                                <span className="text-xs text-muted-foreground truncate">{song.writtenBy}</span>
                            )}
                        </div>
                    </div>
                </Link>
            ))}
        </div>
    )
}
