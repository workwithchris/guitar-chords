import React from 'react'
import BlogList from './components/list'
import { fetchBlogPosts } from '@/store/api/blog.server'
import { Plus } from 'lucide-react'
import Link from 'next/link'
import { Button } from '@/components/ui/button/button'

export const revalidate = 0

export default async function AdminBlogPage() {
    const posts: any[] = await fetchBlogPosts()
    return (
        <div className="space-y-6">
            <div className="flex items-center justify-between">
                <div>
                    <h1 className="text-2xl font-bold tracking-tight">Blog Posts</h1>
                    <p className="mt-1 text-sm text-muted-foreground">
                        Manage blog and lessons
                    </p>
                </div>
                <Link href="/admin/blog/add">
                    <Button className="gap-2">
                        <Plus className="h-4 w-4" />
                        New Post
                    </Button>
                </Link>
            </div>
            <BlogList posts={posts} />
        </div>
    )
}
