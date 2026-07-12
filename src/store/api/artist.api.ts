import { toast } from "@/components/ui/toast/use-toast";
import supabase from "@/core/supabase/client";

export async function uploadArtistImage(file: File, slug: string) {
    try {
        const { data, error }: any = await supabase.storage.from('Artists').upload(slug + "-profile", file);
        if (error) {
            toast({ title: error.message })
            return;
        }
        return process.env.NEXT_PUBLIC_STORAGE_BASE_URL + data?.fullPath;
    } catch (error: any) {
        toast({ title: error.message })
        return;
    }
}

export async function addArtist(formData: any) {
    return supabase
        .from("artist")
        .insert(formData)
}

export async function updateArtist(artistId: number, formData: any) {
    return supabase
        .from("artist")
        .update(formData)
        .eq("id", artistId)
}

export async function deleteArtist(artistId: number) {
    return supabase
        .from("artist")
        .delete()
        .eq("id", artistId)
}

export async function fetchArtists() {
    const { data, error } = await supabase.from("artist").select("*")
    if (error) {
        throw Error(error?.message);
    }
    return data;
}

export async function fetchArtistsPaginated(page = 1, limit = 50) {
    const from = (page - 1) * limit
    const to = from + limit - 1

    const { data, error, count } = await supabase
        .from("artist")
        .select("*", { count: 'exact' })
        .order('name', { ascending: true })
        .range(from, to)

    if (error) {
        throw Error(error.message)
    }

    return { data, count, page, limit, totalPages: Math.ceil((count ?? 0) / limit) }
}

export async function fetchArtistsDropdown() {
    const { data, error } = await supabase.from("artist").select("name,id")
    if (error) {
        throw Error(error?.message);
    }
    return data.map((i) => { return { label: i.name, value: i.id } });
}

export async function updateArtistIsActive(artistId: number, isActive: boolean): Promise<boolean> {
    try {
        const { error } = await supabase
            .from("artist")
            .update({ isActive: isActive })
            .eq("id", artistId);

        if (error) {
            throw new Error(error.message);
        }
        return true
    } catch (error: any) {
        throw new Error(`Error updating isActive state of artist: ${error.message}`);
    }
}

export async function fetchArtistWithSongCount(): Promise<any[] | null> {
    try {
        const { data: artists, error: artistsError } = await supabase.from("artist").select("*");
        if (artistsError) {
            throw new Error(artistsError.message);
        }

        const { data: songs, error: songsError } = await supabase.from("song").select("artistId");
        if (songsError) {
            throw new Error(songsError.message);
        }

        const songCountMap: { [artistId: number]: number } = {};
        songs.forEach((song) => {
            const artistId = song.artistId;
            if (artistId in songCountMap) {
                songCountMap[artistId]++;
            } else {
                songCountMap[artistId] = 1;
            }
        });

        const artistsWithSongCount: any[] = artists.map((artist) => ({
            ...artist,
            songCount: songCountMap[artist.id] || 0,
        }));

        return artistsWithSongCount;
    } catch (error: any) {
        throw new Error(`Error fetching artists with song count: ${error.message}`);
    }
}

export async function fetchActiveArtistsWithSongCount(): Promise<any[] | null> {
    try {
        const { data: artists, error: artistsError } = await supabase
            .from("artist")
            .select("*")
            .eq("isActive", true);
        if (artistsError) {
            throw new Error(artistsError.message);
        }

        const { data: songs, error: songsError } = await supabase
            .from("song")
            .select("artistId")
            .eq("isActive", true);
        if (songsError) {
            throw new Error(songsError.message);
        }

        const songCountMap: { [artistId: number]: number } = {};
        songs.forEach((song) => {
            const artistId = song.artistId;
            if (artistId in songCountMap) {
                songCountMap[artistId]++;
            } else {
                songCountMap[artistId] = 1;
            }
        });

        const artistsWithSongCount: any[] = artists.map((artist) => ({
            ...artist,
            songCount: songCountMap[artist.id] || 0,
        }));

        return artistsWithSongCount;
    } catch (error: any) {
        throw new Error(`Error fetching active artists with song count: ${error.message}`);
    }
}

export async function fetchArtistBySlug(slug: string): Promise<any | null> {
    try {
        const { data: artist, error } = await supabase
            .from("artist")
            .select("*")
            .eq("slug", slug)
            .single();

        if (error) {
            throw new Error(error.message);
        }

        return artist;
    } catch (error: any) {
        throw new Error(`Error fetching artist by slug: ${error.message}`);
    }
}

export async function fetchSongsByArtistSlug(slug: string): Promise<any[] | null> {
    try {
        const { data: artist, error: artistError } = await supabase
            .from("artist")
            .select("id")
            .eq("slug", slug)
            .single();

        if (artistError) {
            throw new Error(artistError.message);
        }

        if (!artist) {
            throw new Error(`Artist with slug ${slug} not found`);
        }

        const { data: songs, error: songsError } = await supabase
            .from("song")
            .select("*")
            .eq("artistId", artist.id);

        if (songsError) {
            throw new Error(songsError.message);
        }
        return songs;
    } catch (error: any) {
        throw new Error(`Error fetching songs by artist slug: ${error.message}`);
    }
}
