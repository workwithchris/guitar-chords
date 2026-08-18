"use client"
import { Switch } from '@/components/ui/switch/switch'
import { Badge } from '@/components/ui/badge'
import { useSongStore } from '@/store/song.store'
import { useRouter, usePathname } from 'next/navigation'
import { Pencil, Trash2, Search, Music, CheckCheck, XCircle, ToggleLeft } from 'lucide-react'
import Image from 'next/image'
import { toast } from '@/components/ui/toast/use-toast'
import React, { useState, useCallback } from 'react'
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
import { bulkUpdateSongs, bulkDeleteSongs } from '@/store/api/song.api'

const difficultyColor: Record<string, "success" | "warning" | "destructive"> = {
    Beginner: 'success',
    Intermediate: 'warning',
    Advanced: 'destructive',
}

export default function SongsList({
    songs,
    totalCount,
    currentPage,
    totalPages,
    currentSearch,
    currentDifficulty,
}: {
    songs: any[]
    totalCount: number
    currentPage: number
    totalPages: number
    currentSearch?: string
    currentDifficulty?: string
}) {
    const { updateActiveToggle, delete: removeSong }: any = useSongStore()
    const router = useRouter()
    const pathname = usePathname()
    const [search, setSearch] = useState(currentSearch ?? '')
    const [deleteTarget, setDeleteTarget] = useState<{ id: number; title: string } | null>(null)
    const [deleting, setDeleting] = useState(false)
    const [selectedIds, setSelectedIds] = useState<Set<number>>(new Set())
    const [bulkLoading, setBulkLoading] = useState(false)

    function buildUrl(overrides: Record<string, string | null>) {
        const next = new URLSearchParams()
        if (overrides.q ?? search) next.set('q', overrides.q ?? search)
        if (overrides.difficulty ?? currentDifficulty) next.set('difficulty', overrides.difficulty ?? currentDifficulty!)
        if (overrides.page && overrides.page !== '1') next.set('page', overrides.page)
        const qs = next.toString()
        return qs ? `${pathname}?${qs}` : pathname
    }

    function navigate(overrides: Record<string, string | null>) {
        router.push(buildUrl(overrides), { scroll: false })
    }

    function handleSearchSubmit(e: React.FormEvent) {
        e.preventDefault()
        navigate({ q: search, page: '1' })
    }

    const allIds = songs.map((s: any) => s.id)
    const allSelected = songs.length > 0 && selectedIds.size === songs.length

    const toggleSelect = (id: number) => {
        setSelectedIds((prev) => {
            const next = new Set(prev)
            if (next.has(id)) next.delete(id)
            else next.add(id)
            return next
        })
    }

    const toggleSelectAll = () => {
        if (allSelected) setSelectedIds(new Set())
        else setSelectedIds(new Set(allIds))
    }

    const handleBulkDelete = async () => {
        if (!confirm(`Delete ${selectedIds.size} songs?`)) return
        setBulkLoading(true)
        try {
            await bulkDeleteSongs(Array.from(selectedIds))
            toast({ title: `${selectedIds.size} songs deleted` })
            setSelectedIds(new Set())
        } catch {
            toast({ title: 'Failed to delete songs' })
        } finally {
            setBulkLoading(false)
        }
    }

    const handleBulkActivate = async (active: boolean) => {
        setBulkLoading(true)
        try {
            await bulkUpdateSongs(Array.from(selectedIds), { isActive: active })
            toast({ title: `${selectedIds.size} songs ${active ? 'activated' : 'deactivated'}` })
            setSelectedIds(new Set())
        } catch {
            toast({ title: 'Bulk update failed' })
        } finally {
            setBulkLoading(false)
        }
    }

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

    const difficulties = ['Beginner', 'Intermediate', 'Advanced']

    return (
        <>
            <Card>
                <CardContent className="p-6">
                    <div className="flex flex-wrap items-center gap-4 mb-6">
                        <form onSubmit={handleSearchSubmit} className="relative flex-1 min-w-[200px] max-w-sm">
                            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-neutral-400" />
                            <Input
                                placeholder="Search songs or artists..."
                                value={search}
                                onChange={(e) => setSearch(e.target.value)}
                                className="pl-9"
                            />
                        </form>
                        <div className="flex gap-2">
                            {difficulties.map((d) => (
                                <Button
                                    key={d}
                                    variant={currentDifficulty === d ? 'default' : 'outline'}
                                    size="sm"
                                    onClick={() => navigate({ difficulty: currentDifficulty === d ? null : d, page: '1' })}
                                >
                                    {d}
                                </Button>
                            ))}
                        </div>
                        <p className="text-sm text-neutral-500 ml-auto">
                            {totalCount} song{totalCount !== 1 ? 's' : ''}
                            {totalPages > 1 && ` · Page ${currentPage} of ${totalPages}`}
                        </p>
                    </div>
                    {selectedIds.size > 0 && (
                        <div className="flex items-center gap-2 mb-4 p-3 rounded-lg bg-neutral-100 dark:bg-neutral-800">
                            <span className="text-sm font-medium text-neutral-700 dark:text-neutral-300 mr-2">
                                {selectedIds.size} selected
                            </span>
                            <Button variant="outline" size="sm" onClick={handleBulkDelete} disabled={bulkLoading}>
                                <Trash2 className="h-3.5 w-3.5 mr-1" />
                                Delete
                            </Button>
                            <Button variant="outline" size="sm" onClick={() => handleBulkActivate(true)} disabled={bulkLoading}>
                                <CheckCheck className="h-3.5 w-3.5 mr-1" />
                                Activate
                            </Button>
                            <Button variant="outline" size="sm" onClick={() => handleBulkActivate(false)} disabled={bulkLoading}>
                                <XCircle className="h-3.5 w-3.5 mr-1" />
                                Deactivate
                            </Button>
                        </div>
                    )}
                    <Table>
                        <TableHeader>
                            <TableRow>
                                <TableHead className="w-10">
                                    <input
                                        type="checkbox"
                                        checked={allSelected}
                                        onChange={toggleSelectAll}
                                        className="rounded border-neutral-300 dark:border-neutral-600"
                                    />
                                </TableHead>
                                <TableHead>Title</TableHead>
                                <TableHead>Artist</TableHead>
                                <TableHead>Key</TableHead>
                                <TableHead>Difficulty</TableHead>
                                <TableHead>Status</TableHead>
                                <TableHead className="text-right">Actions</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {songs.length === 0 ? (
                                <TableRow>
                                    <TableCell colSpan={7}>
                                        <div className="flex flex-col items-center justify-center py-12 text-center">
                                            <div className="flex h-12 w-12 items-center justify-center rounded-full bg-neutral-100 dark:bg-neutral-800 mb-4">
                                                <Music className="h-6 w-6 text-neutral-400" />
                                            </div>
                                            <p className="text-sm font-medium text-neutral-900 dark:text-neutral-50">
                                                {currentSearch || currentDifficulty ? 'No songs match your filters' : 'No songs yet'}
                                            </p>
                                            <p className="text-xs text-neutral-500 mt-1">
                                                {currentSearch || currentDifficulty
                                                    ? 'Try adjusting your search or filters'
                                                    : 'Add your first song to get started'}
                                            </p>
                                        </div>
                                    </TableCell>
                                </TableRow>
                            ) : (
                                songs.map((song: any) => (
                                    <TableRow key={song.id}>
                                        <TableCell className="w-10">
                                            <input
                                                type="checkbox"
                                                checked={selectedIds.has(song.id)}
                                                onChange={() => toggleSelect(song.id)}
                                                className="rounded border-neutral-300 dark:border-neutral-600"
                                            />
                                        </TableCell>
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
                                Showing {(currentPage - 1) * 50 + 1}–{Math.min(currentPage * 50, totalCount)} of {totalCount}
                            </p>
                            <div className="flex items-center gap-1">
                                <Button
                                    variant="outline"
                                    size="sm"
                                    onClick={() => navigate({ page: String(currentPage - 1) })}
                                    disabled={currentPage <= 1}
                                >
                                    Previous
                                </Button>
                                {(() => {
                                    const pages: number[] = []
                                    const start = Math.max(1, currentPage - 2)
                                    const end = Math.min(totalPages, start + 4)
                                    for (let p = start; p <= end; p++) pages.push(p)
                                    return pages.map(p => (
                                        <Button
                                            key={p}
                                            variant={p === currentPage ? 'default' : 'outline'}
                                            size="sm"
                                            onClick={() => navigate({ page: String(p) })}
                                            className="min-w-[32px]"
                                        >
                                            {p}
                                        </Button>
                                    ))
                                })()}
                                <Button
                                    variant="outline"
                                    size="sm"
                                    onClick={() => navigate({ page: String(currentPage + 1) })}
                                    disabled={currentPage >= totalPages}
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
