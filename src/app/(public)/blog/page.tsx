import React from 'react'
import Link from 'next/link'
import Image from 'next/image'
import { fetchPublishedPosts } from '@/store/api/blog.server'
import { Calendar, ArrowRight } from 'lucide-react'
import type { Metadata } from 'next'

export const revalidate = 300

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export const metadata: Metadata = {
  title: 'Blog & Lessons',
  description: 'Guitar tutorials, chord theory, and lessons to improve your playing. Tips for beginners and advanced players.',
  openGraph: {
    title: 'Blog & Lessons - Guitar Chords',
    description: 'Guitar tutorials, chord theory, and lessons to improve your playing.',
    url: '/blog',
  },
  alternates: { canonical: `${baseUrl}/blog` },
}

export default async function BlogPage() {
    const posts: any[] = await fetchPublishedPosts()
    return (
        <div className="space-y-8">
            <div className="text-center space-y-3 max-w-lg mx-auto">
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                    Blog & Lessons
                </h1>
                <p className="text-sm text-neutral-500 dark:text-neutral-400">
                    Guitar tutorials, chord theory, and tips to improve your playing.
                </p>
            </div>
            <div className="border-t border-neutral-200 dark:border-neutral-800" />
            {posts.length === 0 ? (
                <div className="flex flex-col items-center py-16 text-center">
                    <p className="text-sm text-neutral-500">No posts yet. Check back soon!</p>
                </div>
            ) : (
                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                    {posts.map((post) => (
                        <Link
                            key={post.id}
                            href={`/blog/${post.slug}`}
                            className="group flex flex-col rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all overflow-hidden"
                        >
                            {post.image && (
                                <div className="aspect-video bg-neutral-100 dark:bg-neutral-800 overflow-hidden relative">
                                    <Image
                                        src={post.image}
                                        alt={post.title}
                                        fill
                                        sizes="(max-width: 768px) 100vw, 50vw"
                                        className="object-cover group-hover:scale-105 transition-transform duration-300"
                                    />
                                </div>
                            )}
                            <div className="p-5 space-y-3 flex-1 flex flex-col">
                                <h2 className="font-semibold text-lg text-neutral-900 dark:text-neutral-100 group-hover:text-neutral-700 dark:group-hover:text-neutral-300 transition-colors">
                                    {post.title}
                                </h2>
                                {post.excerpt && (
                                    <p className="text-sm text-neutral-500 dark:text-neutral-400 line-clamp-2">
                                        {post.excerpt}
                                    </p>
                                )}
                                <div className="flex items-center gap-3 text-xs text-neutral-400 mt-auto pt-2">
                                    {post.createdAt && (
                                        <span className="inline-flex items-center gap-1">
                                            <Calendar className="h-3 w-3" />
                                            {new Date(post.createdAt).toLocaleDateString('en-US', {
                                                year: 'numeric', month: 'short', day: 'numeric'
                                            })}
                                        </span>
                                    )}
                                    <span className="inline-flex items-center gap-1 ml-auto text-neutral-500 group-hover:text-neutral-700 dark:group-hover:text-neutral-300 transition-colors">
                                        Read more
                                        <ArrowRight className="h-3 w-3" />
                                    </span>
                                </div>
                            </div>
                        </Link>
                    ))}
                </div>
            )}
        </div>
    )
}
