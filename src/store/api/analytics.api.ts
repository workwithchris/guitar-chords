import supabase from "@/core/supabase/client";

export async function getDashboardStats() {
    const { data, error } = await supabase.rpc("get_dashboard_stats").single()
    if (error) {
        throw new Error(error.message)
    }
    const stats = data as {
        total_songs: number
        active_songs: number
        total_artists: number
        active_artists: number
        genres: string[] | null
    }
    return {
        totalSongs: stats.total_songs,
        activeSongs: stats.active_songs,
        totalArtists: stats.total_artists,
        activeArtists: stats.active_artists,
        genres: stats.genres ?? [],
    }
}

export async function trackPageView(path: string, songId?: number) {
    try {
        await supabase.from("page_view").insert({
            path,
            songId: songId || null,
            userAgent: navigator.userAgent.slice(0, 200),
            referrer: document.referrer.slice(0, 500) || null,
        })
    } catch {}
}

export async function getTotalViews() {
    const { count } = await supabase
        .from("page_view")
        .select("*", { count: 'exact', head: true })
    return count ?? 0
}

export async function getTopSongs(limit = 5) {
    const { data, error } = await supabase
        .from("page_view")
        .select("songId, path, createdAt")
        .not("songId", "is", null)
        .order("createdAt", { ascending: false })

    if (error || !data) return []

    const counts: Record<number, number> = {}
    for (const view of data) {
        if (view.songId) counts[view.songId] = (counts[view.songId] || 0) + 1
    }

    const topIds = Object.entries(counts)
        .sort(([, a], [, b]) => b - a)
        .slice(0, limit)
        .map(([id]) => parseInt(id))

    if (topIds.length === 0) return []

    const { data: songs } = await supabase
        .from("song")
        .select("id, title, slug, artist!inner(name)")
        .in("id", topIds)

    return (songs ?? [])
        .map((s: any) => ({ ...s, views: counts[s.id] }))
        .sort((a: any, b: any) => b.views - a.views)
}

export async function getViewsToday() {
    const today = new Date()
    today.setHours(0, 0, 0, 0)

    const { count } = await supabase
        .from("page_view")
        .select("*", { count: 'exact', head: true })
        .gte("createdAt", today.toISOString())

    return count ?? 0
}

export async function getViewsThisWeek() {
    const weekAgo = new Date()
    weekAgo.setDate(weekAgo.getDate() - 7)

    const { count } = await supabase
        .from("page_view")
        .select("*", { count: 'exact', head: true })
        .gte("createdAt", weekAgo.toISOString())

    return count ?? 0
}
