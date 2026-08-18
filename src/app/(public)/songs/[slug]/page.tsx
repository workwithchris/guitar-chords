import React from 'react'
import { fetchActiveSongsServer as fetchActiveSongs, fetchSongBySlugServer as fetchSongBySlug } from '@/store/api/song.server'
import SongDetail from './components/detail'
import Breadcrumbs from '@/components/ui/breadcrumbs'
import { SongJsonLd, BreadcrumbJsonLd } from '@/components/ui/json-ld'
import type { Metadata } from 'next'

export const revalidate = 60

export async function generateStaticParams() {
    const songs = await fetchActiveSongs()
    return songs.map((song: any) => ({ slug: song.slug }))
}

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
    const { slug } = await params
    try {
        const data = await fetchSongBySlug(slug)
        const title = `${data?.song?.title} by ${data?.artist?.name}`
        const description = `Guitar chords and lyrics for ${data?.song?.title} by ${data?.artist?.name}. Key: ${data?.song?.key || 'N/A'}, Difficulty: ${data?.song?.difficulty || 'N/A'}.`
        const fullTitle = `${data?.song?.title} by ${data?.artist?.name} - Guitar Chords`
        return {
            title,
            description,
            openGraph: {
                title: fullTitle,
                description,
                type: 'music.song',
                url: `https://guitarchords.techyatraa.com/songs/${slug}`,
                images: data?.artist?.image ? [{ url: data.artist.image, width: 800, height: 800 }] : [],
            },
            twitter: {
                card: 'summary_large_image',
                title: fullTitle,
                description,
                images: data?.artist?.image ? [data.artist.image] : [],
            },
            alternates: { canonical: `${baseUrl}/songs/${slug}` },
        }
    } catch {
        return { title: 'Song' }
    }
}

export default async function SongsDetailPage({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params
    const data = await fetchSongBySlug(slug)
    return (
        <>
            <SongJsonLd
                title={data?.song?.title}
                slug={slug}
                artistName={data?.artist?.name}
                artistSlug={data?.artist?.slug}
                key={data?.song?.key}
                genre={data?.song?.genre}
                year={data?.song?.year}
                image={data?.song?.image ?? data?.artist?.image}
                datePublished={data?.song?.createdAt}
            />
            <BreadcrumbJsonLd items={[
                { label: 'Songs', url: '/songs' },
                { label: data?.song?.title ?? '', url: `/songs/${slug}` },
            ]} />
            <Breadcrumbs items={[
                { label: 'Songs', href: '/songs' },
                { label: data?.song?.title ?? '' },
            ]} />
            <SongDetail data={data} />
        </>
    )
}
