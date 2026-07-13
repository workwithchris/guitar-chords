import React from 'react'

export function SongJsonLd({
  title,
  slug,
  artistName,
  artistSlug,
  key: songKey,
  genre,
  year,
  image,
  datePublished,
}: {
  title: string
  slug: string
  artistName: string
  artistSlug: string
  key?: string | null
  genre?: string | null
  year?: number | null
  image?: string | null
  datePublished?: string
}) {
  const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'
  const json = {
    '@context': 'https://schema.org',
    '@type': 'MusicComposition',
    name: title,
    url: `${baseUrl}/songs/${slug}`,
    datePublished: datePublished ?? undefined,
    inGenre: genre ?? undefined,
    musicalKey: songKey ?? undefined,
    recordingOf: {
      '@type': 'MusicRecording',
      name: title,
      byArtist: {
        '@type': 'MusicGroup',
        name: artistName,
        url: `${baseUrl}/artists/${artistSlug}`,
      },
    },
    image: image ?? undefined,
  }
  return <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(json) }} />
}

export function ArtistJsonLd({
  name,
  slug,
  bio,
  image,
}: {
  name: string
  slug: string
  bio?: string | null
  image?: string | null
}) {
  const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'
  const json = {
    '@context': 'https://schema.org',
    '@type': 'MusicGroup',
    name,
    url: `${baseUrl}/artists/${slug}`,
    description: bio ?? undefined,
    image: image ?? undefined,
  }
  return <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(json) }} />
}

export function WebSiteJsonLd() {
  const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'
  const json = {
    '@context': 'https://schema.org',
    '@type': 'WebSite',
    name: 'Guitar Chords',
    url: baseUrl,
    potentialAction: {
      '@type': 'SearchAction',
      target: {
        '@type': 'EntryPoint',
        urlTemplate: `${baseUrl}/search?query={search_term_string}`,
      },
      'query-input': 'required name=search_term_string',
    },
  }
  return <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(json) }} />
}

export function BreadcrumbJsonLd({ items }: { items: { label: string; url: string }[] }) {
  const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'
  const json = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: items.map((item, i) => ({
      '@type': 'ListItem',
      position: i + 1,
      name: item.label,
      item: item.url.startsWith('http') ? item.url : `${baseUrl}${item.url}`,
    })),
  }
  return <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(json) }} />
}

export function ArticleJsonLd({
  title,
  slug,
  description,
  image,
  datePublished,
  dateModified,
  authorName,
}: {
  title: string
  slug: string
  description?: string | null
  image?: string | null
  datePublished?: string
  dateModified?: string
  authorName?: string | null
}) {
  const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'
  const json = {
    '@context': 'https://schema.org',
    '@type': 'Article',
    headline: title,
    url: `${baseUrl}/blog/${slug}`,
    description: description ?? undefined,
    image: image ?? undefined,
    datePublished: datePublished ?? undefined,
    dateModified: dateModified ?? datePublished ?? undefined,
    author: authorName ? { '@type': 'Person', name: authorName } : undefined,
  }
  return <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(json) }} />
}

export function OrganizationJsonLd() {
  const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'
  const json = {
    '@context': 'https://schema.org',
    '@type': 'Organization',
    name: 'Guitar Chords',
    url: baseUrl,
    description: 'Free guitar chords and lyrics for your favorite songs. Browse by artist or song, transpose on the fly.',
    sameAs: [
      'https://techyatraa.com',
    ],
  }
  return <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(json) }} />
}
