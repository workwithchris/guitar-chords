"use client"
import Link from 'next/link'
import { Switch } from '@/components/ui/switch/switch'
import { useRouter } from 'next/navigation'
import { Pencil, Trash2, FileText, Plus } from 'lucide-react'
import { toast } from '@/components/ui/toast/use-toast'
import React, { useState } from 'react'
import { Button } from '@/components/ui/button/button'
import { ConfirmDialog } from '@/components/ui/confirm-dialog'
import {
    Table,
    TableBody,
    TableCell,
    TableHead,
    TableHeader,
    TableRow,
} from '@/components/ui/table'
import { Card, CardContent } from '@/components/ui/card'
import { updateBlogPost, deleteBlogPost } from '@/store/api/blog.api'

export default function BlogList({ posts }: { posts: any[] }) {
    const router = useRouter()
    const [data, setData] = useState(posts)
    const [deleteTarget, setDeleteTarget] = useState<{ id: number; title: string } | null>(null)
    const [deleting, setDeleting] = useState(false)

    const handleToggle = async (id: number, published: boolean) => {
        try {
            await updateBlogPost(id, { published })
            setData((prev) => prev.map((p) => (p.id === id ? { ...p, published } : p)))
            toast({ title: published ? 'Post published' : 'Post unpublished' })
        } catch {
            toast({ title: 'Failed to update post' })
        }
    }

    const handleDelete = async () => {
        if (!deleteTarget) return
        setDeleting(true)
        try {
            await deleteBlogPost(deleteTarget.id)
            setData((prev) => prev.filter((p) => p.id !== deleteTarget.id))
            toast({ title: 'Post deleted' })
            setDeleteTarget(null)
        } catch {
            toast({ title: 'Failed to delete post' })
        } finally {
            setDeleting(false)
        }
    }

    return (
        <>
            <Card>
                <CardContent className="p-6">
                    {data.length === 0 ? (
                        <div className="flex flex-col items-center py-12 text-center">
                            <FileText className="h-10 w-10 text-muted-foreground mb-3" />
                            <p className="text-sm font-medium text-muted-foreground">No blog posts yet</p>
                            <Link href="/admin/blog/add" className="mt-4">
                                <Button className="gap-2">
                                    <Plus className="h-4 w-4" />
                                    Create your first post
                                </Button>
                            </Link>
                        </div>
                    ) : (
                        <Table>
                            <TableHeader>
                                <TableRow>
                                    <TableHead>Title</TableHead>
                                    <TableHead>Status</TableHead>
                                    <TableHead>Date</TableHead>
                                    <TableHead className="text-right">Actions</TableHead>
                                </TableRow>
                            </TableHeader>
                            <TableBody>
                                {data.map((post) => (
                                    <TableRow key={post.id}>
                                        <TableCell>
                                            <div className="flex items-center gap-3">
                                                <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-secondary">
                                                    <FileText className="h-4 w-4 text-muted-foreground" />
                                                </div>
                                                <p className="font-medium">{post.title}</p>
                                            </div>
                                        </TableCell>
                                        <TableCell>
                                            <Switch
                                                checked={post.published ?? false}
                                                onCheckedChange={(checked) => handleToggle(post.id, checked)}
                                            />
                                        </TableCell>
                                        <TableCell className="text-sm text-muted-foreground">
                                            {post.createdAt
                                                ? new Date(post.createdAt).toLocaleDateString('en-US', {
                                                    year: 'numeric', month: 'short', day: 'numeric'
                                                  })
                                                : '—'}
                                        </TableCell>
                                        <TableCell className="text-right">
                                            <div className="flex justify-end gap-1">
                                                <Button variant="ghost" size="icon" onClick={() => router.push(`/admin/blog/${post.id}/edit`)}>
                                                    <Pencil className="h-4 w-4" />
                                                </Button>
                                                <Button
                                                    variant="ghost"
                                                    size="icon"
                                                    onClick={() => setDeleteTarget({ id: post.id, title: post.title })}
                                                    className="text-red-500 hover:text-red-600 hover:bg-red-50 dark:hover:bg-red-950"
                                                >
                                                    <Trash2 className="h-4 w-4" />
                                                </Button>
                                            </div>
                                        </TableCell>
                                    </TableRow>
                                ))}
                            </TableBody>
                        </Table>
                    )}
                </CardContent>
            </Card>

            <ConfirmDialog
                open={!!deleteTarget}
                onOpenChange={(open) => !open && setDeleteTarget(null)}
                title="Delete Post"
                description={`Are you sure you want to delete "${deleteTarget?.title}"? This cannot be undone.`}
                confirmLabel="Delete"
                variant="danger"
                onConfirm={handleDelete}
                loading={deleting}
            />
        </>
    )
}
