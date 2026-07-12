import React from 'react'
import Navbar from './nav/navbar'
import Footer from './footer'

export default function PublicLayout({ children }: { children: React.ReactNode }) {
    return (
        <div className="min-h-screen flex flex-col bg-neutral-50 dark:bg-neutral-950">
            <Navbar />
            <main className="flex-1 m-auto w-full max-w-4xl px-4 sm:px-6 lg:px-8 py-10">{children}</main>
            <Footer />
        </div>
    )
}
