import React from 'react'
import { fetchActiveSongsServer as fetchActiveSongs, fetchSongBySlugServer as fetchSongBySlug } from '@/store/api/song.server'
import SongDetail from './components/detail'
import type { Metadata } from 'next'

export const revalidate = 60

export async function generateStaticParams() {
    const songs = await fetchActiveSongs()
    return songs.map((song: any) => ({ slug: song.slug }))
}

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
    const { slug } = await params
    try {
        const data = await fetchSongBySlug(slug)
        const title = `${data?.song?.title} by ${data?.artist?.name} - Guitar Chords`
        const description = `Guitar chords and lyrics for ${data?.song?.title} by ${data?.artist?.name}. Key: ${data?.song?.key || 'N/A'}, Difficulty: ${data?.song?.difficulty || 'N/A'}.`
        return {
            title,
            description,
            openGraph: {
                title,
                description,
                type: 'music.song',
                url: `https://guitarchords.techyatraa.com/songs/${slug}`,
                siteName: 'Guitar Chords',
                images: data?.artist?.image ? [{ url: data.artist.image, width: 800, height: 800 }] : [],
            },
            twitter: {
                card: 'summary_large_image',
                title,
                description,
                images: data?.artist?.image ? [data.artist.image] : [],
            },
        }
    } catch {
        return { title: 'Song - Guitar Chords' }
    }
}

export default async function SongsDetailPage({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params
    const data = await fetchSongBySlug(slug)
    return <SongDetail data={data} />
}
