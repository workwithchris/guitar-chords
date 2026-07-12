import React from 'react'
import { fetchSongById } from '@/store/api/song.api'
import { notFound } from 'next/navigation'
import SongForm from '../../add/components/form'

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
