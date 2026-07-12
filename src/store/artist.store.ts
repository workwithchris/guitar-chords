import { create } from "zustand";
import { addArtist, deleteArtist, fetchArtists, fetchArtistsDropdown, updateArtist, updateArtistIsActive } from "./api/artist.api";

export const useArtistStore = create((set) => ({
    renderList: false,
    showModal: false,
    artistsDropdown: [],
    artists: [],
    selectedArtist: null,
    setSelectedArtist: (artist: any) => {
        set({ selectedArtist: artist })
    },
    clearSelectedArtist: () => {
        set({ selectedArtist: null })
    },
    handleRenderList: (val: boolean) => {
        set({ renderList: val });
    },
    handleShow: () => {
        set({ showModal: true });
    },
    handleClose: () => {
        set({ showModal: false, selectedArtist: null });
    },
    fetchDropdown: async () => {
        set({ artistsDropdown: await fetchArtistsDropdown() ?? [] });
    },
    add: async (artist: any) => {
        const { error } = await addArtist(artist);
        if (error) throw new Error(error.message)
        set({ artists: await fetchArtists() ?? [] });
    },
    update: async (artistId: number, artist: any) => {
        const { error } = await updateArtist(artistId, artist);
        if (error) throw new Error(error.message)
        set({ artists: await fetchArtists() ?? [] });
    },
    delete: async (artistId: number) => {
        const { error } = await deleteArtist(artistId);
        if (error) throw new Error(error.message)
        set({ artists: await fetchArtists() ?? [] });
    },
    setArtists: (artists: any[]) => {
        set({ artists });
    },
    fetch: async () => {
        set({ artists: await fetchArtists() ?? [] });
    },
    updateActiveToogle: async (artistId: number, isActive: boolean) => {
        await updateArtistIsActive(artistId, isActive);
        set({ artists: await fetchArtists() ?? [] });
    },
}));
