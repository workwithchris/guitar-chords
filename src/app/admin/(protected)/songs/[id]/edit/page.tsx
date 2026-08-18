import React from 'react'
import { fetchSongById } from '@/store/api/song.api'
import { notFound } from 'next/navigation'
import SongForm from '../../add/components/form'

// TODO: Cache Components adoption. Refactor this route so this opt-out can be removed.
// See: https://nextjs.org/docs/app/guides/migrating-to-cache-components
export const instant = false;

export default async function EditSongPage({ params }: { params: Promise<{ id: string }> }) {
    const { id } = await params
    const songId = parseInt(id)
    let song: any = null
    try {
        song = await fetchSongById(songId)
    } catch {
        notFound()
    }

    if (!song) {
        notFound()
    }

    return <SongForm initialData={song} />
}
