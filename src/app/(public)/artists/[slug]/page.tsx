import React from 'react'
import SongLists from './components/song.list'
import { fetchArtistBySlug } from '@/store/api/artist.api'
import Image from 'next/image'
import Link from 'next/link'
import { ArrowLeft, Music } from 'lucide-react'
import type { Metadata } from 'next'

export const revalidate = 0

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
    const { slug } = await params
    try {
        const data = await fetchArtistBySlug(slug)
        return {
            title: `${data?.name} - Guitar Chords`,
            description: `Guitar chords and lyrics for songs by ${data?.name}. Browse the complete collection.`,
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

            <div className="flex flex-col md:flex-row gap-8 items-start">
                <div className="shrink-0">
                    {data?.image ? (
                        <Image
                            src={data.image}
                            width={200}
                            height={200}
                            alt={data.name}
                            className="rounded-2xl object-cover shadow-sm"
                        />
                    ) : (
                        <div className="h-[200px] w-[200px] rounded-2xl bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center">
                            <Music className="h-12 w-12 text-neutral-300 dark:text-neutral-600" />
                        </div>
                    )}
                </div>
                <div className="space-y-3 flex-1">
                    <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
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
                <h2 className="text-xl font-semibold tracking-tight text-neutral-900 dark:text-neutral-100 mb-6">
                    Songs
                </h2>
                <SongLists slug={slug} />
            </div>
        </div>
    )
}
