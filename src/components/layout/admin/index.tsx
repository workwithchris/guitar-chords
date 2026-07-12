import React from 'react'
import { Sidebar, MobileSidebar } from './sidebar'

export default function AdminLayout({ children }: { children: React.ReactNode }) {
    return (
        <div className="min-h-screen bg-neutral-50 dark:bg-neutral-950">
            <Sidebar />
            <div className="lg:pl-64">
                <header className="sticky top-0 z-40 flex h-14 items-center gap-4 border-b border-neutral-200 bg-white/80 backdrop-blur-sm px-6 dark:border-neutral-800 dark:bg-neutral-950/80">
                    <MobileSidebar />
                    <div className="flex-1" />
                </header>
                <main className="p-6 animate-in fade-in slide-in-from-top-1 duration-300">
                    {children}
                </main>
            </div>
        </div>
    )
}
