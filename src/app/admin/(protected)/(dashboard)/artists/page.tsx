import React from 'react'
import ArtistsList from './components/list';
import { searchArtistsAdmin } from '@/store/api/song.server';
import AddArtist from './components/add.drawer';

export const revalidate = 0;

export default async function ArtistsPage({ searchParams }: { searchParams: Promise<{ [key: string]: string | undefined }> }) {
    const sp = await searchParams
    const page = parseInt(sp.page ?? '1', 10)
    const search = sp.q || undefined

    const result = await searchArtistsAdmin({ search, page }).catch((): { data: any[]; totalCount: number; page: number; totalPages: number } => ({
        data: [], totalCount: 0, page: 1, totalPages: 1,
    }))

    return (
        <div className="space-y-6">
            <div className="flex items-center justify-between">
                <div>
                    <h1 className="text-2xl font-bold tracking-tight">Artists</h1>
                    <p className="mt-1 text-sm text-muted-foreground">
                        Manage your artists collection
                    </p>
                </div>
                <AddArtist />
            </div>
            <ArtistsList
                artists={result.data}
                totalCount={result.totalCount}
                currentPage={result.page}
                totalPages={result.totalPages}
                currentSearch={search}
            />
        </div>
    )
}
