import React from 'react'
import { fetchSongBySlug } from '@/store/api/song.api'
import SongDetail from './components/detail'
import type { Metadata } from 'next'

export const revalidate = 0

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
    const { slug } = await params
    try {
        const data = await fetchSongBySlug(slug)
        return {
            title: `${data?.song?.title} - Guitar Chords`,
            description: `Guitar chords and lyrics for ${data?.song?.title} by ${data?.artist?.name}. Learn to play with our easy-to-follow chord diagrams.`,
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
