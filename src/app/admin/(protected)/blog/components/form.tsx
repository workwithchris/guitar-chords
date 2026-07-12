"use client"
import React, { useState } from 'react'
import { useRouter } from 'next/navigation'
import { Button } from '@/components/ui/button/button'
import { Input } from '@/components/ui/form/input'
import { Label } from '@/components/ui/form/label'
import { Switch } from '@/components/ui/switch/switch'
import { Card, CardContent } from '@/components/ui/card'
import dynamic from 'next/dynamic'
import { addBlogPost, updateBlogPost } from '@/store/api/blog.api'
import { toast } from '@/components/ui/toast/use-toast'
import { titleToSlug } from '@/lib/title-to-slug'

const TextEditor = dynamic(() => import('@/components/ui/form/editor'), { ssr: false })

export default function BlogForm({ post }: { post?: any }) {
    const router = useRouter()
    const [loading, setLoading] = useState(false)
    const [title, setTitle] = useState(post?.title ?? '')
    const [slug, setSlug] = useState(post?.slug ?? '')
    const [excerpt, setExcerpt] = useState(post?.excerpt ?? '')
    const [content, setContent] = useState(post?.content ?? '')
    const [image, setImage] = useState(post?.image ?? '')
    const [published, setPublished] = useState(post?.published ?? false)
    const [autoSlug, setAutoSlug] = useState(!post)

    const handleTitleChange = (value: string) => {
        setTitle(value)
        if (autoSlug) setSlug(titleToSlug(value))
    }

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault()
        if (!title || !content) {
            toast({ title: 'Title and content are required' })
            return
        }
        setLoading(true)
        try {
            const formData = { title, slug, excerpt, content, image, published }
            if (post) {
                await updateBlogPost(post.id, formData)
                toast({ title: 'Post updated' })
            } else {
                await addBlogPost(formData)
                toast({ title: 'Post created' })
            }
            router.push('/admin/blog')
            router.refresh()
        } catch (err: any) {
            toast({ title: err.message || 'Failed to save post' })
        } finally {
            setLoading(false)
        }
    }

    return (
        <form onSubmit={handleSubmit} className="space-y-6 max-w-3xl">
            <Card>
                <CardContent className="p-6 space-y-5">
                    <div className="space-y-2">
                        <Label htmlFor="title">Title</Label>
                        <Input id="title" value={title} onChange={(e) => handleTitleChange(e.target.value)} placeholder="Post title" />
                    </div>
                    <div className="space-y-2">
                        <Label htmlFor="slug">Slug</Label>
                        <Input id="slug" value={slug} onChange={(e) => { setSlug(e.target.value); setAutoSlug(false) }} placeholder="post-slug" />
                    </div>
                    <div className="space-y-2">
                        <Label htmlFor="excerpt">Excerpt</Label>
                        <Input id="excerpt" value={excerpt} onChange={(e) => setExcerpt(e.target.value)} placeholder="Short description for listings" />
                    </div>
                    <div className="space-y-2">
                        <Label htmlFor="image">Image URL</Label>
                        <Input id="image" value={image} onChange={(e) => setImage(e.target.value)} placeholder="https://..." />
                    </div>
                    <div className="flex items-center gap-3">
                        <Switch checked={published} onCheckedChange={setPublished} id="published" />
                        <Label htmlFor="published">Published</Label>
                    </div>
                    <div className="space-y-2">
                        <Label>Content</Label>
                        <TextEditor editorValues={content} getEditorValues={setContent} />
                    </div>
                </CardContent>
            </Card>
            <div className="flex gap-3">
                <Button type="submit" disabled={loading}>
                    {loading ? 'Saving...' : post ? 'Update Post' : 'Create Post'}
                </Button>
                <Button type="button" variant="outline" onClick={() => router.back()}>
                    Cancel
                </Button>
            </div>
        </form>
    )
}
