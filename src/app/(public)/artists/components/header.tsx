"use client"
import { useArtistStore } from '@/store/artist.store';
import { List, LayoutGrid } from 'lucide-react'
import React from 'react'

export default function Header() {
    const { renderList, handleRenderList }: any = useArtistStore();
    return (
        <div className="flex items-center justify-between">
            <div>
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                    All Artists
                </h1>
                <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
                    Browse songs by artist
                </p>
            </div>
            <div className="hidden md:flex items-center gap-1 p-1 rounded-lg border border-neutral-200 dark:border-neutral-800 bg-neutral-100 dark:bg-neutral-900">
                <button
                    onClick={() => handleRenderList(false)}
                    className={`p-1.5 rounded-md transition-colors ${!renderList ? 'bg-white dark:bg-neutral-800 shadow-sm' : 'text-neutral-500 hover:text-neutral-900 dark:hover:text-neutral-100'}`}
                >
                    <LayoutGrid className="h-4 w-4" />
                </button>
                <button
                    onClick={() => handleRenderList(true)}
                    className={`p-1.5 rounded-md transition-colors ${renderList ? 'bg-white dark:bg-neutral-800 shadow-sm' : 'text-neutral-500 hover:text-neutral-900 dark:hover:text-neutral-100'}`}
                >
                    <List className="h-4 w-4" />
                </button>
            </div>
        </div>
    )
}
