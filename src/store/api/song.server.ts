import { cache } from 'react'
import { unstable_cache } from 'next/cache'
import { createServerClient } from "@/core/supabase/server"

async function _fetchActiveSongs(): Promise<any[]> {
    const supabase = createServerClient()
    const { data: songs, error }: any = await supabase
        .from("song")
        .select("*, artist!inner(name,isActive,id)")
        .eq("isActive", true)
        .eq("artist.isActive", true)
        .order("createdAt", { ascending: false })
        .limit(100)
    if (error) throw new Error(error.message)
    return songs ?? []
}

export const fetchActiveSongsServer = cache(unstable_cache(_fetchActiveSongs, ['songs-active'], { revalidate: 60 }))

async function _fetchActiveArtistsWithSongCount(): Promise<any[]> {
    const supabase = createServerClient()
    const { data: artists, error }: any = await supabase
        .from("artist")
        .select("*, song: song(count)")
        .eq("isActive", true)
    if (error) throw new Error(error.message)
    return (artists ?? []).map((a: any) => ({
        ...a,
        songCount: a.song?.[0]?.count ?? 0,
        song: undefined,
    }))
}

export const fetchActiveArtistsWithSongCountServer = cache(unstable_cache(_fetchActiveArtistsWithSongCount, ['artists-active-count'], { revalidate: 300 }))

async function _fetchSongBySlug(slug: string): Promise<{ song: any; artist: any }> {
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

export const fetchSongBySlugServer = cache(async (slug: string) => {
    const getCached = unstable_cache(
        () => _fetchSongBySlug(slug),
        [`song-by-slug-${slug}`],
        { revalidate: 60 }
    )
    return getCached()
})

async function _fetchArtistBySlug(slug: string): Promise<any> {
    const supabase = createServerClient()
    const { data, error }: any = await supabase
        .from("artist")
        .select("*")
        .eq("slug", slug)
        .single()
    if (error) throw new Error(error.message)
    return data
}

export const fetchArtistBySlugServer = cache(async (slug: string) => {
    const getCached = unstable_cache(
        () => _fetchArtistBySlug(slug),
        [`artist-by-slug-${slug}`],
        { revalidate: 60 }
    )
    return getCached()
})

async function _fetchSongsByArtistSlug(slug: string): Promise<any[]> {
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

export const fetchSongsByArtistSlugServer = cache(async (slug: string) => {
    const getCached = unstable_cache(
        () => _fetchSongsByArtistSlug(slug),
        [`songs-by-artist-slug-${slug}`],
        { revalidate: 60 }
    )
    return getCached()
})
