"use client"
import Link from 'next/link'
import React, { useState } from 'react'
import { Music, X } from 'lucide-react'

const difficulties = ['Beginner', 'Intermediate', 'Advanced']

export default function SongsList({ songs, genres }: { songs: any[]; genres: string[] }) {
    const [search, setSearch] = useState('')
    const [genreFilter, setGenreFilter] = useState<string | null>(null)
    const [difficultyFilter, setDifficultyFilter] = useState<string | null>(null)

    const filtered = songs.filter((song) => {
        const matchesSearch = song.title?.toLowerCase().includes(search.toLowerCase()) ||
            song.artist?.name?.toLowerCase().includes(search.toLowerCase())
        const matchesGenre = !genreFilter || song.genre === genreFilter
        const matchesDifficulty = !difficultyFilter || song.difficulty === difficultyFilter
        return matchesSearch && matchesGenre && matchesDifficulty
    })

    const hasFilters = search || genreFilter || difficultyFilter

    return (
        <div className="space-y-6">
            <div className="flex flex-col sm:flex-row gap-4">
                <div className="relative flex-1">
                    <input
                        type="text"
                        placeholder="Search songs or artists..."
                        value={search}
                        onChange={(e) => setSearch(e.target.value)}
                        className="w-full rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 px-4 py-2.5 pl-10 text-sm text-neutral-900 dark:text-neutral-100 placeholder:text-neutral-400 focus:outline-none focus:ring-2 focus:ring-neutral-400 dark:focus:ring-neutral-500 transition-all"
                    />
                    <Music className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-neutral-400" />
                </div>
            </div>

            <div className="flex flex-wrap items-center gap-2">
                {difficulties.map((d) => (
                    <button
                        key={d}
                        onClick={() => setDifficultyFilter(difficultyFilter === d ? null : d)}
                        className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-colors ${
                            difficultyFilter === d
                                ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                                : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
                        }`}
                    >
                        {d}
                    </button>
                ))}
                {genres.map((g) => (
                    <button
                        key={g}
                        onClick={() => setGenreFilter(genreFilter === g ? null : g)}
                        className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-colors ${
                            genreFilter === g
                                ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                                : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
                        }`}
                    >
                        {g}
                    </button>
                ))}
                {hasFilters && (
                    <button
                        onClick={() => { setSearch(''); setGenreFilter(null); setDifficultyFilter(null) }}
                        className="inline-flex items-center gap-1 px-3 py-1.5 rounded-lg text-xs font-medium text-neutral-500 hover:text-neutral-700 dark:hover:text-neutral-300 transition-colors"
                    >
                        <X className="h-3 w-3" />
                        Clear
                    </button>
                )}
                <span className="text-xs text-neutral-400 ml-auto">{filtered.length} result{filtered.length !== 1 ? 's' : ''}</span>
            </div>

            {filtered.length === 0 ? (
                <div className="flex flex-col items-center py-16 text-center">
                    <Music className="h-10 w-10 text-neutral-300 dark:text-neutral-700 mb-3" />
                    <p className="text-sm font-medium text-neutral-600 dark:text-neutral-400">No songs match your filters</p>
                    <p className="text-xs text-neutral-400 mt-1">Try adjusting your search or filter criteria</p>
                </div>
            ) : (
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                    {filtered.map((song) => (
                        <Link
                            key={song.id}
                            href={`/songs/${song.slug}`}
                            className="group flex items-start gap-4 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all"
                        >
                            <div className="h-10 w-10 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0 mt-0.5 group-hover:bg-neutral-200 dark:group-hover:bg-neutral-700 transition-colors">
                                <Music className="h-4 w-4 text-neutral-500 dark:text-neutral-400" />
                            </div>
                            <div className="min-w-0 space-y-1 flex-1">
                                <h2 className="font-semibold text-neutral-900 dark:text-neutral-100 group-hover:text-neutral-700 dark:group-hover:text-neutral-300 transition-colors truncate">
                                    {song.title}
                                </h2>
                                {song.artist?.name && (
                                    <p className="text-xs text-neutral-500 dark:text-neutral-400 truncate">
                                        {song.artist.name}
                                    </p>
                                )}
                                <div className="flex items-center gap-2 pt-1 flex-wrap">
                                    {song.difficulty && (
                                        <span className="text-xs px-2 py-0.5 rounded-full bg-neutral-100 dark:bg-neutral-800 text-neutral-500 dark:text-neutral-400">
                                            {song.difficulty}
                                        </span>
                                    )}
                                    {song.genre && (
                                        <span className="text-xs px-2 py-0.5 rounded-full bg-neutral-100 dark:bg-neutral-800 text-neutral-500 dark:text-neutral-400">
                                            {song.genre}
                                        </span>
                                    )}
                                    {song.year && (
                                        <span className="text-xs text-neutral-400 dark:text-neutral-500">
                                            {song.year}
                                        </span>
                                    )}
                                </div>
                            </div>
                        </Link>
                    ))}
                </div>
            )}
        </div>
    )
}
