import React from 'react'
import type { Metadata } from 'next'
import Link from 'next/link'
import { Music, Mail, ArrowRight } from 'lucide-react'

export const metadata: Metadata = {
    title: 'Request a Song - Guitar Chords',
    description: 'Can\'t find the song you\'re looking for? Request it and we\'ll add the guitar chords and lyrics.',
}

export default function RequestSongPage() {
    return (
        <div className="space-y-12">
            <div className="space-y-4">
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                    Request a Song
                </h1>
                <p className="text-sm md:text-base text-neutral-500 dark:text-neutral-400 max-w-lg">
                    Can&apos;t find a song you want to play? Let us know and we&apos;ll add it to our
                    collection as soon as possible.
                </p>
            </div>

            <div className="border-t border-neutral-200 dark:border-neutral-800" />

            <div className="flex flex-col items-center gap-6 p-8 md:p-12 rounded-2xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 text-center">
                <div className="h-14 w-14 rounded-full bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center">
                    <Music className="h-6 w-6 text-neutral-700 dark:text-neutral-300" />
                </div>

                <div className="space-y-2 max-w-md">
                    <h2 className="text-lg font-semibold text-neutral-900 dark:text-neutral-100">
                        Send us your request
                    </h2>
                    <p className="text-sm text-neutral-500 dark:text-neutral-400">
                        Email us the song name and artist, and we&apos;ll work on adding the chords and
                        lyrics to our collection.
                    </p>
                </div>

                <a
                    href="mailto:hello@techyatraa.com?subject=Song%20Request&body=Song%20Name:%0AArtist%20Name:%0AAdditional%20Notes:"
                    className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900 text-sm font-medium hover:bg-neutral-800 dark:hover:bg-neutral-200 transition-colors"
                >
                    <Mail className="h-4 w-4" />
                    Send Request via Email
                </a>

                <p className="text-xs text-neutral-400 dark:text-neutral-500">
                    We typically add requested songs within 1-2 weeks.
                </p>
            </div>

            <div className="flex items-center justify-center gap-6 pt-4">
                <Link
                    href="/songs"
                    className="inline-flex items-center gap-1 text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
                >
                    <ArrowRight className="h-3.5 w-3.5" />
                    Browse existing songs
                </Link>
                <Link
                    href="/contact-us"
                    className="inline-flex items-center gap-1 text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
                >
                    <ArrowRight className="h-3.5 w-3.5" />
                    Other inquiries
                </Link>
            </div>
        </div>
    )
}
