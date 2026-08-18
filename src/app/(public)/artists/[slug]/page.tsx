import React from 'react'
import SongLists from './components/song.list'
import { fetchActiveArtistsWithSongCountServer as fetchActiveArtists, fetchArtistBySlugServer as fetchArtistBySlug, fetchSongsByArtistSlugServer as fetchSongsByArtistSlug } from '@/store/api/song.server'
import Image from 'next/image'
import Link from 'next/link'
import { ArrowLeft, Music, BarChart3, MicVocal } from 'lucide-react'
import Breadcrumbs from '@/components/ui/breadcrumbs'
import { ArtistJsonLd, BreadcrumbJsonLd } from '@/components/ui/json-ld'
import type { Metadata } from 'next'

export const revalidate = 60

export async function generateStaticParams() {
    const artists = await fetchActiveArtists()
    return artists.map((artist: any) => ({ slug: artist.slug }))
}

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
    const { slug } = await params
    try {
        const artist = await fetchArtistBySlug(slug)
        const title = `${artist?.name}`
        const description = artist?.bio || `Guitar chords and lyrics for songs by ${artist?.name}.`
        const fullTitle = `${artist?.name} - Guitar Chords Artist`
        return {
            title,
            description,
            openGraph: {
                title: fullTitle,
                description,
                type: 'profile',
                url: `https://guitarchords.techyatraa.com/artists/${slug}`,
                images: artist?.image ? [{ url: artist.image, width: 800, height: 800 }] : [],
            },
            twitter: {
                card: 'summary_large_image',
                title: fullTitle,
                description,
                images: artist?.image ? [artist.image] : [],
            },
            alternates: { canonical: `${baseUrl}/artists/${slug}` },
        }
    } catch {
        return { title: 'Artist' }
    }
}

export default async function ArtistDetail({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params
    const data = await fetchArtistBySlug(slug)
    const songs = await fetchSongsByArtistSlug(slug).catch(() => [])
    const activeSongs = songs.filter((s: any) => s.isActive)

    const genres = [...new Set(activeSongs.map((s: any) => s.genre).filter(Boolean))] as string[]
    const keys = [...new Set(activeSongs.map((s: any) => s.key).filter(Boolean))] as string[]
    const difficulties = [...new Set(activeSongs.map((s: any) => s.difficulty).filter(Boolean))] as string[]

    return (
        <>
            <ArtistJsonLd name={data?.name} slug={slug} bio={data?.bio} image={data?.image} />
            <BreadcrumbJsonLd items={[
                { label: 'Artists', url: '/artists' },
                { label: data?.name ?? '', url: `/artists/${slug}` },
            ]} />
            <Breadcrumbs items={[
                { label: 'Artists', href: '/artists' },
                { label: data?.name ?? '' },
            ]} />

            <div className="space-y-8">
                <div className="grid grid-cols-1 md:grid-cols-[200px_1fr] gap-10 md:gap-14">
                    <div className="flex justify-center md:justify-start">
                        {data?.image ? (
                            <Image
                                src={data.image}
                                width={200}
                                height={200}
                                alt={data.name}
                                className="rounded-2xl object-cover shadow-lg ring-1 ring-border/50"
                            />
                        ) : (
                            <div className="h-[200px] w-[200px] rounded-2xl bg-secondary flex items-center justify-center">
                                <Music className="h-12 w-12 text-muted-foreground" />
                            </div>
                        )}
                    </div>
                    <div className="flex flex-col justify-center space-y-3">
                        <h1 className="text-3xl md:text-4xl font-bold tracking-tight text-foreground leading-tight">
                            {data?.name}
                        </h1>
                        {data?.bio && (
                            <p className="text-sm text-muted-foreground leading-relaxed">
                                {data.bio}
                            </p>
                        )}
                        <div className="flex flex-wrap items-center gap-3 pt-1">
                            <span className="inline-flex items-center gap-1.5 text-xs font-medium px-3 py-1 rounded-full bg-secondary text-muted-foreground">
                                <Music className="h-3 w-3" />
                                {activeSongs.length} {activeSongs.length === 1 ? 'song' : 'songs'}
                            </span>
                            {genres.length > 0 && (
                                <span className="inline-flex items-center gap-1.5 text-xs font-medium px-3 py-1 rounded-full bg-secondary text-muted-foreground">
                                    <BarChart3 className="h-3 w-3" />
                                    {genres.length} {genres.length === 1 ? 'genre' : 'genres'}
                                </span>
                            )}
                            {keys.length > 0 && (
                                <span className="inline-flex items-center gap-1.5 text-xs font-medium px-3 py-1 rounded-full bg-secondary text-muted-foreground">
                                    <MicVocal className="h-3 w-3" />
                                    {keys.slice(0, 3).join(', ')}{keys.length > 3 ? '…' : ''}
                                </span>
                            )}
                        </div>
                    </div>
                </div>

                {genres.length > 0 && (
                    <div className="flex flex-wrap items-center gap-2">
                        <span className="text-xs font-medium text-muted-foreground mr-1">Genres</span>
                        {genres.map((g) => (
                            <Link
                                key={g}
                                href={`/songs?genre=${encodeURIComponent(g)}`}
                                className="px-3 py-1 rounded-lg text-xs font-medium bg-secondary text-muted-foreground hover:bg-muted dark:hover:bg-muted transition-colors"
                            >
                                {g}
                            </Link>
                        ))}
                    </div>
                )}

                {difficulties.length > 0 && (
                    <div className="flex flex-wrap items-center gap-2">
                        <span className="text-xs font-medium text-muted-foreground mr-1">Difficulty</span>
                        {difficulties.map((d) => (
                            <Link
                                key={d}
                                href={`/songs?difficulty=${encodeURIComponent(d)}`}
                                className="px-3 py-1 rounded-lg text-xs font-medium bg-secondary text-muted-foreground hover:bg-muted dark:hover:bg-muted transition-colors"
                            >
                                {d}
                            </Link>
                        ))}
                    </div>
                )}

                <div className="border-t border-border" />

                <div>
                    <h2 className="text-sm font-semibold text-muted-foreground uppercase tracking-wider mb-4">
                        Songs
                    </h2>
                    <SongLists slug={slug} />
                </div>
            </div>
        </>
    )
}
