import React from 'react'
import Navbar from './nav/navbar'
import Footer from './footer'
import ScrollProvider from '@/components/layout/scroll-provider'

export default function PublicLayout({ children }: { children: React.ReactNode }) {
    return (
        <ScrollProvider>
            <div className="min-h-screen flex flex-col bg-neutral-50 dark:bg-neutral-950">
                <Navbar />
                <main className="flex-1 m-auto w-full max-w-[1440px] px-4 sm:px-6 lg:px-8 py-10">{children}</main>
                <Footer />
            </div>
        </ScrollProvider>
    )
}
