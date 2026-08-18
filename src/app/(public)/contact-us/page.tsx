import React from 'react'
import type { Metadata } from 'next'
import { Mail, MapPin, Globe } from 'lucide-react'

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export const metadata: Metadata = {
    title: 'Contact Us',
    description: 'Get in touch with the GuitarChords team. We\'d love to hear your feedback and song suggestions.',
    openGraph: {
        title: 'Contact Us - Guitar Chords',
        description: 'Get in touch with the GuitarChords team.',
        url: '/contact-us',
    },
    alternates: { canonical: `${baseUrl}/contact-us` },
}

export default function ContactUsPage() {
    return (
        <div className="space-y-12">
            <div className="space-y-3">
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-foreground">
                    Contact Us
                </h1>
                <p className="text-sm text-muted-foreground max-w-lg">
                    Have questions, suggestions, or feedback? We&apos;d love to hear from you.
                    Reach out through any of the channels below.
                </p>
            </div>

            <div className="border-t border-border" />

            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
                <div className="flex flex-col items-center gap-3 p-6 rounded-xl border border-border bg-card text-center">
                    <div className="h-12 w-12 rounded-full bg-secondary flex items-center justify-center">
                        <Mail className="h-5 w-5 text-muted-foreground" />
                    </div>
                    <h3 className="font-semibold text-foreground">Email</h3>
                    <a
                        href="mailto:hello@techyatraa.com"
                        className="text-sm text-muted-foreground hover:text-foreground transition-colors"
                    >
                        hello@techyatraa.com
                    </a>
                </div>

                <div className="flex flex-col items-center gap-3 p-6 rounded-xl border border-border bg-card text-center">
                    <div className="h-12 w-12 rounded-full bg-secondary flex items-center justify-center">
                        <Globe className="h-5 w-5 text-muted-foreground" />
                    </div>
                    <h3 className="font-semibold text-foreground">Website</h3>
                    <a
                        href="https://techyatraa.com"
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-sm text-muted-foreground hover:text-foreground transition-colors"
                    >
                        techyatraa.com
                    </a>
                </div>

                <div className="flex flex-col items-center gap-3 p-6 rounded-xl border border-border bg-card text-center">
                    <div className="h-12 w-12 rounded-full bg-secondary flex items-center justify-center">
                        <MapPin className="h-5 w-5 text-muted-foreground" />
                    </div>
                    <h3 className="font-semibold text-foreground">Location</h3>
                    <p className="text-sm text-muted-foreground">India</p>
                </div>
            </div>

            <div className="border-t border-border" />

            <div className="text-center space-y-2 pb-8">
                <p className="text-sm text-muted-foreground">
                    Prefer to request a song instead?{' '}
                    <a
                        href="/request"
                        className="font-medium text-foreground hover:underline underline-offset-4"
                    >
                        Go to song request
                    </a>
                </p>
            </div>
        </div>
    )
}
