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
        className="inline-flex items-center gap-1.5 text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
      >
        <ArrowLeft className="h-3.5 w-3.5" />
        Back to songs
      </Link>

      <div className="flex items-center gap-3">
        <div className="h-10 w-10 rounded-xl bg-red-50 dark:bg-red-950 flex items-center justify-center">
          <Heart className="h-5 w-5 text-red-500 fill-red-500" />
        </div>
        <div>
          <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
            My Songbook
          </h1>
          <p className="text-sm text-neutral-500 dark:text-neutral-400">
            {favorites.length} {favorites.length === 1 ? 'song' : 'songs'} saved
          </p>
        </div>
      </div>

      <div className="border-t border-neutral-200 dark:border-neutral-800" />

      {favorites.length === 0 ? (
        <div className="flex flex-col items-center py-16 text-center">
          <Heart className="h-12 w-12 text-neutral-300 dark:text-neutral-700 mb-4" />
          <p className="text-lg font-semibold text-neutral-900 dark:text-neutral-100">Your songbook is empty</p>
          <p className="text-sm text-neutral-500 dark:text-neutral-400 mt-1 max-w-sm">
            Save your favorite songs by tapping the heart icon on any song page.
          </p>
          <Link
            href="/songs"
            className="mt-6 inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900 text-sm font-medium hover:bg-neutral-800 dark:hover:bg-neutral-200 transition-colors"
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
              className="group flex items-start gap-4 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 transition-all"
            >
              <Link href={`/songs/${song.slug}`} className="flex items-start gap-4 flex-1 min-w-0">
                <div className="h-10 w-10 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 mt-0.5">
                  <Music className="h-4 w-4 text-neutral-500 dark:text-neutral-400" />
                </div>
                <div className="min-w-0 space-y-1">
                  <h2 className="font-semibold text-neutral-900 dark:text-neutral-100 group-hover:text-neutral-700 dark:group-hover:text-neutral-300 transition-colors truncate">
                    {song.title}
                  </h2>
                  <p className="text-xs text-neutral-500 dark:text-neutral-400 truncate">
                    {song.artistName}
                  </p>
                </div>
              </Link>
              <button
                onClick={() => removeFavorite(song.id)}
                className="shrink-0 p-2 rounded-lg text-neutral-400 hover:text-red-500 hover:bg-red-50 dark:hover:bg-red-950 transition-colors"
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
