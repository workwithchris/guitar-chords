import React from 'react'
import BlogForm from '../../components/form'
import { fetchBlogPostById } from '@/store/api/blog.api'
import { notFound } from 'next/navigation'

export const revalidate = 0

export default async function EditBlogPostPage({ params }: { params: Promise<{ id: string }> }) {
    const { id } = await params
    const postId = parseInt(id)
    let post: any = null
    try {
        post = await fetchBlogPostById(postId)
    } catch {
        notFound()
    }

    if (!post) notFound()

    return (
        <div className="space-y-6">
            <div>
                <h1 className="text-2xl font-bold tracking-tight">Edit Blog Post</h1>
                <p className="mt-1 text-sm text-muted-foreground">
                    Update your blog post or lesson
                </p>
            </div>
            <BlogForm post={post} />
        </div>
    )
}
