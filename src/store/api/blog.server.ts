import { cache } from 'react'
import { unstable_cache } from 'next/cache'
import { createServerClient } from "@/core/supabase/server"

async function _fetchPublishedPosts(): Promise<any[]> {
    const supabase = createServerClient()
    const { data, error } = await supabase
        .from("blog_post")
        .select("*")
        .eq("published", true)
        .order("createdAt", { ascending: false })
    if (error) throw new Error(error.message)
    return data ?? []
}

export const fetchPublishedPosts = cache(unstable_cache(_fetchPublishedPosts, ['blog-published'], { revalidate: 300 }))

async function _fetchBlogPostBySlug(slug: string): Promise<any> {
    const supabase = createServerClient()
    const { data, error } = await supabase
        .from("blog_post")
        .select("*")
        .eq("slug", slug)
        .single()
    if (error) throw new Error(error.message)
    return data
}

export const fetchBlogPostBySlug = cache(async (slug: string) => {
    const getCached = unstable_cache(
        () => _fetchBlogPostBySlug(slug),
        [`blog-post-${slug}`],
        { revalidate: 300 }
    )
    return getCached()
})
