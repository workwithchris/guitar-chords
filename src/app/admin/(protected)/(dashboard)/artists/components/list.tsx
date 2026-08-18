"use client"
import React, { useEffect, useState } from 'react'
import { useArtistStore } from '@/store/artist.store'
import { Pencil, Trash2, Search, Users, CheckCheck, XCircle } from 'lucide-react'
import { Switch } from '@/components/ui/switch/switch'
import { Button } from '@/components/ui/button/button'
import { Input } from '@/components/ui/form/input'
import { toast } from '@/components/ui/toast/use-toast'
import { ConfirmDialog } from '@/components/ui/confirm-dialog'
import { useRouter, usePathname } from 'next/navigation'
import { bulkUpdateArtists, bulkDeleteArtists } from '@/store/api/artist.api'
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from '@/components/ui/table'
import { Card, CardContent } from '@/components/ui/card'

export default function ArtistsList({
    artists,
    totalCount,
    currentPage,
    totalPages,
    currentSearch,
}: {
    artists: any[]
    totalCount: number
    currentPage: number
    totalPages: number
    currentSearch?: string
}) {
    const { updateActiveToogle, setSelectedArtist, handleShow, delete: removeArtist }: any = useArtistStore()
    const router = useRouter()
    const pathname = usePathname()
    const [search, setSearch] = useState(currentSearch ?? '')
    const [deleteTarget, setDeleteTarget] = useState<{ id: number; name: string } | null>(null)
    const [deleting, setDeleting] = useState(false)
    const [selectedIds, setSelectedIds] = useState<Set<number>>(new Set())
    const [bulkLoading, setBulkLoading] = useState(false)

    const allIds = artists.map((a: any) => a.id)
    const allSelected = artists.length > 0 && selectedIds.size === artists.length

    function buildUrl(overrides: Record<string, string | null>) {
        const next = new URLSearchParams()
        if (overrides.q ?? search) next.set('q', overrides.q ?? search)
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
        if (!confirm(`Delete ${selectedIds.size} artists?`)) return
        setBulkLoading(true)
        try {
            await bulkDeleteArtists(Array.from(selectedIds))
            toast({ title: `${selectedIds.size} artists deleted` })
            setSelectedIds(new Set())
        } catch {
            toast({ title: 'Failed to delete artists' })
        } finally {
            setBulkLoading(false)
        }
    }

    const handleBulkActivate = async (active: boolean) => {
        setBulkLoading(true)
        try {
            await bulkUpdateArtists(Array.from(selectedIds), { isActive: active })
            toast({ title: `${selectedIds.size} artists ${active ? 'activated' : 'deactivated'}` })
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
            await removeArtist(deleteTarget.id)
            toast({ title: 'Artist deleted' })
            setDeleteTarget(null)
        } catch {
            toast({ title: 'Failed to delete artist' })
        } finally {
            setDeleting(false)
        }
    }

    return (
        <>
            <Card>
                <CardContent className="p-6">
                    <div className="flex items-center gap-4 mb-6">
                        <form onSubmit={handleSearchSubmit} className="relative flex-1 max-w-sm">
                            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-neutral-400" />
                            <Input
                                placeholder="Search artists..."
                                value={search}
                                onChange={(e) => setSearch(e.target.value)}
                                className="pl-9"
                            />
                        </form>
                        <p className="text-sm text-neutral-500">
                            {totalCount} artist{totalCount !== 1 ? 's' : ''}
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
                                <TableHead>Name</TableHead>
                                <TableHead>Slug</TableHead>
                                <TableHead>Status</TableHead>
                                <TableHead className="text-right">Actions</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {artists.length === 0 ? (
                                <TableRow>
                                    <TableCell colSpan={5}>
                                        <div className="flex flex-col items-center justify-center py-12 text-center">
                                            <div className="flex h-12 w-12 items-center justify-center rounded-full bg-neutral-100 dark:bg-neutral-800 mb-4">
                                                <Users className="h-6 w-6 text-neutral-400" />
                                            </div>
                                            <p className="text-sm font-medium text-neutral-900 dark:text-neutral-50">
                                                {currentSearch ? 'No artists match your search' : 'No artists yet'}
                                            </p>
                                            <p className="text-xs text-neutral-500 mt-1">
                                                {currentSearch ? 'Try a different search term' : 'Add your first artist to get started'}
                                            </p>
                                        </div>
                                    </TableCell>
                                </TableRow>
                            ) : (
                                artists.map((artist: any) => (
                                    <TableRow key={artist.id}>
                                        <TableCell className="w-10">
                                            <input
                                                type="checkbox"
                                                checked={selectedIds.has(artist.id)}
                                                onChange={() => toggleSelect(artist.id)}
                                                className="rounded border-neutral-300 dark:border-neutral-600"
                                            />
                                        </TableCell>
                                        <TableCell>
                                            <div className="flex items-center gap-3">
                                                <div className="flex h-9 w-9 items-center justify-center rounded-full bg-neutral-100 dark:bg-neutral-800 text-sm font-medium text-neutral-600 dark:text-neutral-400">
                                                    {artist.name?.charAt(0)?.toUpperCase()}
                                                </div>
                                                <div>
                                                    <p className="font-medium">{artist.name}</p>
                                                    {artist.bio && (
                                                        <p className="text-xs text-neutral-500 line-clamp-1 max-w-[250px]">{artist.bio}</p>
                                                    )}
                                                </div>
                                            </div>
                                        </TableCell>
                                        <TableCell className="text-neutral-500 font-mono text-xs">{artist.slug}</TableCell>
                                        <TableCell>
                                            <Switch
                                                checked={artist.isActive ?? true}
                                                onCheckedChange={() => updateActiveToogle(artist.id, !artist.isActive)}
                                            />
                                        </TableCell>
                                        <TableCell className="text-right">
                                            <div className="flex justify-end gap-1">
                                                <Button
                                                    variant="ghost"
                                                    size="icon"
                                                    onClick={() => { setSelectedArtist(artist); handleShow() }}
                                                >
                                                    <Pencil className="h-4 w-4" />
                                                </Button>
                                                <Button
                                                    variant="ghost"
                                                    size="icon"
                                                    onClick={() => setDeleteTarget({ id: artist.id, name: artist.name })}
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
                title="Delete Artist"
                description={`Are you sure you want to delete "${deleteTarget?.name}" and all their songs? This cannot be undone.`}
                confirmLabel="Delete"
                variant="danger"
                onConfirm={handleDelete}
                loading={deleting}
            />
        </>
    )
}
