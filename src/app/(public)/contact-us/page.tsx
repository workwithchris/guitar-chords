import React from 'react'
import type { Metadata } from 'next'
import { Mail, MapPin, Globe } from 'lucide-react'

export const metadata: Metadata = {
    title: 'Contact Us - Guitar Chords',
    description: 'Get in touch with the GuitarChords team. We\'d love to hear from you.',
}

export default function ContactUsPage() {
    return (
        <div className="space-y-12">
            <div className="space-y-3">
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                    Contact Us
                </h1>
                <p className="text-sm text-neutral-500 dark:text-neutral-400 max-w-lg">
                    Have questions, suggestions, or feedback? We&apos;d love to hear from you.
                    Reach out through any of the channels below.
                </p>
            </div>

            <div className="border-t border-neutral-200 dark:border-neutral-800" />

            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
                <div className="flex flex-col items-center gap-3 p-6 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 text-center">
                    <div className="h-12 w-12 rounded-full bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center">
                        <Mail className="h-5 w-5 text-neutral-700 dark:text-neutral-300" />
                    </div>
                    <h3 className="font-semibold text-neutral-900 dark:text-neutral-100">Email</h3>
                    <a
                        href="mailto:hello@techyatraa.com"
                        className="text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
                    >
                        hello@techyatraa.com
                    </a>
                </div>

                <div className="flex flex-col items-center gap-3 p-6 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 text-center">
                    <div className="h-12 w-12 rounded-full bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center">
                        <Globe className="h-5 w-5 text-neutral-700 dark:text-neutral-300" />
                    </div>
                    <h3 className="font-semibold text-neutral-900 dark:text-neutral-100">Website</h3>
                    <a
                        href="https://techyatraa.com"
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
                    >
                        techyatraa.com
                    </a>
                </div>

                <div className="flex flex-col items-center gap-3 p-6 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 text-center">
                    <div className="h-12 w-12 rounded-full bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center">
                        <MapPin className="h-5 w-5 text-neutral-700 dark:text-neutral-300" />
                    </div>
                    <h3 className="font-semibold text-neutral-900 dark:text-neutral-100">Location</h3>
                    <p className="text-sm text-neutral-500 dark:text-neutral-400">India</p>
                </div>
            </div>

            <div className="border-t border-neutral-200 dark:border-neutral-800" />

            <div className="text-center space-y-2 pb-8">
                <p className="text-sm text-neutral-500 dark:text-neutral-400">
                    Prefer to request a song instead?{' '}
                    <a
                        href="/request"
                        className="font-medium text-neutral-900 dark:text-neutral-100 hover:underline underline-offset-4"
                    >
                        Go to song request
                    </a>
                </p>
            </div>
        </div>
    )
}
