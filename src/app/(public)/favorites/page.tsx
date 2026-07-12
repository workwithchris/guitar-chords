import React from 'react'
import type { Metadata } from 'next'
import FavoritesClient from './components/client'

export const metadata: Metadata = {
  title: 'My Songbook - Guitar Chords',
  description: 'Your saved favorite songs for guitar.',
}

export default function FavoritesPage() {
  return <FavoritesClient />
}
