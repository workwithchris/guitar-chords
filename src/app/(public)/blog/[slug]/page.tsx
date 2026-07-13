import React from 'react'
import Link from 'next/link'
import Image from 'next/image'
import { fetchBlogPostBySlug } from '@/store/api/blog.server'
import { ArrowLeft, Calendar, User } from 'lucide-react'
import type { Metadata } from 'next'
import { notFound } from 'next/navigation'

export const revalidate = 300

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
    try {
        const { slug } = await params
        const post = await fetchBlogPostBySlug(slug)
        const title = `${post.title} - Guitar Chords Blog`
        const description = post.excerpt || `Read ${post.title} on the Guitar Chords blog.`
        return {
            title,
            description,
            openGraph: {
                title,
                description,
                type: 'article',
                url: `https://guitarchords.techyatraa.com/blog/${slug}`,
                siteName: 'Guitar Chords',
                images: post?.image ? [{ url: post.image, width: 1200, height: 630 }] : [],
                publishedTime: post.createdAt,
                authors: post.authorName ? [post.authorName] : [],
            },
            twitter: {
                card: 'summary_large_image',
                title,
                description,
                images: post?.image ? [post.image] : [],
            },
        }
    } catch {
        return { title: 'Blog Post - Guitar Chords' }
    }
}

export default async function BlogPostPage({ params }: { params: Promise<{ slug: string }> }) {
    const { slug } = await params
    let post: any
    try {
        post = await fetchBlogPostBySlug(slug)
    } catch {
        notFound()
    }

    return (
        <article className="max-w-2xl mx-auto space-y-8">
            <Link
                href="/blog"
                className="inline-flex items-center gap-1.5 text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
            >
                <ArrowLeft className="h-3.5 w-3.5" />
                Back to blog
            </Link>

            <div className="space-y-4">
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                    {post.title}
                </h1>
                <div className="flex flex-wrap items-center gap-4 text-sm text-neutral-500 dark:text-neutral-400">
                    {post.authorName && (
                        <span className="inline-flex items-center gap-1.5">
                            <User className="h-3.5 w-3.5" />
                            {post.authorName}
                        </span>
                    )}
                    {post.createdAt && (
                        <span className="inline-flex items-center gap-1.5">
                            <Calendar className="h-3.5 w-3.5" />
                            {new Date(post.createdAt).toLocaleDateString('en-US', {
                                year: 'numeric', month: 'long', day: 'numeric'
                            })}
                        </span>
                    )}
                </div>
            </div>

            {post.image && (
                <div className="rounded-xl overflow-hidden relative aspect-video">
                    <Image src={post.image} alt={post.title} fill className="object-cover" />
                </div>
            )}

            <div
                className="prose prose-neutral dark:prose-invert max-w-none prose-img:rounded-xl"
                dangerouslySetInnerHTML={{ __html: post.content }}
            />

            <div className="border-t border-neutral-200 dark:border-neutral-800 pt-8">
                <Link
                    href="/blog"
                    className="inline-flex items-center gap-1.5 text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
                >
                    <ArrowLeft className="h-3.5 w-3.5" />
                    Back to blog
                </Link>
            </div>
        </article>
    )
}
