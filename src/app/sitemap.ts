import type { MetadataRoute } from 'next'
import { fetchActiveSongs } from '@/store/api/song.api'
import { fetchActiveArtistsWithSongCount } from '@/store/api/artist.api'

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
    const [songs, artists] = await Promise.all([
        fetchActiveSongs(),
        fetchActiveArtistsWithSongCount(),
    ])

    const staticPages = [
        { url: baseUrl, lastModified: new Date(), changeFrequency: 'weekly' as const, priority: 1 },
        { url: `${baseUrl}/songs`, lastModified: new Date(), changeFrequency: 'daily' as const, priority: 0.9 },
        { url: `${baseUrl}/artists`, lastModified: new Date(), changeFrequency: 'daily' as const, priority: 0.9 },
        { url: `${baseUrl}/about-us`, lastModified: new Date(), changeFrequency: 'monthly' as const, priority: 0.5 },
        { url: `${baseUrl}/contact-us`, lastModified: new Date(), changeFrequency: 'monthly' as const, priority: 0.4 },
        { url: `${baseUrl}/request`, lastModified: new Date(), changeFrequency: 'monthly' as const, priority: 0.4 },
    ]

    const songPages = (songs ?? []).map((song: any) => ({
        url: `${baseUrl}/songs/${song.slug}`,
        lastModified: new Date(),
        changeFrequency: 'weekly' as const,
        priority: 0.8,
    }))

    const artistPages = (artists ?? []).map((artist: any) => ({
        url: `${baseUrl}/artists/${artist.slug}`,
        lastModified: new Date(),
        changeFrequency: 'weekly' as const,
        priority: 0.7,
    }))

    return [...staticPages, ...songPages, ...artistPages]
}
