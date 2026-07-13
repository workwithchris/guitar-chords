import React from 'react'
import SongLists from './components/song.list'
import { fetchActiveArtistsWithSongCountServer as fetchActiveArtists, fetchArtistBySlugServer as fetchArtistBySlug } from '@/store/api/song.server'
import Image from 'next/image'
import Link from 'next/link'
import { ArrowLeft, Music } from 'lucide-react'
import type { Metadata } from 'next'

export const revalidate = 60

export async function generateStaticParams() {
    const artists = await fetchActiveArtists()
    return artists.map((artist: any) => ({ slug: artist.slug }))
}

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
    const { slug } = await params
    try {
        const artist = await fetchArtistBySlug(slug)
        const title = `${artist?.name} - Guitar Chords Artist`
        const description = artist?.bio || `Guitar chords and lyrics for songs by ${artist?.name}.`
        return {
            title,
            description,
            openGraph: {
                title,
                description,
                type: 'profile',
                url: `https://guitarchords.techyatraa.com/artists/${slug}`,
                siteName: 'Guitar Chords',
                images: artist?.image ? [{ url: artist.image, width: 800, height: 800 }] : [],
            },
            twitter: {
                card: 'summary_large_image',
                title,
                description,
                images: artist?.image ? [artist.image] : [],
            },
        }
    } catch {
        return { title: 'Artist - Guitar Chords' }
    }
}

export default async function ArtistDetail({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params
    const data = await fetchArtistBySlug(slug)

    return (
        <div className="space-y-8">
            <Link
                href="/artists"
                className="inline-flex items-center gap-1.5 text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
            >
                <ArrowLeft className="h-3.5 w-3.5" />
                Back to artists
            </Link>

            <div className="grid grid-cols-1 md:grid-cols-[200px_1fr] gap-10 md:gap-14">
                <div className="flex justify-center md:justify-start">
                    {data?.image ? (
                        <Image
                            src={data.image}
                            width={200}
                            height={200}
                            alt={data.name}
                            className="rounded-2xl object-cover shadow-lg ring-1 ring-neutral-200/50 dark:ring-neutral-800/50"
                        />
                    ) : (
                        <div className="h-[200px] w-[200px] rounded-2xl bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center">
                            <Music className="h-12 w-12 text-neutral-300 dark:text-neutral-600" />
                        </div>
                    )}
                </div>
                <div className="flex flex-col justify-center space-y-3">
                    <h1 className="text-3xl md:text-4xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100 leading-tight">
                        {data?.name}
                    </h1>
                    {data?.bio && (
                        <p className="text-sm text-neutral-600 dark:text-neutral-400 leading-relaxed">
                            {data.bio}
                        </p>
                    )}
                </div>
            </div>

            <div className="border-t border-neutral-200 dark:border-neutral-800" />

            <div>
                <h2 className="text-sm font-semibold text-neutral-500 dark:text-neutral-400 uppercase tracking-wider mb-4">
                    Songs
                </h2>
                <SongLists slug={slug} />
            </div>
        </div>
    )
}
