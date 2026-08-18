"use client"
import React from 'react'
import Link from 'next/link'
import { useFavorites } from '@/lib/use-favorites'
import { Music, Heart, Trash2, ArrowLeft } from 'lucide-react'

export default function FavoritesClient() {
  const { favorites, removeFavorite } = useFavorites()

  return (
    <div className="space-y-8">
      <Link
        href="/songs"
        className="inline-flex items-center gap-1.5 text-sm text-muted-foreground hover:text-foreground transition-colors"
      >
        <ArrowLeft className="h-3.5 w-3.5" />
        Back to songs
      </Link>

      <div className="flex items-center gap-3">
        <div className="h-10 w-10 rounded-xl bg-red-50 dark:bg-red-950 flex items-center justify-center">
          <Heart className="h-5 w-5 text-red-500 fill-red-500" />
        </div>
        <div>
          <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-foreground">
            My Songbook
          </h1>
          <p className="text-sm text-muted-foreground">
            {favorites.length} {favorites.length === 1 ? 'song' : 'songs'} saved
          </p>
        </div>
      </div>

      <div className="border-t border-border" />

      {favorites.length === 0 ? (
        <div className="flex flex-col items-center py-16 text-center">
          <Heart className="h-12 w-12 text-muted-foreground mb-4" />
          <p className="text-lg font-semibold text-foreground">Your songbook is empty</p>
          <p className="text-sm text-muted-foreground mt-1 max-w-sm">
            Save your favorite songs by tapping the heart icon on any song page.
          </p>
          <Link
            href="/songs"
            className="mt-6 inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-foreground text-background text-sm font-medium hover:bg-secondary dark:hover:bg-muted transition-colors"
          >
            <Music className="h-4 w-4" />
            Browse Songs
          </Link>
        </div>
      ) : (
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
          {favorites.map((song) => (
            <div
              key={song.id}
              className="group flex items-start gap-4 p-4 rounded-xl border border-border bg-card hover:border-border dark:hover:border-border transition-all"
            >
              <Link href={`/songs/${song.slug}`} className="flex items-start gap-4 flex-1 min-w-0">
                <div className="h-10 w-10 rounded-lg bg-secondary flex items-center justify-center shrink-0 mt-0.5">
                  <Music className="h-4 w-4 text-muted-foreground" />
                </div>
                <div className="min-w-0 space-y-1">
                  <h2 className="font-semibold text-foreground group-hover:text-muted-foreground dark:group-hover:text-muted-foreground transition-colors truncate">
                    {song.title}
                  </h2>
                  <p className="text-xs text-muted-foreground truncate">
                    {song.artistName}
                  </p>
                </div>
              </Link>
              <button
                onClick={() => removeFavorite(song.id)}
                className="shrink-0 p-2 rounded-lg text-muted-foreground hover:text-red-500 hover:bg-red-50 dark:hover:bg-red-950 transition-colors"
              >
                <Trash2 className="h-4 w-4" />
              </button>
            </div>
          ))}
        </div>
      )}
    </div>
  )
}
