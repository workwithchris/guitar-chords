"use client"
import React, { useEffect, useState } from 'react'
import { useArtistStore } from '@/store/artist.store'
import { Pencil, Trash2, Search, Users } from 'lucide-react'
import { Switch } from '@/components/ui/switch/switch'
import { Button } from '@/components/ui/button/button'
import { Input } from '@/components/ui/form/input'
import { toast } from '@/components/ui/toast/use-toast'
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

export default function ArtistsList({ artists }: { artists: any[] }) {
    const { artists: data, setArtists, updateActiveToogle, setSelectedArtist, handleShow, delete: removeArtist }: any = useArtistStore()
    const [search, setSearch] = useState('')
    const [deleteTarget, setDeleteTarget] = useState<{ id: number; name: string } | null>(null)
    const [deleting, setDeleting] = useState(false)
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        if (artists) {
            setArtists(artists)
            setLoading(false)
        }
    }, [artists, setArtists])

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

    const filtered = (data ?? artists).filter((a: any) =>
        a.name?.toLowerCase().includes(search.toLowerCase())
    )

    if (loading) {
        return (
            <Card>
                <CardContent className="p-6 space-y-4">
                    {[1, 2, 3].map((i) => (
                        <div key={i} className="flex items-center gap-4">
                            <Skeleton className="h-10 flex-1" />
                            <Skeleton className="h-10 w-20" />
                            <Skeleton className="h-10 w-10" />
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
                    <div className="flex items-center gap-4 mb-6">
                        <div className="relative flex-1 max-w-sm">
                            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-neutral-400" />
                            <Input
                                placeholder="Search artists..."
                                value={search}
                                onChange={(e) => setSearch(e.target.value)}
                                className="pl-9"
                            />
                        </div>
                        <p className="text-sm text-neutral-500">{filtered.length} artist{filtered.length !== 1 ? 's' : ''}</p>
                    </div>
                    <Table>
                        <TableHeader>
                            <TableRow>
                                <TableHead>Name</TableHead>
                                <TableHead>Slug</TableHead>
                                <TableHead>Status</TableHead>
                                <TableHead className="text-right">Actions</TableHead>
                            </TableRow>
                        </TableHeader>
                        <TableBody>
                            {filtered.length === 0 ? (
                                <TableRow>
                                    <TableCell colSpan={4}>
                                        <div className="flex flex-col items-center justify-center py-12 text-center">
                                            <div className="flex h-12 w-12 items-center justify-center rounded-full bg-neutral-100 dark:bg-neutral-800 mb-4">
                                                <Users className="h-6 w-6 text-neutral-400" />
                                            </div>
                                            <p className="text-sm font-medium text-neutral-900 dark:text-neutral-50">
                                                {search ? 'No artists match your search' : 'No artists yet'}
                                            </p>
                                            <p className="text-xs text-neutral-500 mt-1">
                                                {search ? 'Try a different search term' : 'Add your first artist to get started'}
                                            </p>
                                        </div>
                                    </TableCell>
                                </TableRow>
                            ) : (
                                filtered.map((artist: any) => (
                                    <TableRow key={artist.id}>
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
