import React from 'react'
import ArtistsList from './components/list';
import { fetchArtists } from '@/store/api/artist.api';
import AddArtist from './components/add.drawer';

export const revalidate = 0;

export default async function ArtistsPage() {
    const data: any[] = await fetchArtists();
    return (
        <div className="space-y-6">
            <div className="flex items-center justify-between">
                <div>
                    <h1 className="text-2xl font-bold tracking-tight">Artists</h1>
                    <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
                        Manage your artists collection
                    </p>
                </div>
                <AddArtist />
            </div>
            <ArtistsList artists={data ?? []} />
        </div>
    )
}
