import supabase from "@/core/supabase/client";

export async function fetchSongs() {
    try {
        const { data: songs, error: songsError } = await supabase
            .from("song")
            .select("*, artist(name,isActive,id)")
            .order("createdAt", { ascending: false })
            .limit(100);
        if (songsError) {
            throw new Error(songsError.message);
        }
        return songs;
    } catch (error: any) {
        throw new Error(`Error fetching songs: ${error.message}`);
    }
}

export async function fetchActiveSongs() {
    try {
        const { data: songs, error: songsError } = await supabase
            .from("song")
            .select("*, artist!inner(name,isActive,id)")
            .eq("isActive", true)
            .eq("artist.isActive", true)
            .order("createdAt", { ascending: false })
            .limit(100);
        if (songsError) {
            throw new Error(songsError.message);
        }
        return songs;
    } catch (error: any) {
        throw new Error(`Error fetching songs: ${error.message}`);
    }
}

export async function fetchRecentSongs(limit = 5) {
    try {
        const { data: songs, error } = await supabase
            .from("song")
            .select("id, title, artist(name,isActive,id)")
            .order("createdAt", { ascending: false })
            .limit(limit)
        if (error) {
            throw new Error(error.message)
        }
        return songs
    } catch (error: any) {
        throw new Error(`Error fetching recent songs: ${error.message}`)
    }
}

export async function fetchSongById(songId: number) {
    try {
        const { data: song, error } = await supabase
            .from("song")
            .select("*, artist(name,isActive,id)")
            .eq("id", songId)
            .single();
        if (error) {
            throw new Error(error.message);
        }
        if (!song) {
            throw new Error(`Song with ID ${songId} not found`);
        }
        return song;
    } catch (error: any) {
        throw new Error(`Error fetching song by ID: ${error.message}`);
    }
}

type FetchSongsParams = {
    page?: number
    limit?: number
    sortBy?: 'title' | 'year' | 'difficulty' | 'createdAt'
    sortOrder?: 'asc' | 'desc'
    difficulty?: string
    genre?: string
    key?: string
}

export async function fetchSongsWithParams({
    page = 1,
    limit = 50,
    sortBy = 'createdAt',
    sortOrder = 'desc',
    difficulty,
    genre,
    key,
}: FetchSongsParams = {}) {
    try {
        let query = supabase
            .from("song")
            .select("*, artist(name,isActive,id)", { count: 'exact' })

        if (difficulty) {
            query = query.eq('difficulty', difficulty)
        }
        if (genre) {
            query = query.eq('genre', genre)
        }
        if (key) {
            query = query.eq('key', key)
        }

        const from = (page - 1) * limit
        const to = from + limit - 1

        const { data, error, count } = await query
            .order(sortBy, { ascending: sortOrder === 'asc' })
            .range(from, to)

        if (error) {
            throw new Error(error.message)
        }

        return { data, count, page, limit, totalPages: Math.ceil((count ?? 0) / limit) }
    } catch (error: any) {
        throw new Error(`Error fetching songs: ${error.message}`)
    }
}

export async function addSong(formData: any) {
    return supabase
        .from("song")
        .insert(formData)
}

export async function updateSong(songId: number, formData: any) {
    return supabase
        .from("song")
        .update(formData)
        .eq("id", songId)
}

export async function deleteSong(songId: number) {
    return supabase
        .from("song")
        .delete()
        .eq("id", songId)
}

export async function bulkUpdateSongs(ids: number[], updates: any) {
    const { error } = await supabase.from("song").update(updates).in("id", ids)
    if (error) throw new Error(error.message)
}

export async function bulkDeleteSongs(ids: number[]) {
    const { error } = await supabase.from("song").delete().in("id", ids)
    if (error) throw new Error(error.message)
}

export async function updateSongIsActive(songId: number, isActive: boolean): Promise<boolean> {
    try {
        const { error } = await supabase
            .from("song")
            .update({ isActive })
            .eq("id", songId)
        if (error) {
            throw new Error(error.message)
        }
        return true
    } catch (error: any) {
        throw new Error(`Error updating isActive state of song: ${error.message}`)
    }
}

export async function fetchRelatedSongs(songId: number, genre?: string, key?: string, artistId?: number, limit = 4) {
    try {
        let query = supabase
            .from("song")
            .select("*, artist!inner(name,slug,id)")
            .neq("id", songId)
            .eq("isActive", true)
            .eq("artist.isActive", true)

        if (genre) query = query.eq("genre", genre)
        if (key) query = query.eq("key", key)

        const { data, error } = await query
            .order("createdAt", { ascending: false })
            .limit(limit)

        if (error) throw new Error(error.message)

        if (data && data.length < limit && artistId) {
            const existingIds = [songId, ...data.map((s) => s.id)]
            const { data: more } = await supabase
                .from("song")
                .select("*, artist!inner(name,slug,id)")
                .eq("artistId", artistId)
                .eq("isActive", true)
                .not("id", "in", `(${existingIds.join(",")})`)
                .limit(limit - data.length)

            if (more) data.push(...more)
        }

        return data ?? []
    } catch (error: any) {
        throw new Error(`Error fetching related songs: ${error.message}`)
    }
}

export async function fetchSongBySlug(slug: string): Promise<any | null> {
    try {
        const { data: song, error } = await supabase
            .from("song")
            .select("*")
            .eq("slug", slug)
            .single();

        if (error) {
            throw new Error(error.message);
        }

        if (!song) {
            throw new Error(`Song with slug ${slug} not found`);
        }

        const { data: artist, error: artistError } = await supabase
            .from("artist")
            .select("*")
            .eq("id", song.artistId)
            .single();

        if (artistError) {
            throw new Error(artistError.message);
        }

        if (!artist) {
            throw new Error(`Artist with ID ${song.artistId} not found`);
        }

        return { song, artist };
    } catch (error: any) {
        throw new Error(`Error fetching song by slug: ${error.message}`);
    }
}
