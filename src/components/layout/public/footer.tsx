import React from 'react';
import Link from 'next/link';

const footerLinks = [
    { href: '/songs', label: 'Songs' },
    { href: '/artists', label: 'Artists' },
    { href: '/about-us', label: 'About' },
    { href: '/contact-us', label: 'Contact' },
    { href: '/request', label: 'Request a Song' },
]

export default function Footer() {
    const currentYear = new Date().getFullYear();
    return (
        <footer className="border-t border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-950">
            <div className="m-auto max-w-4xl px-4 sm:px-6 lg:px-8 py-10">
                <div className="flex flex-col sm:flex-row items-center justify-between gap-6">
                    <div className="flex flex-wrap items-center justify-center gap-6">
                        {footerLinks.map((link) => (
                            <Link
                                key={link.href}
                                href={link.href}
                                className="text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
                            >
                                {link.label}
                            </Link>
                        ))}
                    </div>
                    <p className="text-sm text-neutral-400 dark:text-neutral-500">
                        &copy; {currentYear} TechYatraa. All rights reserved.
                    </p>
                </div>
            </div>
        </footer>
    );
}
