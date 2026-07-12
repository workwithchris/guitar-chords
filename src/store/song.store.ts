import { create } from "zustand";
import { addSong, deleteSong, fetchSongs, updateSong, updateSongIsActive } from "./api/song.api";

export const useSongStore = create((set) => ({
    songs: [],
    setSongs: (songs: any[]) => {
        set({ songs });
    },
    fetch: async () => {
        set({ songs: await fetchSongs() ?? [] });
    },
    add: async (song: any) => {
        const { error } = await addSong(song);
        if (error) {
            throw new Error(error.message)
        }
        set({ songs: await fetchSongs() ?? [] });
    },
    update: async (songId: number, song: any) => {
        const { error } = await updateSong(songId, song);
        if (error) {
            throw new Error(error.message)
        }
        set({ songs: await fetchSongs() ?? [] });
    },
    delete: async (songId: number) => {
        const { error } = await deleteSong(songId);
        if (error) {
            throw new Error(error.message)
        }
        set({ songs: await fetchSongs() ?? [] });
    },
    updateActiveToggle: async (songId: number, isActive: boolean) => {
        await updateSongIsActive(songId, isActive);
        set({ songs: await fetchSongs() ?? [] });
    },
}));
