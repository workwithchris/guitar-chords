import supabase from "@/core/supabase/client";

interface Song {
    id: number;
    title: string;
    slug: string;
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

async function searchSongs(query: string): Promise<SongSearchResult[]> {
    const { data: songResults, error } = await supabase
        .from("song")
        .select("title,slug,id, artist(name,isActive,id)")
        .ilike("title", `%${query}%`);

    if (error) {
        throw new Error(error.message);
    }

    return songResults.map((song: any) => ({ type: 'song', details: song }));
}

async function searchArtists(query: string): Promise<ArtistSearchResult[]> {
    const { data: artistResults, error } = await supabase
        .from("artist")
        .select("*")
        .ilike("name", `%${query}%`);

    if (error) {
        throw new Error(error.message);
    }

    return artistResults.map((artist: any) => ({ type: 'artist', details: artist }));
}

async function searchArtistSongs(artistId: number): Promise<SongSearchResult[]> {
    const { data: songs, error } = await supabase
        .from("song")
        .select("title, slug, writtenBy, year, artist(name,isActive,id)")
        .eq("artistId", artistId);

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

        const results: SearchResult[] = [...songResults, ...artistResults];

        // Fetch all songs for matching artists and add them to results
        for (const artistResult of artistResults) {
            if (artistResult.type === 'artist') {
                const artistSongs = await searchArtistSongs(artistResult.details.id);
                results.push(...artistSongs);
            }
        }

        return results;
    } catch (error: any) {
        throw new Error(`Error searching songs and artists: ${error.message}`);
    }
}
