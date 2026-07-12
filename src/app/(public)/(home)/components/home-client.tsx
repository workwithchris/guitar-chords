"use client"

import Link from 'next/link'
import { ArrowRight, Music, MicVocal, MessageSquare } from 'lucide-react'

export default function HomeClient({ songs }: { songs: any[] }) {
    const featuredSongs = songs?.slice(0, 6) ?? []

    return (
        <div className="space-y-24 pb-12">
            <section className="pt-12 md:pt-20 text-center space-y-6">
                <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full border border-neutral-200 dark:border-neutral-800 bg-neutral-100 dark:bg-neutral-900 text-xs font-medium text-neutral-600 dark:text-neutral-400">
                    <Music className="h-3 w-3" />
                    Free guitar chords & lyrics
                </div>
                <h1 className="text-3xl sm:text-4xl md:text-5xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100 max-w-2xl mx-auto leading-tight">
                    Find chords for your{' '}
                    <span className="bg-gradient-to-r from-neutral-900 via-neutral-600 to-neutral-400 dark:from-neutral-100 dark:via-neutral-400 dark:to-neutral-600 bg-clip-text text-transparent">
                        favorite songs
                    </span>
                </h1>
                <p className="text-neutral-500 dark:text-neutral-400 max-w-lg mx-auto text-base md:text-lg">
                    Explore our collection of guitar chords and lyrics. Learn to play your favorite songs with ease.
                </p>
                <div className="flex items-center justify-center gap-3 pt-2">
                    <Link
                        href="/songs"
                        className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900 text-sm font-medium hover:bg-neutral-800 dark:hover:bg-neutral-200 transition-colors"
                    >
                        Browse Songs
                        <ArrowRight className="h-4 w-4" />
                    </Link>
                    <Link
                        href="/artists"
                        className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg border border-neutral-200 dark:border-neutral-800 text-neutral-700 dark:text-neutral-300 text-sm font-medium hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
                    >
                        View Artists
                    </Link>
                </div>
            </section>

            <section className="space-y-8">
                <div className="text-center space-y-2">
                    <h2 className="text-xl md:text-2xl font-semibold tracking-tight text-neutral-900 dark:text-neutral-100">
                        Quick Links
                    </h2>
                    <p className="text-sm text-neutral-500 dark:text-neutral-400">
                        Everything you need to start playing
                    </p>
                </div>
                <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                    <Link
                        href="/songs"
                        className="group flex flex-col items-center gap-3 p-6 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
                    >
                        <div className="h-10 w-10 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                            <Music className="h-5 w-5 text-neutral-700 dark:text-neutral-300" />
                        </div>
                        <div className="text-center">
                            <h3 className="font-medium text-neutral-900 dark:text-neutral-100">All Songs</h3>
                            <p className="text-xs text-neutral-500 dark:text-neutral-400 mt-1">Browse complete song catalog</p>
                        </div>
                    </Link>
                    <Link
                        href="/artists"
                        className="group flex flex-col items-center gap-3 p-6 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
                    >
                        <div className="h-10 w-10 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                            <MicVocal className="h-5 w-5 text-neutral-700 dark:text-neutral-300" />
                        </div>
                        <div className="text-center">
                            <h3 className="font-medium text-neutral-900 dark:text-neutral-100">All Artists</h3>
                            <p className="text-xs text-neutral-500 dark:text-neutral-400 mt-1">Browse by artist name</p>
                        </div>
                    </Link>
                    <Link
                        href="/request"
                        className="group flex flex-col items-center gap-3 p-6 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
                    >
                        <div className="h-10 w-10 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                            <MessageSquare className="h-5 w-5 text-neutral-700 dark:text-neutral-300" />
                        </div>
                        <div className="text-center">
                            <h3 className="font-medium text-neutral-900 dark:text-neutral-100">Request a Song</h3>
                            <p className="text-xs text-neutral-500 dark:text-neutral-400 mt-1">Can't find a song? Tell us</p>
                        </div>
                    </Link>
                </div>
            </section>

            {featuredSongs.length > 0 && (
                <section className="space-y-8">
                    <div className="text-center space-y-2">
                        <h2 className="text-xl md:text-2xl font-semibold tracking-tight text-neutral-900 dark:text-neutral-100">
                            Recently Added
                        </h2>
                        <p className="text-sm text-neutral-500 dark:text-neutral-400">
                            Latest songs in our collection
                        </p>
                    </div>
                    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
                        {featuredSongs.map((song) => (
                            <Link
                                key={song.id}
                                href={`/songs/${song.slug}`}
                                className="group flex items-center gap-3 p-4 rounded-lg border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
                            >
                                <div className="h-10 w-10 rounded-md bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                                    <Music className="h-4 w-4 text-neutral-500 dark:text-neutral-400" />
                                </div>
                                <div className="min-w-0">
                                    <p className="font-medium text-sm text-neutral-900 dark:text-neutral-100 truncate">
                                        {song.title}
                                    </p>
                                    <p className="text-xs text-neutral-500 dark:text-neutral-400 truncate">
                                        {song.artist?.name ?? 'Unknown Artist'}
                                    </p>
                                </div>
                            </Link>
                        ))}
                    </div>
                    <div className="text-center">
                        <Link
                            href="/songs"
                            className="inline-flex items-center gap-1 text-sm font-medium text-neutral-600 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
                        >
                            View all songs
                            <ArrowRight className="h-3.5 w-3.5" />
                        </Link>
                    </div>
                </section>
            )}
        </div>
    )
}
