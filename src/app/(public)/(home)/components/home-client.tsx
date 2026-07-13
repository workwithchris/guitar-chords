"use client"

import Link from 'next/link'
import Image from 'next/image'
import { ArrowRight, Music, MicVocal, MessageSquare, Search, BarChart3, Sparkles, GraduationCap } from 'lucide-react'

const DIFFICULTIES = ['Beginner', 'Intermediate', 'Advanced']

const difficultyIcons: Record<string, typeof GraduationCap> = {
    Beginner: GraduationCap,
    Intermediate: BarChart3,
    Advanced: Sparkles,
}

export default function HomeClient({
    stats,
    recentSongs,
    genres,
    featuredArtist,
}: {
    stats: { totalSongs: number; totalArtists: number; totalGenres: number; beginnerCount: number }
    recentSongs: any[]
    genres: string[]
    featuredArtist: any | null
}) {
    return (
        <div className="space-y-20 pb-16">
            <section className="relative pt-8 md:pt-20 pb-12 md:pb-16 text-center space-y-8 overflow-hidden">
                <div className="absolute inset-0 -z-10">
                    <div className="absolute inset-0 bg-[radial-gradient(ellipse_at_top,_var(--tw-gradient-stops))] from-neutral-200/40 via-transparent to-transparent dark:from-neutral-800/30" />
                </div>
                <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full border border-neutral-200 dark:border-neutral-800 bg-white/80 dark:bg-neutral-900/80 text-xs font-medium text-neutral-600 dark:text-neutral-400 backdrop-blur-sm">
                    <Music className="h-3 w-3" />
                    Free guitar chords & lyrics
                </div>
                <h1 className="text-4xl sm:text-5xl md:text-6xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100 max-w-3xl mx-auto leading-[1.1]">
                    Find chords for your{' '}
                    <span className="bg-gradient-to-r from-neutral-800 via-neutral-600 to-neutral-400 dark:from-neutral-100 dark:via-neutral-300 dark:to-neutral-500 bg-clip-text text-transparent">
                        favorite songs
                    </span>
                </h1>
                <p className="text-neutral-500 dark:text-neutral-400 max-w-xl mx-auto text-base md:text-lg leading-relaxed">
                    Explore our collection of guitar chords and lyrics. Transpose on the fly, follow auto-scroll, and hover any chord for a diagram.
                </p>
                <div className="flex items-center justify-center gap-3 pt-2">
                    <Link
                        href="/songs"
                        className="inline-flex items-center gap-2 px-6 py-2.5 rounded-lg bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900 text-sm font-medium hover:bg-neutral-800 dark:hover:bg-neutral-200 transition-colors shadow-sm"
                    >
                        Browse Songs
                        <ArrowRight className="h-4 w-4" />
                    </Link>
                    <Link
                        href="/artists"
                        className="inline-flex items-center gap-2 px-6 py-2.5 rounded-lg border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 text-neutral-700 dark:text-neutral-300 text-sm font-medium hover:bg-neutral-100 dark:hover:bg-neutral-800 hover:border-neutral-300 dark:hover:border-neutral-700 transition-colors"
                    >
                        <MicVocal className="h-4 w-4" />
                        View Artists
                    </Link>
                </div>
                <Link
                    href="/search"
                    className="inline-flex items-center gap-3 mx-auto max-w-md w-full px-4 py-3 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 text-sm text-neutral-400 hover:border-neutral-300 dark:hover:border-neutral-700 hover:text-neutral-500 dark:hover:text-neutral-300 transition-colors shadow-sm"
                >
                    <Search className="h-4 w-4 shrink-0" />
                    <span>Search songs or artists...</span>
                    <kbd className="ml-auto hidden sm:inline-flex items-center gap-1 px-1.5 py-0.5 rounded border border-neutral-200 dark:border-neutral-800 bg-neutral-50 dark:bg-neutral-800 text-[10px] font-medium text-neutral-400">
                        ⌘K
                    </kbd>
                </Link>
            </section>

            <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
                {[
                    { label: 'Songs', value: stats.totalSongs, icon: Music },
                    { label: 'Artists', value: stats.totalArtists, icon: MicVocal },
                    { label: 'Genres', value: stats.totalGenres, icon: BarChart3 },
                    { label: 'Beginner Friendly', value: stats.beginnerCount, icon: GraduationCap },
                ].map((stat) => {
                    const Icon = stat.icon
                    return (
                        <div key={stat.label} className="flex items-center gap-3 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900">
                            <div className="h-9 w-9 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0">
                                <Icon className="h-4 w-4 text-neutral-600 dark:text-neutral-400" />
                            </div>
                            <div>
                                <p className="text-lg font-semibold text-neutral-900 dark:text-neutral-100">{stat.value}</p>
                                <p className="text-[11px] text-neutral-500 dark:text-neutral-400">{stat.label}</p>
                            </div>
                        </div>
                    )
                })}
            </div>

            <section className="space-y-6">
                <div className="space-y-1.5">
                    <h2 className="text-xl font-semibold tracking-tight text-neutral-900 dark:text-neutral-100">
                        Quick Links
                    </h2>
                    <p className="text-sm text-neutral-500 dark:text-neutral-400">Everything you need to start playing</p>
                </div>
                <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                    <Link href="/songs" className="group relative flex flex-col items-center gap-3 p-7 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-md transition-all overflow-hidden">
                        <div className="absolute inset-0 bg-gradient-to-b from-neutral-50 to-transparent dark:from-neutral-800/50 dark:to-transparent opacity-0 group-hover:opacity-100 transition-opacity" />
                        <div className="relative h-11 w-11 rounded-xl bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                            <Music className="h-5 w-5 text-neutral-700 dark:text-neutral-300" />
                        </div>
                        <div className="relative text-center">
                            <h3 className="font-medium text-neutral-900 dark:text-neutral-100">All Songs</h3>
                            <p className="text-xs text-neutral-500 dark:text-neutral-400 mt-1">Browse complete song catalog</p>
                        </div>
                    </Link>
                    <Link href="/artists" className="group relative flex flex-col items-center gap-3 p-7 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-md transition-all overflow-hidden">
                        <div className="absolute inset-0 bg-gradient-to-b from-neutral-50 to-transparent dark:from-neutral-800/50 dark:to-transparent opacity-0 group-hover:opacity-100 transition-opacity" />
                        <div className="relative h-11 w-11 rounded-xl bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                            <MicVocal className="h-5 w-5 text-neutral-700 dark:text-neutral-300" />
                        </div>
                        <div className="relative text-center">
                            <h3 className="font-medium text-neutral-900 dark:text-neutral-100">All Artists</h3>
                            <p className="text-xs text-neutral-500 dark:text-neutral-400 mt-1">Browse by artist name</p>
                        </div>
                    </Link>
                    <Link href="/request" className="group relative flex flex-col items-center gap-3 p-7 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-md transition-all overflow-hidden">
                        <div className="absolute inset-0 bg-gradient-to-b from-neutral-50 to-transparent dark:from-neutral-800/50 dark:to-transparent opacity-0 group-hover:opacity-100 transition-opacity" />
                        <div className="relative h-11 w-11 rounded-xl bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                            <MessageSquare className="h-5 w-5 text-neutral-700 dark:text-neutral-300" />
                        </div>
                        <div className="relative text-center">
                            <h3 className="font-medium text-neutral-900 dark:text-neutral-100">Request a Song</h3>
                            <p className="text-xs text-neutral-500 dark:text-neutral-400 mt-1">Can&apos;t find a song? Tell us</p>
                        </div>
                    </Link>
                </div>
            </section>

            {genres.length > 0 && (
                <section className="space-y-6">
                    <div className="space-y-1.5">
                        <h2 className="text-xl font-semibold tracking-tight text-neutral-900 dark:text-neutral-100">Browse by Genre</h2>
                        <p className="text-sm text-neutral-500 dark:text-neutral-400">Filter songs by genre</p>
                    </div>
                    <div className="flex flex-wrap gap-2">
                        {genres.map((g) => (
                            <Link
                                key={g}
                                href={`/songs?genre=${encodeURIComponent(g)}`}
                                className="px-4 py-2 rounded-full border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 text-sm font-medium text-neutral-700 dark:text-neutral-300 hover:border-neutral-300 dark:hover:border-neutral-700 hover:bg-neutral-50 dark:hover:bg-neutral-800 hover:shadow-sm transition-all"
                            >
                                {g}
                            </Link>
                        ))}
                    </div>
                </section>
            )}

            <section className="space-y-6">
                <div className="space-y-1.5">
                    <h2 className="text-xl font-semibold tracking-tight text-neutral-900 dark:text-neutral-100">Browse by Difficulty</h2>
                    <p className="text-sm text-neutral-500 dark:text-neutral-400">Songs sorted by playing difficulty</p>
                </div>
                <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                    {DIFFICULTIES.map((d) => {
                        const Icon = difficultyIcons[d]
                        return (
                            <Link
                                key={d}
                                href={`/songs?difficulty=${encodeURIComponent(d)}`}
                                className="group flex items-center gap-4 p-5 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-md transition-all"
                            >
                                <div className="h-10 w-10 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                                    <Icon className="h-5 w-5 text-neutral-600 dark:text-neutral-400" />
                                </div>
                                <div className="flex-1 min-w-0">
                                    <span className="font-medium text-neutral-900 dark:text-neutral-100">{d}</span>
                                </div>
                                <ArrowRight className="h-4 w-4 text-neutral-400 group-hover:text-neutral-900 dark:group-hover:text-neutral-100 group-hover:translate-x-0.5 transition-all shrink-0" />
                            </Link>
                        )
                    })}
                </div>
            </section>

            {recentSongs.length > 0 && (
                <section className="space-y-6">
                    <div className="flex items-end justify-between gap-4">
                        <div className="space-y-1.5">
                            <h2 className="text-xl font-semibold tracking-tight text-neutral-900 dark:text-neutral-100">Recently Added</h2>
                            <p className="text-sm text-neutral-500 dark:text-neutral-400">Latest songs in our collection</p>
                        </div>
                        <Link href="/songs" className="hidden sm:inline-flex items-center gap-1 text-sm font-medium text-neutral-600 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors">
                            View all <ArrowRight className="h-3.5 w-3.5" />
                        </Link>
                    </div>
                    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
                        {recentSongs.map((song) => (
                            <Link
                                key={song.id}
                                href={`/songs/${song.slug}`}
                                className="group flex items-center gap-3 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-md transition-all"
                            >
                                {song.image ? (
                                    <Image src={song.image} width={44} height={44} alt="" className="rounded-lg object-cover shrink-0" />
                                ) : (
                                    <div className="h-11 w-11 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                                        <Music className="h-4 w-4 text-neutral-500 dark:text-neutral-400" />
                                    </div>
                                )}
                                <div className="min-w-0 flex-1">
                                    <p className="font-medium text-sm text-neutral-900 dark:text-neutral-100 truncate">{song.title}</p>
                                    <p className="text-xs text-neutral-500 dark:text-neutral-400 truncate">{song.artist?.name ?? 'Unknown Artist'}</p>
                                </div>
                                {song.difficulty && (
                                    <span className="hidden sm:inline-flex text-[10px] font-medium px-2 py-0.5 rounded-full bg-neutral-100 dark:bg-neutral-800 text-neutral-500 dark:text-neutral-400 shrink-0">
                                        {song.difficulty}
                                    </span>
                                )}
                            </Link>
                        ))}
                    </div>
                    <div className="text-center sm:hidden">
                        <Link href="/songs" className="inline-flex items-center gap-1 text-sm font-medium text-neutral-600 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors">
                            View all songs <ArrowRight className="h-3.5 w-3.5" />
                        </Link>
                    </div>
                </section>
            )}

            {featuredArtist && (
                <section className="space-y-6">
                    <div className="space-y-1.5">
                        <h2 className="text-xl font-semibold tracking-tight text-neutral-900 dark:text-neutral-100">Featured Artist</h2>
                        <p className="text-sm text-neutral-500 dark:text-neutral-400">Most songs in our collection</p>
                    </div>
                    <Link
                        href={`/artists/${featuredArtist.slug}`}
                        className="group relative flex flex-col sm:flex-row items-center sm:items-start gap-6 p-6 sm:p-8 rounded-2xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-md transition-all overflow-hidden"
                    >
                        <div className="absolute inset-0 bg-gradient-to-r from-neutral-50 to-transparent dark:from-neutral-800/30 dark:to-transparent opacity-0 group-hover:opacity-100 transition-opacity" />
                        {featuredArtist.image ? (
                            <Image
                                src={featuredArtist.image}
                                width={140}
                                height={140}
                                alt={featuredArtist.name}
                                className="relative rounded-2xl object-cover group-hover:scale-105 transition-transform shrink-0 shadow-sm"
                                priority
                            />
                        ) : (
                            <div className="relative h-[140px] w-[140px] rounded-2xl bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0">
                                <MicVocal className="h-10 w-10 text-neutral-400" />
                            </div>
                        )}
                        <div className="relative space-y-3 flex-1 text-center sm:text-left">
                            <h3 className="text-xl font-semibold text-neutral-900 dark:text-neutral-100">{featuredArtist.name}</h3>
                            {featuredArtist.bio && (
                                <p className="text-sm text-neutral-500 dark:text-neutral-400 line-clamp-3 leading-relaxed">{featuredArtist.bio}</p>
                            )}
                            <div className="flex items-center gap-3 justify-center sm:justify-start pt-1">
                                <span className="inline-flex items-center gap-1.5 text-xs font-medium px-3 py-1 rounded-full bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400">
                                    <Music className="h-3 w-3" />
                                    {featuredArtist.songCount} {featuredArtist.songCount === 1 ? 'song' : 'songs'}
                                </span>
                                <span className="inline-flex items-center gap-1 text-sm font-medium text-neutral-700 dark:text-neutral-300 group-hover:gap-1.5 transition-all">
                                    View artist <ArrowRight className="h-3.5 w-3.5" />
                                </span>
                            </div>
                        </div>
                    </Link>
                </section>
            )}
        </div>
    )
}
