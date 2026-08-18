import { cache } from 'react'
import { unstable_cache } from 'next/cache'
import { createServerClient } from "@/core/supabase/server"
import type { Song, DashboardStats } from '@/core/types'

export const getDashboardStats = cache(async (): Promise<DashboardStats> => {
    const supabase = createServerClient()
    const { data, error } = await supabase.rpc("get_dashboard_stats").single()
    if (error) throw new Error(error.message)
    const stats = data as any
    return {
        totalSongs: stats.total_songs,
        activeSongs: stats.active_songs,
        totalArtists: stats.total_artists,
        activeArtists: stats.active_artists,
        genres: stats.genres ?? [],
    }
})

export const getTotalViews = cache(async (): Promise<number> => {
    const supabase = createServerClient()
    const { count } = await supabase
        .from("page_view")
        .select("*", { count: 'exact', head: true })
    return count ?? 0
})

export const getViewsToday = cache(async (): Promise<number> => {
    const supabase = createServerClient()
    const today = new Date()
    today.setHours(0, 0, 0, 0)
    const { count } = await supabase
        .from("page_view")
        .select("*", { count: 'exact', head: true })
        .gte("createdAt", today.toISOString())
    return count ?? 0
})

export const getViewsThisWeek = cache(async (): Promise<number> => {
    const supabase = createServerClient()
    const weekAgo = new Date()
    weekAgo.setDate(weekAgo.getDate() - 7)
    const { count } = await supabase
        .from("page_view")
        .select("*", { count: 'exact', head: true })
        .gte("createdAt", weekAgo.toISOString())
    return count ?? 0
})

export const getRecentSongs = cache(async (limit = 5): Promise<any[]> => {
    const supabase = createServerClient()
    const { data } = await supabase
        .from("song")
        .select("id, title, artist!inner(name)")
        .order("createdAt", { ascending: false })
        .limit(limit)
    return data ?? []
})

export const getRecentArtists = cache(async (limit = 5): Promise<any[]> => {
    const supabase = createServerClient()
    const { data } = await supabase
        .from("artist")
        .select("id, name, bio")
        .order("createdAt", { ascending: false })
        .limit(limit)
    return data ?? []
})

export const getTopSongs = cache(async (limit = 5): Promise<(Song & { views: number })[]> => {
    const supabase = createServerClient()
    const { data, error } = await supabase.rpc("get_top_songs", { limit_count: limit } as any)
    if (error || !data) return []
    return (data as any[]).map((row: any) => ({
        id: row.id,
        title: row.title,
        slug: row.slug,
        views: row.views,
        artist: { name: row.artist_name },
    })) as any
})
