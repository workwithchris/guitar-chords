import React from 'react'
import type { Metadata } from 'next'
import FavoritesClient from './components/client'

// TODO: Cache Components adoption. Refactor this route so this opt-out can be removed.
// See: https://nextjs.org/docs/app/guides/migrating-to-cache-components
export const instant = false;

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export const metadata: Metadata = {
  title: 'My Songbook',
  description: 'Your saved favorite songs for guitar. Access your personal songbook with saved chords and lyrics.',
  openGraph: {
    title: 'My Songbook - Guitar Chords',
    description: 'Your saved favorite songs for guitar.',
    url: '/favorites',
  },
  alternates: { canonical: `${baseUrl}/favorites` },
}

export default function FavoritesPage() {
  return <FavoritesClient />
}
