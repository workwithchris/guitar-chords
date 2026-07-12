import { createServerClient } from "@/core/supabase/server"

export async function fetchActiveSongsServer(): Promise<any[]> {
    const supabase = createServerClient()
    const { data: songs, error }: any = await supabase
        .from("song")
        .select("*, artist!inner(name,isActive,id)")
        .eq("isActive", true)
        .eq("artist.isActive", true)
        .order("createdAt", { ascending: false })
        .limit(10000)
    if (error) throw new Error(error.message)
    return songs ?? []
}

export async function fetchSongBySlugServer(slug: string): Promise<{ song: any; artist: any }> {
    const supabase = createServerClient()
    const { data: song, error }: any = await supabase
        .from("song")
        .select("*")
        .eq("slug", slug)
        .single()
    if (error || !song) throw new Error(error?.message || "Song not found")

    const { data: artist, error: artistError }: any = await supabase
        .from("artist")
        .select("*")
        .eq("id", song.artistId)
        .single()
    if (artistError || !artist) throw new Error(artistError?.message || "Artist not found")

    return { song, artist }
}

export async function fetchActiveArtistsWithSongCountServer(): Promise<any[]> {
    const supabase = createServerClient()
    const { data: artists, error }: any = await supabase
        .from("artist")
        .select("*")
        .eq("isActive", true)
        .limit(10000)
    if (error) throw new Error(error.message)

    const { data: songs }: any = await supabase
        .from("song")
        .select("artistId")
        .eq("isActive", true)
        .limit(10000)

    const countMap: Record<number, number> = {}
    songs?.forEach((s: any) => { countMap[s.artistId] = (countMap[s.artistId] || 0) + 1 })

    return (artists ?? []).map((a: any) => ({ ...a, songCount: countMap[a.id] || 0 }))
}

export async function fetchArtistBySlugServer(slug: string): Promise<any> {
    const supabase = createServerClient()
    const { data, error }: any = await supabase
        .from("artist")
        .select("*")
        .eq("slug", slug)
        .single()
    if (error) throw new Error(error.message)
    return data
}

export async function fetchSongsByArtistSlugServer(slug: string): Promise<any[]> {
    const supabase = createServerClient()
    const { data: artist }: any = await supabase
        .from("artist")
        .select("id")
        .eq("slug", slug)
        .single()
    if (!artist) throw new Error("Artist not found")

    const { data: songs }: any = await supabase
        .from("song")
        .select("*")
        .eq("artistId", artist.id)
    return songs ?? []
}