import supabase from "@/core/supabase/client";

interface Song {
    id: number;
    title: string;
    slug: string;
    image?: string;
    artist: Artist;
    year?: number;
    writtenBy?: string;
}

interface Artist {
    id: number;
    name: string;
    slug: string;
    bio: string;
    image?: string
}

interface SongSearchResult {
    type: 'song';
    details: Song;
}

interface ArtistSearchResult {
    type: 'artist';
    details: Artist;
}

type SearchResult = SongSearchResult | ArtistSearchResult;

const SEARCH_RESULT_LIMIT = 50;

async function searchSongs(query: string): Promise<SongSearchResult[]> {
    const { data: songResults, error } = await supabase.rpc("search_songs", {
        search_query: query,
        result_limit: SEARCH_RESULT_LIMIT,
    });

    if (error) {
        throw new Error(error.message);
    }

    return (songResults ?? []).map((row: any) => ({
        type: 'song',
        details: {
            id: row.id,
            title: row.title,
            slug: row.slug,
            image: row.image,
            artist: { id: row.artist_id, name: row.artist_name, isActive: row.artist_is_active },
        },
    }));
}

async function searchArtists(query: string): Promise<ArtistSearchResult[]> {
    const { data: artistResults, error } = await supabase.rpc("search_artists", {
        search_query: query,
        result_limit: SEARCH_RESULT_LIMIT,
    });

    if (error) {
        throw new Error(error.message);
    }

    return (artistResults ?? []).map((artist: any) => ({ type: 'artist', details: artist }));
}

async function searchSongsByArtistIds(artistIds: number[]): Promise<SongSearchResult[]> {
    if (artistIds.length === 0) return [];

    const { data: songs, error } = await supabase
        .from("song")
        .select("id, title, slug, image, writtenBy, year, artist(name,isActive,id)")
        .in("artistId", artistIds);

    if (error) {
        throw new Error(error.message);
    }

    return songs.map((song: any) => ({ type: 'song', details: song }));
}

export async function searchSongsAndArtists(query: string): Promise<SearchResult[]> {
    try {
        const [songResults, artistResults] = await Promise.all([
            searchSongs(query),
            searchArtists(query),
        ]);

        const artistIds = artistResults.map((artist) => artist.details.id);
        const artistSongs = await searchSongsByArtistIds(artistIds);

        const seenSongIds = new Set<number>();
        const songs: SongSearchResult[] = [];
        for (const song of [...songResults, ...artistSongs]) {
            if (seenSongIds.has(song.details.id)) continue;
            seenSongIds.add(song.details.id);
            songs.push(song);
        }

        return [...songs, ...artistResults];
    } catch (error: any) {
        throw new Error(`Error searching songs and artists: ${error.message}`);
    }
}
