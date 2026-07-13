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
        .from("artist_with_song_count")
        .select("*")
        .eq("isActive", true)
    if (error) throw new Error(error.message)
    return artists ?? []
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

async function _getHomeStats(): Promise<{ totalSongs: number; totalArtists: number; totalGenres: number; beginnerCount: number }> {
    const supabase = createServerClient()
    const { data, error }: any = await supabase.rpc('get_home_stats')
    if (error) throw new Error(error.message)
    return data?.[0] ?? { totalSongs: 0, totalArtists: 0, totalGenres: 0, beginnerCount: 0 }
}

export const getHomeStats = cache(unstable_cache(_getHomeStats, ['home-stats'], { revalidate: 60 }))

async function _getRecentSongs(limit = 6): Promise<any[]> {
    const supabase = createServerClient()
    const { data, error }: any = await supabase
        .from("song")
        .select("id, title, slug, image, difficulty, artist!inner(name,isActive,id)")
        .eq("isActive", true)
        .eq("artist.isActive", true)
        .order("createdAt", { ascending: false })
        .limit(limit)
    if (error) throw new Error(error.message)
    return data ?? []
}

export const getRecentSongs = cache(async (limit = 6) => {
    const getCached = unstable_cache(
        () => _getRecentSongs(limit),
        [`recent-songs-${limit}`],
        { revalidate: 60 }
    )
    return getCached()
})

async function _getFeaturedArtist(): Promise<any | null> {
    const supabase = createServerClient()
    const { data: artists, error }: any = await supabase
        .from("artist_with_song_count")
        .select("*")
        .eq("isActive", true)
        .order("songCount", { ascending: false })
        .limit(1)
    if (error) throw new Error(error.message)
    return artists?.[0] ?? null
}

export const getFeaturedArtist = cache(unstable_cache(_getFeaturedArtist, ['featured-artist'], { revalidate: 300 }))

async function _getDistinctGenres(): Promise<string[]> {
    const supabase = createServerClient()
    const { data, error }: any = await supabase
        .from("song")
        .select("genre")
        .eq("isActive", true)
        .not("genre", "is", null)
        .limit(100)
    if (error) throw new Error(error.message)
    return [...new Set((data ?? []).map((r: any) => r.genre).filter(Boolean))] as string[]
}

export const getDistinctGenres = cache(unstable_cache(_getDistinctGenres, ['distinct-genres'], { revalidate: 300 }))

type SongsQueryParams = {
    page?: number
    limit?: number
    difficulty?: string
    genre?: string
    sortBy?: 'createdAt' | 'title' | 'year' | 'difficulty'
    sortOrder?: 'asc' | 'desc'
}

async function _fetchActiveSongsWithParams(params: SongsQueryParams): Promise<{ songs: any[]; totalCount: number; page: number; totalPages: number }> {
    const { page = 1, limit = 24, difficulty, genre, sortBy = 'createdAt', sortOrder = 'desc' } = params
    const supabase = createServerClient()

    let query = supabase
        .from("song")
        .select("*, artist!inner(name,isActive,id)", { count: 'exact' })
        .eq("isActive", true)
        .eq("artist.isActive", true)

    if (difficulty) query = query.eq("difficulty", difficulty)
    if (genre) query = query.eq("genre", genre)

    const from = (page - 1) * limit
    const to = from + limit - 1

    const { data, error, count } = await query
        .order(sortBy, { ascending: sortOrder === 'asc' })
        .range(from, to)

    if (error) throw new Error(error.message)

    return {
        songs: data ?? [],
        totalCount: count ?? 0,
        page,
        totalPages: Math.ceil((count ?? 0) / limit),
    }
}

export const fetchActiveSongsWithParams = cache(async (params: SongsQueryParams) => {
    const cacheKey = [`songs-query-${JSON.stringify(params)}`]
    const getCached = unstable_cache(
        () => _fetchActiveSongsWithParams(params),
        cacheKey,
        { revalidate: 60 }
    )
    return getCached()
})

type ArtistsQueryParams = {
    page?: number
    limit?: number
    letter?: string
    search?: string
    sortBy?: 'name' | 'songCount'
    sortOrder?: 'asc' | 'desc'
}

async function _fetchActiveArtistsWithParams(params: ArtistsQueryParams): Promise<{ artists: any[]; totalCount: number; page: number; totalPages: number }> {
    const { page = 1, limit = 24, letter, search, sortBy = 'songCount', sortOrder = 'desc' } = params
    const supabase = createServerClient()

    let query = supabase
        .from("artist_with_song_count")
        .select("*", { count: 'exact' })
        .eq("isActive", true)

    if (letter) {
        const nextChar = String.fromCharCode(letter.charCodeAt(0) + 1)
        query = query.gte("name", letter).lt("name", nextChar)
    }
    if (search) {
        query = query.ilike("name", `%${search}%`)
    }

    const from = (page - 1) * limit
    const to = from + limit - 1

    const sortColumn = sortBy === 'name' ? 'name' : 'name'
    const { data, error, count } = await query
        .order(sortColumn, { ascending: sortOrder === 'asc' })
        .range(from, to)

    if (error) throw new Error(error.message)

    return {
        artists: data ?? [],
        totalCount: count ?? 0,
        page,
        totalPages: Math.ceil((count ?? 0) / limit),
    }
}

export const fetchActiveArtistsWithParams = cache(async (params: ArtistsQueryParams) => {
    const cacheKey = [`artists-query-${JSON.stringify(params)}`]
    const getCached = unstable_cache(
        () => _fetchActiveArtistsWithParams(params),
        cacheKey,
        { revalidate: 300 }
    )
    return getCached()
})

type AdminSongsParams = {
    search?: string
    difficulty?: string
    page?: number
    limit?: number
}

async function _searchSongsAdmin(params: AdminSongsParams): Promise<{ songs: any[]; totalCount: number; page: number; totalPages: number }> {
    const { search, difficulty, page = 1, limit = 50 } = params
    const supabase = createServerClient()

    let query = supabase
        .from("song")
        .select("*, artist(name,isActive,id)", { count: 'exact' })

    if (search) {
        query = query.or(`title.ilike.%${search}%,artist.name.ilike.%${search}%`)
    }
    if (difficulty) {
        query = query.eq("difficulty", difficulty)
    }

    const from = (page - 1) * limit
    const to = from + limit - 1

    const { data, error, count } = await query
        .order("createdAt", { ascending: false })
        .range(from, to)

    if (error) throw new Error(error.message)
    return { songs: data ?? [], totalCount: count ?? 0, page, totalPages: Math.ceil((count ?? 0) / limit) }
}

export const searchSongsAdmin = cache(async (params: AdminSongsParams) => {
    return _searchSongsAdmin(params)
})

type AdminArtistsParams = {
    search?: string
    page?: number
    limit?: number
}

async function _searchArtistsAdmin(params: AdminArtistsParams): Promise<{ artists: any[]; totalCount: number; page: number; totalPages: number }> {
    const { search, page = 1, limit = 50 } = params
    const supabase = createServerClient()

    let query = supabase
        .from("artist")
        .select("*", { count: 'exact' })

    if (search) {
        query = query.ilike("name", `%${search}%`)
    }

    const from = (page - 1) * limit
    const to = from + limit - 1

    const { data, error, count } = await query
        .order("name", { ascending: true })
        .range(from, to)

    if (error) throw new Error(error.message)
    return { artists: data ?? [], totalCount: count ?? 0, page, totalPages: Math.ceil((count ?? 0) / limit) }
}

export const searchArtistsAdmin = cache(async (params: AdminArtistsParams) => {
    return _searchArtistsAdmin(params)
})
