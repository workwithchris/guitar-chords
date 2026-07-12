"use client"
import { useState, useEffect, useCallback } from "react"

const STORAGE_KEY = "guitar-chords-favorites"

export type FavoriteSong = {
  id: number
  slug: string
  title: string
  artistName: string
  artistSlug: string
}

export function useFavorites() {
  const [favorites, setFavorites] = useState<FavoriteSong[]>([])

  useEffect(() => {
    try {
      const stored = localStorage.getItem(STORAGE_KEY)
      if (stored) setFavorites(JSON.parse(stored))
    } catch {}
  }, [])

  const persist = useCallback((f: FavoriteSong[]) => {
    setFavorites(f)
    try { localStorage.setItem(STORAGE_KEY, JSON.stringify(f)) } catch {}
  }, [])

  const addFavorite = useCallback((song: FavoriteSong) => {
    persist([...favorites, song])
  }, [favorites, persist])

  const removeFavorite = useCallback((id: number) => {
    persist(favorites.filter((f) => f.id !== id))
  }, [favorites, persist])

  const isFavorite = useCallback((id: number) => {
    return favorites.some((f) => f.id === id)
  }, [favorites])

  const toggleFavorite = useCallback((song: FavoriteSong) => {
    if (favorites.some((f) => f.id === song.id)) {
      persist(favorites.filter((f) => f.id !== song.id))
    } else {
      persist([...favorites, song])
    }
  }, [favorites, persist])

  return { favorites, addFavorite, removeFavorite, isFavorite, toggleFavorite }
}
