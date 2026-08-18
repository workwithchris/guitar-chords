import React from "react";
import type { Metadata } from 'next'
import { Music, Users, BookOpen, Heart } from 'lucide-react'

// TODO: Cache Components adoption. Refactor this route so this opt-out can be removed.
// See: https://nextjs.org/docs/app/guides/migrating-to-cache-components
export const instant = false;

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export const metadata: Metadata = {
    title: 'About Us',
    description: 'Learn about GuitarChords by Techyatraa — your destination for free guitar chords and lyrics across all genres.',
    openGraph: {
        title: 'About Us - Guitar Chords',
        description: 'Learn about GuitarChords by Techyatraa — free guitar chords and lyrics.',
        url: '/about-us',
    },
    alternates: { canonical: `${baseUrl}/about-us` },
}

const features = [
    {
        icon: Music,
        title: 'Vast Collection',
        description: 'Extensive library of chords and lyrics across genres and difficulty levels.',
    },
    {
        icon: Users,
        title: 'For Everyone',
        description: 'Whether you\'re a beginner or experienced musician, find songs that match your skill.',
    },
    {
        icon: BookOpen,
        title: 'Easy to Follow',
        description: 'Clear, well-organized chord diagrams and lyrics for a smooth learning experience.',
    },
    {
        icon: Heart,
        title: 'Community Driven',
        description: 'Built with passion for music lovers. Request songs and help us grow.',
    },
]

export default function AboutUsPage() {
    return (
        <div className="space-y-16">
            <section className="space-y-6">
                <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-foreground">
                    About Guitar Chords
                </h1>
                <div className="space-y-4 text-sm md:text-base text-muted-foreground leading-relaxed">
                    <p>
                        GuitarChords by Techyatraa is your destination for guitar enthusiasts. We provide a
                        vast collection of lyrics and chords to your favorite songs, making it easier for you
                        to learn and play along.
                    </p>
                    <p>
                        Our team is dedicated to curating a diverse selection of songs across various genres
                        and difficulty levels. From classic rock anthems to contemporary pop hits, our chord
                        library is constantly expanding.
                    </p>
                    <p>
                        We understand the importance of accessibility, which is why our platform is
                        user-friendly and easy to navigate. You can quickly search for your favorite songs,
                        browse by artist, and access chord diagrams and lyrics with just a few clicks.
                    </p>
                </div>
            </section>

            <div className="border-t border-border" />

            <section className="space-y-8">
                <div className="text-center space-y-2">
                    <h2 className="text-xl md:text-2xl font-semibold tracking-tight text-foreground">
                        What We Offer
                    </h2>
                    <p className="text-sm text-muted-foreground">
                        Everything you need for your guitar journey
                    </p>
                </div>
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                    {features.map((feature) => {
                        const Icon = feature.icon
                        return (
                            <div
                                key={feature.title}
                                className="flex gap-4 p-5 rounded-xl border border-border bg-card"
                            >
                                <div className="h-10 w-10 rounded-lg bg-secondary flex items-center justify-center shrink-0">
                                    <Icon className="h-5 w-5 text-muted-foreground" />
                                </div>
                                <div>
                                    <h3 className="font-semibold text-foreground">
                                        {feature.title}
                                    </h3>
                                    <p className="text-sm text-muted-foreground mt-1">
                                        {feature.description}
                                    </p>
                                </div>
                            </div>
                        )
                    })}
                </div>
            </section>

            <div className="border-t border-border" />

            <section className="text-center space-y-4 pb-8">
                <h2 className="text-xl md:text-2xl font-semibold tracking-tight text-foreground">
                    Join Our Community
                </h2>
                <p className="text-sm text-muted-foreground max-w-md mx-auto">
                    Start exploring our extensive collection, unleash your creativity, and enjoy the thrill
                    of making music with GuitarChords.
                </p>
            </section>
        </div>
    )
}
