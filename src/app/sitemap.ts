import type { MetadataRoute } from 'next'
import { createClient } from '@supabase/supabase-js'

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

function getServerClient() {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL
  const anonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
  if (!url || !anonKey) return null
  return createClient(url, anonKey, { auth: { persistSession: false } })
}

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const now = new Date()

  const staticPages: MetadataRoute.Sitemap = [
    { url: baseUrl, lastModified: now, changeFrequency: 'weekly', priority: 1 },
    { url: `${baseUrl}/songs`, lastModified: now, changeFrequency: 'daily', priority: 0.9 },
    { url: `${baseUrl}/artists`, lastModified: now, changeFrequency: 'daily', priority: 0.9 },
    { url: `${baseUrl}/chords`, lastModified: now, changeFrequency: 'monthly', priority: 0.6 },
    { url: `${baseUrl}/favorites`, lastModified: now, changeFrequency: 'monthly', priority: 0.4 },
    { url: `${baseUrl}/blog`, lastModified: now, changeFrequency: 'weekly', priority: 0.5 },
    { url: `${baseUrl}/about-us`, lastModified: now, changeFrequency: 'monthly', priority: 0.5 },
    { url: `${baseUrl}/contact-us`, lastModified: now, changeFrequency: 'monthly', priority: 0.4 },
    { url: `${baseUrl}/search`, lastModified: now, changeFrequency: 'weekly', priority: 0.6 },
    { url: `${baseUrl}/request`, lastModified: now, changeFrequency: 'monthly', priority: 0.4 },
  ]

  const supabase = getServerClient()
  if (!supabase) return staticPages

  try {
    const [songs, artists, blogPosts] = await Promise.all([
      supabase.from('song').select('slug,updatedAt').eq('isActive', true),
      supabase.from('artist').select('slug,updatedAt').eq('isActive', true),
      supabase.from('blog_post').select('slug,updatedAt').eq('published', true),
    ])

    const songPages: MetadataRoute.Sitemap = (songs.data ?? []).map((s) => ({
      url: `${baseUrl}/songs/${s.slug}`,
      lastModified: (s.updatedAt as string) ? new Date(s.updatedAt as string) : now,
      changeFrequency: 'weekly',
      priority: 0.8,
    }))

    const artistPages: MetadataRoute.Sitemap = (artists.data ?? []).map((a) => ({
      url: `${baseUrl}/artists/${a.slug}`,
      lastModified: (a.updatedAt as string) ? new Date(a.updatedAt as string) : now,
      changeFrequency: 'weekly',
      priority: 0.7,
    }))

    const blogPages: MetadataRoute.Sitemap = (blogPosts.data ?? []).map((p) => ({
      url: `${baseUrl}/blog/${p.slug}`,
      lastModified: (p.updatedAt as string) ? new Date(p.updatedAt as string) : now,
      changeFrequency: 'monthly',
      priority: 0.5,
    }))

    return [...staticPages, ...songPages, ...artistPages, ...blogPages]
  } catch {
    return staticPages
  }
}