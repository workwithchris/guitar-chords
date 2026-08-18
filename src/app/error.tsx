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
        <div className="min-h-screen flex items-center justify-center bg-background">
            <div className="flex flex-col items-center gap-6 text-center px-4">
                <div className="h-16 w-16 rounded-2xl bg-red-50 dark:bg-red-950 flex items-center justify-center">
                    <Music className="h-8 w-8 text-red-400 dark:text-red-500" />
                </div>
                <div className="space-y-2">
                    <h1 className="text-2xl font-bold tracking-tight text-foreground">
                        Something went wrong
                    </h1>
                    <p className="text-sm text-muted-foreground max-w-sm">
                        We hit a wrong note. Try again or go back home.
                    </p>
                </div>
                <div className="flex items-center gap-3">
                    <button
                        onClick={reset}
                        className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-foreground text-background text-sm font-medium hover:bg-secondary dark:hover:bg-muted transition-colors"
                    >
                        <RefreshCw className="h-4 w-4" />
                        Try Again
                    </button>
                    <Link
                        href="/"
                        className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg border border-border text-muted-foreground text-sm font-medium hover:bg-secondary transition-colors"
                    >
                        <Home className="h-4 w-4" />
                        Home
                    </Link>
                </div>
            </div>
        </div>
    )
}
