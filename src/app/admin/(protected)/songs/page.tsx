import React from 'react'
import SongsList from './components/list'
import { searchSongsAdmin } from '@/store/api/song.server'
import { Plus, Upload } from 'lucide-react'
import Link from 'next/link'
import { Button } from '@/components/ui/button/button'

export const revalidate = 0

export default async function SongsPage({ searchParams }: { searchParams: Promise<{ [key: string]: string | undefined }> }) {
    const sp = await searchParams
    const page = parseInt(sp.page ?? '1', 10)
    const search = sp.q || undefined
    const difficulty = sp.difficulty || undefined

    const result = await searchSongsAdmin({ search, difficulty, page }).catch(() => ({
        songs: [], totalCount: 0, page: 1, totalPages: 1,
    }))

    return (
        <div className="space-y-6">
            <div className="flex items-center justify-between">
                <div>
                    <h1 className="text-2xl font-bold tracking-tight">Songs</h1>
                    <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
                        Manage your songs collection
                    </p>
                </div>
                <div className="flex gap-2">
                    <Link href="/admin/songs/bulk">
                        <Button variant="outline" className="gap-2">
                            <Upload className="h-4 w-4" />
                            Bulk Import
                        </Button>
                    </Link>
                    <Link href="/admin/songs/add">
                        <Button className="gap-2">
                            <Plus className="h-4 w-4" />
                            Add Song
                        </Button>
                    </Link>
                </div>
            </div>
            <SongsList
                songs={result.songs}
                totalCount={result.totalCount}
                currentPage={result.page}
                totalPages={result.totalPages}
                currentSearch={search}
                currentDifficulty={difficulty}
            />
        </div>
    )
}
