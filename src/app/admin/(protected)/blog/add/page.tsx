import React from 'react'
import BlogForm from '../components/form'

export default function AddBlogPostPage() {
    return (
        <div className="space-y-6">
            <div>
                <h1 className="text-2xl font-bold tracking-tight">New Blog Post</h1>
                <p className="mt-1 text-sm text-muted-foreground">
                    Create a new blog post or lesson
                </p>
            </div>
            <BlogForm />
        </div>
    )
}
