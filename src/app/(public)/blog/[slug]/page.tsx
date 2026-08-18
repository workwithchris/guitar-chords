import React from 'react'
import Link from 'next/link'
import Image from 'next/image'
import { fetchBlogPostBySlug } from '@/store/api/blog.server'
import { ArrowLeft, Calendar, User } from 'lucide-react'
import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { ArticleJsonLd, BreadcrumbJsonLd } from '@/components/ui/json-ld'

// TODO: Cache Components adoption. Refactor this route so this opt-out can be removed.
// See: https://nextjs.org/docs/app/guides/migrating-to-cache-components
export const instant = false;


const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export async function generateMetadata({ params }: { params: Promise<{ slug: string }> }): Promise<Metadata> {
    try {
        const { slug } = await params
        const post = await fetchBlogPostBySlug(slug)
        const title = `${post.title}`
        const description = post.excerpt || `Read ${post.title} on the Guitar Chords blog.`
        const fullTitle = `${post.title} - Guitar Chords Blog`
        return {
            title,
            description,
            openGraph: {
                title: fullTitle,
                description,
                type: 'article',
                url: `${baseUrl}/blog/${slug}`,
                images: post?.image ? [{ url: post.image, width: 1200, height: 630 }] : [],
                publishedTime: post.createdAt,
                authors: post.authorName ? [post.authorName] : [],
            },
            twitter: {
                card: 'summary_large_image',
                title: fullTitle,
                description,
                images: post?.image ? [post.image] : [],
            },
            alternates: { canonical: `${baseUrl}/blog/${slug}` },
        }
    } catch {
        return { title: 'Blog Post' }
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
        <>
            <ArticleJsonLd
                title={post.title}
                slug={slug}
                description={post.excerpt}
                image={post.image}
                datePublished={post.createdAt}
                dateModified={post.updatedAt}
                authorName={post.authorName}
            />
            <BreadcrumbJsonLd items={[
                { label: 'Blog', url: '/blog' },
                { label: post.title, url: `/blog/${slug}` },
            ]} />
            <article className="max-w-2xl mx-auto space-y-8">
                <Link
                    href="/blog"
                    className="inline-flex items-center gap-1.5 text-sm text-muted-foreground hover:text-foreground transition-colors"
                >
                    <ArrowLeft className="h-3.5 w-3.5" />
                    Back to blog
                </Link>

                <div className="space-y-4">
                    <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-foreground">
                        {post.title}
                    </h1>
                    <div className="flex flex-wrap items-center gap-4 text-sm text-muted-foreground">
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

                <div className="border-t border-border pt-8">
                    <Link
                        href="/blog"
                        className="inline-flex items-center gap-1.5 text-sm text-muted-foreground hover:text-foreground transition-colors"
                    >
                        <ArrowLeft className="h-3.5 w-3.5" />
                        Back to blog
                    </Link>
                </div>
            </article>
        </>
    )
}
