"use client"
import { Switch } from '@/components/ui/switch/switch'
import { Badge } from '@/components/ui/badge'
import { useSongStore } from '@/store/song.store'
import { useRouter } from 'next/navigation'
import { Pencil, Trash2, Search, Music } from 'lucide-react'
import Image from 'next/image'
import { toast } from '@/components/ui/toast/use-toast'
import React, { useMemo, useState } from 'react'
import { Button } from '@/components/ui/button/button'
import { Input } from '@/components/ui/form/input'
import { ConfirmDialog } from '@/components/ui/confirm-dialog'
import { Skeleton } from '@/components/ui/skeleton'
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from '@/components/ui/table'
import { Card, CardContent } from '@/components/ui/card'

const difficultyColor: Record<string, "success" | "warning" | "destructive"> = {
    Beginner: 'success',
    Intermediate: 'warning',
    Advanced: 'destructive',
}

export default function SongsList({ songs }: { songs: any[] }) {
    const { songs: data, setSongs, updateActiveToggle, delete: removeSong }: any = useSongStore()
    const router = useRouter()
    const [search, setSearch] = useState('')
    const [difficultyFilter, setDifficultyFilter] = useState<string | null>(null)
    const [deleteTarget, setDeleteTarget] = useState<{ id: number; title: string } | null>(null)
    const [deleting, setDeleting] = useState(false)
    const [loading, setLoading] = useState(true)
    const [page, setPage] = useState(1)
    const pageSize = 50

    React.useEffect(() => {
        if (songs) {
            setSongs(songs)
            setLoading(false)
        }
    }, [songs, setSongs])

    const handleDelete = async () => {
        if (!deleteTarget) return
        setDeleting(true)
        try {
            await removeSong(deleteTarget.id)
            toast({ title: 'Song deleted' })
            setDeleteTarget(null)
        } catch {
            toast({ title: 'Failed to delete song' })
        } finally {
            setDeleting(false)
        }
    }

    const filtered = useMemo(() => {
        return (data ?? songs).filter((song: any) => {
            const matchesSearch = song.title?.toLowerCase().includes(search.toLowerCase()) ||
                song.artist?.name?.toLowerCase().includes(search.toLowerCase())
            const matchesDifficulty = !difficultyFilter || song.difficulty === difficultyFilter
            return matchesSearch && matchesDifficulty
        })
    }, [data, songs, search, difficultyFilter])

    const totalPages = Math.ceil(filtered.length / pageSize)
    const paginated = filtered.slice((page - 1) * pageSize, page * pageSize)

    React.useEffect(() => { setPage(1) }, [search, difficultyFilter])

    const difficulties = ['Beginner', 'Intermediate', 'Advanced']

    if (loading) {
        return (
            <Card>
                <CardContent className="p-6 space-y-4">
                    {[1, 2, 3].map((i) => (
                        <div key={i} className="flex items-center gap-4">
                            <Skeleton className="h-10 flex-1" />
                            <Skeleton className="h-10 w-20" />
                            <Skeleton className="h-10 w-16" />
                            <Skeleton className="h-10 w-20" />
                            <Skeleton className="h-10 w-10" />
                        </div>
                    ))}
                </CardContent>
            </Card>
        )
    }

    return (
        <>
            <Card>
                <CardContent className="p-6">
                    <div className="flex flex-wrap items-center gap-4 mb-6">
                        <div className="relative flex-1 min-w-[200px] max-w-sm">
                            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-neutral-400" />
                            <Input
                                placeholder="Search songs or artists..."
                                value={search}
                                onChange={(e) => setSearch(e.target.value)}
                                className="pl-9"
                            />
                        </div>
                        <div className="flex gap-2">
                            {difficulties.map((d) => (
                                <Button
                                    key={d}
                                    variant={difficultyFilter === d ? 'default' : 'outline'}
                                    size="sm"
                                    onClick={() => setDifficultyFilter(difficultyFilter === d ? null : d)}
                                >
                                    {d}
                                </Button>
                            ))}
                        </div>
                        <p className="text-sm text-neutral-500 ml-auto">
                            {filtered.length} song{filtered.length !== 1 ? 's' : ''}
                            {totalPages > 1 && ` · Page ${page} of ${totalPages}`}
                        </p>
                    </div>
                    <Table>
                        <TableHeader>
                            <TableRow>
                                <TableHead>Title</TableHead>
                                <TableHead>Artist</TableHead>
                                <TableHead>Key</TableHead>
                                <TableHead>Difficulty</TableHead>
                                <TableHead>Status</TableHead>
                                <TableHead className="text-right">Actions</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {filtered.length === 0 ? (
                                <TableRow>
                                    <TableCell colSpan={6}>
                                        <div className="flex flex-col items-center justify-center py-12 text-center">
                                            <div className="flex h-12 w-12 items-center justify-center rounded-full bg-neutral-100 dark:bg-neutral-800 mb-4">
                                                <Music className="h-6 w-6 text-neutral-400" />
                                            </div>
                                            <p className="text-sm font-medium text-neutral-900 dark:text-neutral-50">
                                                {search || difficultyFilter ? 'No songs match your filters' : 'No songs yet'}
                                            </p>
                                            <p className="text-xs text-neutral-500 mt-1">
                                                {search || difficultyFilter
                                                    ? 'Try adjusting your search or filters'
                                                    : 'Add your first song to get started'}
                                            </p>
                                        </div>
                                    </TableCell>
                                </TableRow>
                            ) : (
                                paginated.map((song: any) => (
                                    <TableRow key={song.id}>
                                        <TableCell>
                                            <div className="flex items-center gap-3">
                                                {song.image ? (
                                                    <Image src={song.image} width={36} height={36} alt="" className="rounded-lg object-cover shrink-0" />
                                                ) : (
                                                    <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-neutral-100 dark:bg-neutral-800">
                                                        <Music className="h-4 w-4 text-neutral-500" />
                                                    </div>
                                                )}
                                                <p className="font-medium">{song.title}</p>
                                            </div>
                                        </TableCell>
                                        <TableCell className="text-neutral-500">
                                            {song.artist?.name ?? <span className="text-neutral-400">&mdash;</span>}
                                        </TableCell>
                                        <TableCell>
                                            {song.key ? (
                                                <Badge variant="outline" className="font-mono">{song.key}</Badge>
                                            ) : (
                                                <span className="text-neutral-400">&mdash;</span>
                                            )}
                                        </TableCell>
                                        <TableCell>
                                            {song.difficulty ? (
                                                <Badge variant={difficultyColor[song.difficulty] ?? 'secondary'}>
                                                    {song.difficulty}
                                                </Badge>
                                            ) : (
                                                <span className="text-neutral-400">&mdash;</span>
                                            )}
                                        </TableCell>
                                        <TableCell>
                                            <Switch
                                                checked={song.isActive ?? true}
                                                onCheckedChange={() => updateActiveToggle(song.id, !(song.isActive ?? true))}
                                            />
                                        </TableCell>
                                        <TableCell className="text-right">
                                            <div className="flex justify-end gap-1">
                                                <Button
                                                    variant="ghost"
                                                    size="icon"
                                                    onClick={() => router.push(`/admin/songs/${song.id}/edit`)}
                                                >
                                                    <Pencil className="h-4 w-4" />
                                                </Button>
                                                <Button
                                                    variant="ghost"
                                                    size="icon"
                                                    onClick={() => setDeleteTarget({ id: song.id, title: song.title })}
                                                    className="text-red-500 hover:text-red-600 hover:bg-red-50 dark:hover:bg-red-950"
                                                >
                                                    <Trash2 className="h-4 w-4" />
                                                </Button>
                                            </div>
                                        </TableCell>
                                    </TableRow>
                                ))
                            )}
                        </TableBody>
                    </Table>
                    {totalPages > 1 && (
                        <div className="flex items-center justify-between pt-4 border-t border-neutral-200 dark:border-neutral-800 mt-4">
                            <p className="text-xs text-neutral-500">
                                Showing {(page - 1) * pageSize + 1}–{Math.min(page * pageSize, filtered.length)} of {filtered.length}
                            </p>
                            <div className="flex items-center gap-1">
                                <Button
                                    variant="outline"
                                    size="sm"
                                    onClick={() => setPage(p => Math.max(1, p - 1))}
                                    disabled={page === 1}
                                >
                                    Previous
                                </Button>
                                {(() => {
                                    const pages: number[] = []
                                    const start = Math.max(1, page - 2)
                                    const end = Math.min(totalPages, start + 4)
                                    for (let p = start; p <= end; p++) pages.push(p)
                                    return pages.map(p => (
                                        <Button
                                            key={p}
                                            variant={p === page ? 'default' : 'outline'}
                                            size="sm"
                                            onClick={() => setPage(p)}
                                            className="min-w-[32px]"
                                        >
                                            {p}
                                        </Button>
                                    ))
                                })()}
                                <Button
                                    variant="outline"
                                    size="sm"
                                    onClick={() => setPage(p => Math.min(totalPages, p + 1))}
                                    disabled={page === totalPages}
                                >
                                    Next
                                </Button>
                            </div>
                        </div>
                    )}
                </CardContent>
            </Card>

            <ConfirmDialog
                open={!!deleteTarget}
                onOpenChange={(open) => !open && setDeleteTarget(null)}
                title="Delete Song"
                description={`Are you sure you want to delete "${deleteTarget?.title}"? This cannot be undone.`}
                confirmLabel="Delete"
                variant="danger"
                onConfirm={handleDelete}
                loading={deleting}
            />
        </>
    )
}
