"use client"

import { useRouter } from 'next/navigation'
import { Search, Music, MicVocal } from 'lucide-react'
import { useEffect, useRef, useState, useCallback } from 'react'
import { searchSongsAndArtists } from '@/store/api/search.api'

export default function CmdkSearch() {
    const router = useRouter()
    const inputRef = useRef<HTMLInputElement>(null)
    const listRef = useRef<HTMLDivElement>(null)
    const dialogRef = useRef<HTMLDivElement>(null)
    const [open, setOpen] = useState(false)
    const [query, setQuery] = useState('')
    const [results, setResults] = useState<any[]>([])
    const [loading, setLoading] = useState(false)
    const [selectedIndex, setSelectedIndex] = useState(0)
    const debounceRef = useRef<ReturnType<typeof setTimeout> | undefined>(undefined)

    useEffect(() => {
        const handleKeyDown = (e: KeyboardEvent) => {
            if ((e.metaKey || e.ctrlKey) && e.key === 'k') {
                e.preventDefault()
                setOpen((v) => !v)
                setQuery('')
                setResults([])
            }
            if (e.key === 'Escape') {
                setOpen(false)
                setQuery('')
                setResults([])
            }
        }
        document.addEventListener('keydown', handleKeyDown)
        return () => document.removeEventListener('keydown', handleKeyDown)
    }, [])

    useEffect(() => {
        if (open) {
            setTimeout(() => inputRef.current?.focus(), 50)
        }
    }, [open])

    const doSearch = useCallback(async (q: string) => {
        if (!q.trim()) {
            setResults([])
            return
        }
        setLoading(true)
        try {
            const res = await searchSongsAndArtists(q)
            setResults(res ?? [])
            setSelectedIndex(0)
        } catch {
            setResults([])
        } finally {
            setLoading(false)
        }
    }, [])

    const handleChange = (val: string) => {
        setQuery(val)
        clearTimeout(debounceRef.current)
        debounceRef.current = setTimeout(() => doSearch(val), 300)
    }

    const close = () => {
        setOpen(false)
        setQuery('')
        setResults([])
    }

    const visit = (item: any) => {
        close()
        if (item.type === 'song') {
            router.push(`/songs/${item.details.slug}`)
        } else {
            router.push(`/artists/${item.details.slug}`)
        }
    }

    const handleKeyDown = (e: React.KeyboardEvent) => {
        if (e.key === 'ArrowDown') {
            e.preventDefault()
            setSelectedIndex((i) => Math.min(i + 1, results.length - 1))
        } else if (e.key === 'ArrowUp') {
            e.preventDefault()
            setSelectedIndex((i) => Math.max(i - 1, 0))
        } else if (e.key === 'Enter' && results[selectedIndex]) {
            e.preventDefault()
            visit(results[selectedIndex])
        } else if (e.key === 'Tab') {
            e.preventDefault()
            const focusable = dialogRef.current?.querySelectorAll<HTMLElement>(
                'input, button, [tabindex]:not([tabindex="-1"])'
            )
            if (!focusable || focusable.length === 0) return
            const currentIndex = Array.from(focusable).indexOf(e.target as HTMLElement)
            const nextIndex = e.shiftKey
                ? (currentIndex - 1 + focusable.length) % focusable.length
                : (currentIndex + 1) % focusable.length
            focusable[nextIndex]?.focus()
        }
    }

    useEffect(() => {
        if (listRef.current && selectedIndex >= 0) {
            const el = listRef.current.children[selectedIndex] as HTMLElement
            el?.scrollIntoView({ block: 'nearest' })
        }
    }, [selectedIndex])

    if (!open) return null

    return (
        <>
            <div
                className="fixed inset-0 z-[100] bg-black/40 backdrop-blur-sm"
                onClick={close}
                aria-hidden="true"
            />
            <div
                ref={dialogRef}
                role="dialog"
                aria-modal="true"
                aria-label="Search songs and artists"
                className="fixed left-1/2 top-[15%] z-[101] w-full max-w-lg -translate-x-1/2"
                onKeyDown={handleKeyDown}
            >
                <div className="rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 shadow-2xl overflow-hidden">
                    <div className="flex items-center gap-3 px-4 border-b border-neutral-200 dark:border-neutral-800">
                        <Search className="h-4 w-4 shrink-0 text-neutral-400" />
                        <input
                            ref={inputRef}
                            value={query}
                            onChange={(e) => handleChange(e.target.value)}
                            onKeyDown={handleKeyDown}
                            placeholder="Search songs or artists..."
                            aria-label="Search query"
                            role="combobox"
                            aria-expanded={results.length > 0}
                            aria-autocomplete="list"
                            aria-controls="cmdk-results"
                            aria-activedescendant={selectedIndex >= 0 ? `cmdk-item-${selectedIndex}` : undefined}
                            className="flex-1 py-4 bg-transparent text-sm text-neutral-900 dark:text-neutral-100 placeholder:text-neutral-400 focus:outline-none"
                        />
                        <kbd className="hidden sm:inline-flex items-center gap-1 px-1.5 py-0.5 rounded border border-neutral-200 dark:border-neutral-800 bg-neutral-50 dark:bg-neutral-800 text-[10px] font-medium text-neutral-400">
                            ESC
                        </kbd>
                    </div>
                    <div
                        ref={listRef}
                        id="cmdk-results"
                        role="listbox"
                        aria-label="Search results"
                        className="max-h-80 overflow-y-auto p-2 space-y-0.5"
                    >
                        {loading && (
                            <p className="px-3 py-6 text-center text-xs text-neutral-400" role="status">Searching...</p>
                        )}
                        {!loading && query && results.length === 0 && (
                            <p className="px-3 py-6 text-center text-xs text-neutral-400" role="status">No results found</p>
                        )}
                        {!query && !loading && (
                            <p className="px-3 py-6 text-center text-xs text-neutral-400">Type to search songs and artists</p>
                        )}
                        {results.map((item, i) => {
                            const isSong = item.type === 'song'
                            const detail = item.details
                            return (
                                <button
                                    key={`${item.type}-${detail.id ?? detail.slug ?? i}`}
                                    id={`cmdk-item-${i}`}
                                    role="option"
                                    aria-selected={i === selectedIndex}
                                    onClick={() => visit(item)}
                                    onMouseEnter={() => setSelectedIndex(i)}
                                    className={`flex w-full items-center gap-3 rounded-lg px-3 py-2.5 text-left text-sm transition-colors ${i === selectedIndex
                                        ? 'bg-neutral-100 dark:bg-neutral-800'
                                        : 'hover:bg-neutral-50 dark:hover:bg-neutral-800/50'
                                        }`}
                                >
                                    <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-lg bg-neutral-100 dark:bg-neutral-800">
                                        {isSong ? (
                                            <Music className="h-4 w-4 text-neutral-500" />
                                        ) : (
                                            <MicVocal className="h-4 w-4 text-neutral-500" />
                                        )}
                                    </div>
                                    <div className="min-w-0 flex-1">
                                        <p className="truncate font-medium text-neutral-900 dark:text-neutral-100">
                                            {isSong ? detail.title : detail.name}
                                        </p>
                                        <p className="truncate text-xs text-neutral-500">
                                            {isSong
                                                ? `${detail.artist?.name ?? 'Unknown'} · Song`
                                                : 'Artist'}
                                        </p>
                                    </div>
                                </button>
                            )
                        })}
                    </div>
                </div>
            </div>
        </>
    )
}
