"use client"

import Link from 'next/link'
import Image from 'next/image'
import { ArrowRight, Music, MicVocal, MessageSquare, Search, BarChart3, Sparkles, GraduationCap, TrendingUp, BookOpen } from 'lucide-react'

const DIFFICULTIES = ['Beginner', 'Intermediate', 'Advanced']
const COMMON_KEYS = ['C', 'G', 'D', 'A', 'E', 'Am', 'Em', 'Dm', 'F', 'Bm']

const difficultyIcons: Record<string, typeof GraduationCap> = {
    Beginner: GraduationCap,
    Intermediate: BarChart3,
    Advanced: Sparkles,
}

function isNew(dateStr: string): boolean {
    return Date.now() - new Date(dateStr).getTime() < 7 * 24 * 60 * 60 * 1000
}

export default function HomeClient({
    stats,
    recentSongs,
    genres,
    featuredArtist,
    trendingSongs,
    keyCounts,
}: {
    stats: { totalSongs: number; totalArtists: number; totalGenres: number; beginnerCount: number }
    recentSongs: any[]
    genres: string[]
    featuredArtist: any | null
    trendingSongs: any[]
    keyCounts: { key: string; count: number }[]
}) {
    const popularKeys = keyCounts.length > 0
        ? keyCounts.slice(0, 10).map(k => k.key)
        : COMMON_KEYS

    return (
        <div className="space-y-20 pb-16">
            <section className="relative pt-8 md:pt-20 pb-12 md:pb-16 text-center space-y-8 overflow-hidden">
                <div className="absolute inset-0 -z-10">
                    <div className="absolute inset-0 bg-[radial-gradient(ellipse_at_top,_var(--tw-gradient-stops))] from-accent/15 via-transparent to-transparent" />
                </div>
                <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full border border-border bg-card/80 text-xs font-medium text-muted-foreground backdrop-blur-sm">
                    <Music className="h-3 w-3" />
                    Free guitar chords & lyrics
                </div>
                <h1 className="text-4xl sm:text-5xl md:text-6xl font-bold tracking-tight text-foreground max-w-3xl mx-auto leading-[1.1]">
                    Find chords for your{' '}
                    <span className="bg-gradient-to-r from-accent via-accent/80 to-accent/60 bg-clip-text text-transparent">
                        favorite songs
                    </span>
                </h1>
                <p className="text-muted-foreground max-w-xl mx-auto text-base md:text-lg leading-relaxed">
                    Explore our collection of guitar chords and lyrics. Transpose on the fly, follow auto-scroll, and hover any chord for a diagram.
                </p>
                <div className="flex items-center justify-center gap-3 pt-2">
                    <Link
                        href="/songs"
                        className="inline-flex items-center gap-2 px-6 py-2.5 rounded-lg bg-foreground text-background text-sm font-medium hover:bg-foreground/90 transition-colors shadow-sm"
                    >
                        Browse Songs
                        <ArrowRight className="h-4 w-4" />
                    </Link>
                    <Link
                        href="/artists"
                        className="inline-flex items-center gap-2 px-6 py-2.5 rounded-lg border border-border bg-card text-foreground text-sm font-medium hover:bg-secondary hover:text-foreground hover:border-border transition-colors"
                    >
                        <MicVocal className="h-4 w-4" />
                        View Artists
                    </Link>
                </div>
                <Link
                    href="/search"
                    className="inline-flex items-center gap-3 mx-auto max-w-md w-full px-4 py-3 rounded-xl border border-border bg-card text-sm text-muted-foreground hover:border-border hover:text-foreground transition-colors shadow-sm"
                >
                    <Search className="h-4 w-4 shrink-0" />
                    <span>Search songs or artists...</span>
                    <kbd className="ml-auto hidden sm:inline-flex items-center gap-1 px-1.5 py-0.5 rounded border border-border bg-secondary text-[10px] font-medium text-muted-foreground">
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
                        <div key={stat.label} className="flex items-center gap-3 p-4 rounded-xl border border-border bg-card">
                            <div className="h-9 w-9 rounded-lg bg-secondary flex items-center justify-center shrink-0">
                                <Icon className="h-4 w-4 text-muted-foreground" />
                            </div>
                            <div>
                                <p className="text-lg font-semibold text-foreground">{stat.value}</p>
                                <p className="text-[11px] text-muted-foreground">{stat.label}</p>
                            </div>
                        </div>
                    )
                })}
            </div>

            <section className="space-y-6">
                <div className="space-y-1.5">
                    <h2 className="text-xl font-semibold tracking-tight text-foreground">
                        Quick Links
                    </h2>
                    <p className="text-sm text-muted-foreground">Everything you need to start playing</p>
                </div>
                <div className="grid grid-cols-1 sm:grid-cols-4 gap-4">
                    <Link href="/songs" className="group relative flex flex-col items-center gap-3 p-7 rounded-xl border border-border bg-card hover:border-border hover:shadow-lift transition-all overflow-hidden">
                        <div className="absolute inset-0 bg-gradient-to-b from-secondary to-transparent opacity-0 group-hover:opacity-100 transition-opacity" />
                        <div className="relative h-11 w-11 rounded-xl bg-secondary flex items-center justify-center group-hover:bg-muted transition-colors">
                            <Music className="h-5 w-5 text-foreground" />
                        </div>
                        <div className="relative text-center">
                            <h3 className="font-medium text-foreground">All Songs</h3>
                            <p className="text-xs text-muted-foreground mt-1">Browse complete song catalog</p>
                        </div>
                    </Link>
                    <Link href="/artists" className="group relative flex flex-col items-center gap-3 p-7 rounded-xl border border-border bg-card hover:border-border hover:shadow-lift transition-all overflow-hidden">
                        <div className="absolute inset-0 bg-gradient-to-b from-secondary to-transparent opacity-0 group-hover:opacity-100 transition-opacity" />
                        <div className="relative h-11 w-11 rounded-xl bg-secondary flex items-center justify-center group-hover:bg-muted transition-colors">
                            <MicVocal className="h-5 w-5 text-foreground" />
                        </div>
                        <div className="relative text-center">
                            <h3 className="font-medium text-foreground">All Artists</h3>
                            <p className="text-xs text-muted-foreground mt-1">Browse by artist name</p>
                        </div>
                    </Link>
                    <Link href="/chords" className="group relative flex flex-col items-center gap-3 p-7 rounded-xl border border-border bg-card hover:border-border hover:shadow-lift transition-all overflow-hidden">
                        <div className="absolute inset-0 bg-gradient-to-b from-secondary to-transparent opacity-0 group-hover:opacity-100 transition-opacity" />
                        <div className="relative h-11 w-11 rounded-xl bg-secondary flex items-center justify-center group-hover:bg-muted transition-colors">
                            <BookOpen className="h-5 w-5 text-foreground" />
                        </div>
                        <div className="relative text-center">
                            <h3 className="font-medium text-foreground">Chord Library</h3>
                            <p className="text-xs text-muted-foreground mt-1">Learn chord shapes & fingerings</p>
                        </div>
                    </Link>
                    <Link href="/request" className="group relative flex flex-col items-center gap-3 p-7 rounded-xl border border-border bg-card hover:border-border hover:shadow-lift transition-all overflow-hidden">
                        <div className="absolute inset-0 bg-gradient-to-b from-secondary to-transparent opacity-0 group-hover:opacity-100 transition-opacity" />
                        <div className="relative h-11 w-11 rounded-xl bg-secondary flex items-center justify-center group-hover:bg-muted transition-colors">
                            <MessageSquare className="h-5 w-5 text-foreground" />
                        </div>
                        <div className="relative text-center">
                            <h3 className="font-medium text-foreground">Request a Song</h3>
                            <p className="text-xs text-muted-foreground mt-1">Can&apos;t find a song? Tell us</p>
                        </div>
                    </Link>
                </div>
            </section>

            {genres.length > 0 && (
                <section className="space-y-6">
                    <div className="space-y-1.5">
                        <h2 className="text-xl font-semibold tracking-tight text-foreground">Browse by Genre</h2>
                        <p className="text-sm text-muted-foreground">Filter songs by genre</p>
                    </div>
                    <div className="flex flex-wrap gap-2">
                        {genres.map((g) => (
                            <Link
                                key={g}
                                href={`/songs?genre=${encodeURIComponent(g)}`}
                                className="px-4 py-2 rounded-full border border-border bg-card text-sm font-medium text-foreground hover:border-border hover:bg-accent hover:text-accent-foreground hover:shadow-sm transition-all"
                            >
                                {g}
                            </Link>
                        ))}
                    </div>
                </section>
            )}

            <section className="space-y-6">
                <div className="space-y-1.5">
                    <h2 className="text-xl font-semibold tracking-tight text-foreground">Browse by Key</h2>
                    <p className="text-sm text-muted-foreground">Find songs in a specific key</p>
                </div>
                <div className="flex flex-wrap gap-2">
                    {popularKeys.map((k) => (
                        <Link
                            key={k}
                            href={`/songs?key=${encodeURIComponent(k)}`}
                            className="px-4 py-2 rounded-full border border-border bg-card text-sm font-mono font-medium text-foreground hover:border-border hover:bg-accent hover:text-accent-foreground hover:shadow-sm transition-all"
                        >
                            {k}
                        </Link>
                    ))}
                    <Link
                        href="/songs"
                        className="px-4 py-2 rounded-full text-sm font-medium text-muted-foreground hover:text-foreground transition-colors"
                    >
                        View all keys
                    </Link>
                </div>
            </section>

            {trendingSongs.length > 0 && (
                <section className="space-y-6">
                    <div className="flex items-end justify-between gap-4">
                        <div className="space-y-1.5">
                            <h2 className="text-xl font-semibold tracking-tight text-foreground">
                                <TrendingUp className="h-5 w-5 inline mr-1.5 text-accent" />
                                Trending Now
                            </h2>
                            <p className="text-sm text-muted-foreground">Most viewed songs this week</p>
                        </div>
                        <Link href="/songs" className="hidden sm:inline-flex items-center gap-1 text-sm font-medium text-muted-foreground hover:text-foreground transition-colors">
                            View all <ArrowRight className="h-3.5 w-3.5" />
                        </Link>
                    </div>
                    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
                        {trendingSongs.map((song: any) => (
                            <Link
                                key={song.id}
                                href={`/songs/${song.slug}`}
                                className="group flex items-center gap-3 p-4 rounded-xl border border-border bg-card hover:border-border hover:shadow-lift transition-all"
                            >
                                {song.image ? (
                                    <Image src={song.image} width={44} height={44} alt="" className="rounded-lg object-cover shrink-0" />
                                ) : (
                                    <div className="h-11 w-11 rounded-lg bg-secondary flex items-center justify-center shrink-0 group-hover:bg-muted transition-colors">
                                        <Music className="h-4 w-4 text-muted-foreground" />
                                    </div>
                                )}
                                <div className="min-w-0 flex-1">
                                    <p className="font-medium text-sm text-foreground truncate">{song.title}</p>
                                    <p className="text-xs text-muted-foreground truncate">{song.artist?.name ?? 'Unknown Artist'}</p>
                                </div>
                                {song.difficulty && (
                                    <span className="hidden sm:inline-flex text-[10px] font-medium px-2 py-0.5 rounded-full bg-secondary text-muted-foreground shrink-0">
                                        {song.difficulty}
                                    </span>
                                )}
                            </Link>
                        ))}
                    </div>
                </section>
            )}

            <section className="space-y-6">
                <div className="space-y-1.5">
                    <h2 className="text-xl font-semibold tracking-tight text-foreground">Browse by Difficulty</h2>
                    <p className="text-sm text-muted-foreground">Songs sorted by playing difficulty</p>
                </div>
                <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                    {DIFFICULTIES.map((d) => {
                        const Icon = difficultyIcons[d]
                        return (
                            <Link
                                key={d}
                                href={`/songs?difficulty=${encodeURIComponent(d)}`}
                                className="group flex items-center gap-4 p-5 rounded-xl border border-border bg-card hover:border-border hover:shadow-lift transition-all"
                            >
                                <div className="h-10 w-10 rounded-lg bg-secondary flex items-center justify-center shrink-0 group-hover:bg-muted transition-colors">
                                    <Icon className="h-5 w-5 text-muted-foreground" />
                                </div>
                                <div className="flex-1 min-w-0">
                                    <span className="font-medium text-foreground">{d}</span>
                                </div>
                                <ArrowRight className="h-4 w-4 text-muted-foreground group-hover:text-foreground group-hover:translate-x-0.5 transition-all shrink-0" />
                            </Link>
                        )
                    })}
                </div>
            </section>

            {recentSongs.length > 0 && (
                <section className="space-y-6">
                    <div className="flex items-end justify-between gap-4">
                        <div className="space-y-1.5">
                            <h2 className="text-xl font-semibold tracking-tight text-foreground">Recently Added</h2>
                            <p className="text-sm text-muted-foreground">Latest songs in our collection</p>
                        </div>
                        <Link href="/songs" className="hidden sm:inline-flex items-center gap-1 text-sm font-medium text-muted-foreground hover:text-foreground transition-colors">
                            View all <ArrowRight className="h-3.5 w-3.5" />
                        </Link>
                    </div>
                    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
                        {recentSongs.map((song) => (
                            <Link
                                key={song.id}
                                href={`/songs/${song.slug}`}
                                className="group flex items-center gap-3 p-4 rounded-xl border border-border bg-card hover:border-border hover:shadow-lift transition-all"
                            >
                                {song.image ? (
                                    <Image src={song.image} width={44} height={44} alt="" className="rounded-lg object-cover shrink-0" />
                                ) : (
                                    <div className="h-11 w-11 rounded-lg bg-secondary flex items-center justify-center shrink-0 group-hover:bg-muted transition-colors">
                                        <Music className="h-4 w-4 text-muted-foreground" />
                                    </div>
                                )}
                                <div className="min-w-0 flex-1">
                                    <p className="font-medium text-sm text-foreground truncate">{song.title}</p>
                                    <p className="text-xs text-muted-foreground truncate">{song.artist?.name ?? 'Unknown Artist'}</p>
                                </div>
                                <div className="flex items-center gap-2 shrink-0">
                                    {isNew(song.createdAt) && (
                                        <span className="text-[10px] font-semibold px-1.5 py-0.5 rounded-md bg-emerald-500/10 text-emerald-600 dark:text-emerald-400">
                                            New
                                        </span>
                                    )}
                                    {song.difficulty && (
                                        <span className="hidden sm:inline-flex text-[10px] font-medium px-2 py-0.5 rounded-full bg-secondary text-muted-foreground shrink-0">
                                            {song.difficulty}
                                        </span>
                                    )}
                                </div>
                            </Link>
                        ))}
                    </div>
                    <div className="text-center sm:hidden">
                        <Link href="/songs" className="inline-flex items-center gap-1 text-sm font-medium text-muted-foreground hover:text-foreground transition-colors">
                            View all songs <ArrowRight className="h-3.5 w-3.5" />
                        </Link>
                    </div>
                </section>
            )}

            {featuredArtist && (
                <section className="space-y-6">
                    <div className="space-y-1.5">
                        <h2 className="text-xl font-semibold tracking-tight text-foreground">Featured Artist</h2>
                        <p className="text-sm text-muted-foreground">Most songs in our collection</p>
                    </div>
                    <Link
                        href={`/artists/${featuredArtist.slug}`}
                        className="group relative flex flex-col sm:flex-row items-center sm:items-start gap-6 p-6 sm:p-8 rounded-2xl border border-border bg-card hover:border-border hover:shadow-lift transition-all overflow-hidden"
                    >
                        <div className="absolute inset-0 bg-gradient-to-r from-secondary to-transparent opacity-0 group-hover:opacity-100 transition-opacity" />
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
                            <div className="relative h-[140px] w-[140px] rounded-2xl bg-secondary flex items-center justify-center shrink-0">
                                <MicVocal className="h-10 w-10 text-muted-foreground" />
                            </div>
                        )}
                        <div className="relative space-y-3 flex-1 text-center sm:text-left">
                            <h3 className="text-xl font-semibold text-foreground">{featuredArtist.name}</h3>
                            {featuredArtist.bio && (
                                <p className="text-sm text-muted-foreground line-clamp-3 leading-relaxed">{featuredArtist.bio}</p>
                            )}
                            <div className="flex items-center gap-3 justify-center sm:justify-start pt-1">
                                <span className="inline-flex items-center gap-1.5 text-xs font-medium px-3 py-1 rounded-full bg-secondary text-muted-foreground">
                                    <Music className="h-3 w-3" />
                                    {featuredArtist.songCount} {featuredArtist.songCount === 1 ? 'song' : 'songs'}
                                </span>
                                <span className="inline-flex items-center gap-1 text-sm font-medium text-foreground group-hover:gap-1.5 transition-all">
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
