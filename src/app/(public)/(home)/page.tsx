import React from 'react'
import { fetchActiveSongs } from '@/store/api/song.api'
import HomeClient from './components/home-client'

export const revalidate = 0

export default async function HomePage() {
    const songs: any[] = await fetchActiveSongs()
    return <HomeClient songs={songs} />
}
