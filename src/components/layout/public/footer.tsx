import React from 'react';
import Link from 'next/link';
import FooterYear from './footer-year';

const footerLinks = [
    { href: '/songs', label: 'Songs' },
    { href: '/artists', label: 'Artists' },
    { href: '/chords', label: 'Chord Library' },
    { href: '/blog', label: 'Blog' },
    { href: '/about-us', label: 'About' },
    { href: '/contact-us', label: 'Contact' },
    { href: '/request', label: 'Request a Song' },
]

const legalLinks = [
    { href: '/privacy', label: 'Privacy' },
    { href: '/terms', label: 'Terms' },
]

export default function Footer() {
    return (
        <footer className="border-t border-border bg-card">
            <div className="m-auto max-w-[1440px] px-4 sm:px-6 lg:px-8 py-10">
                <div className="flex flex-col items-center gap-6">
                    <div className="flex flex-wrap items-center justify-center gap-6">
                        {footerLinks.map((link) => (
                            <Link
                                key={link.href}
                                href={link.href}
                                className="text-sm text-muted-foreground hover:text-foreground transition-colors"
                            >
                                {link.label}
                            </Link>
                        ))}
                    </div>
                    <div className="flex items-center gap-4 text-xs text-muted-foreground">
                        {legalLinks.map((link) => (
                            <Link
                                key={link.href}
                                href={link.href}
                                className="hover:text-muted-foreground dark:hover:text-muted-foreground transition-colors"
                            >
                                {link.label}
                            </Link>
                        ))}
                        <FooterYear />
                    </div>
                </div>
            </div>
        </footer>
    );
}
