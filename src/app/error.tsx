"use client"

import { useEffect } from 'react'
import Link from 'next/link'
import { Music, RefreshCw, Home } from 'lucide-react'

export default function ErrorPage({
    error,
    reset,
}: {
    error: Error & { digest?: string }
    reset: () => void
}) {
    useEffect(() => {
        console.error(error)
    }, [error])

    return (
        <div className="min-h-screen flex items-center justify-center bg-neutral-50 dark:bg-neutral-950">
            <div className="flex flex-col items-center gap-6 text-center px-4">
                <div className="h-16 w-16 rounded-2xl bg-red-50 dark:bg-red-950 flex items-center justify-center">
                    <Music className="h-8 w-8 text-red-400 dark:text-red-500" />
                </div>
                <div className="space-y-2">
                    <h1 className="text-2xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                        Something went wrong
                    </h1>
                    <p className="text-sm text-neutral-500 dark:text-neutral-400 max-w-sm">
                        We hit a wrong note. Try again or go back home.
                    </p>
                </div>
                <div className="flex items-center gap-3">
                    <button
                        onClick={reset}
                        className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900 text-sm font-medium hover:bg-neutral-800 dark:hover:bg-neutral-200 transition-colors"
                    >
                        <RefreshCw className="h-4 w-4" />
                        Try Again
                    </button>
                    <Link
                        href="/"
                        className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg border border-neutral-200 dark:border-neutral-800 text-neutral-700 dark:text-neutral-300 text-sm font-medium hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
                    >
                        <Home className="h-4 w-4" />
                        Home
                    </Link>
                </div>
            </div>
        </div>
    )
}
