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
    const { data: songResults, error } = await supabase
        .from("song")
        .select("title,slug,id,image, artist(name,isActive,id)")
        .ilike("title", `%${query}%`)
        .limit(SEARCH_RESULT_LIMIT);

    if (error) {
        throw new Error(error.message);
    }

    return songResults.map((song: any) => ({ type: 'song', details: song }));
}

async function searchArtists(query: string): Promise<ArtistSearchResult[]> {
    const { data: artistResults, error } = await supabase
        .from("artist")
        .select("*")
        .ilike("name", `%${query}%`)
        .limit(SEARCH_RESULT_LIMIT);

    if (error) {
        throw new Error(error.message);
    }

    return artistResults.map((artist: any) => ({ type: 'artist', details: artist }));
}

async function searchSongsByArtistIds(artistIds: number[]): Promise<SongSearchResult[]> {
    if (artistIds.length === 0) return [];

    const { data: songs, error } = await supabase
        .from("song")
        .select("title, slug, image, writtenBy, year, artist(name,isActive,id)")
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

        return [...songResults, ...artistResults, ...artistSongs];
    } catch (error: any) {
        throw new Error(`Error searching songs and artists: ${error.message}`);
    }
}
