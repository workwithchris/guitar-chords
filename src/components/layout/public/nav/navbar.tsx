import { ModeToggle } from '@/components/ui/button/toggle-mode'
import React, { Suspense } from 'react'
import SearchBar from './searchbar'
import Link from 'next/link'
import { NavItems } from './nav.items'
import { Music } from 'lucide-react'

export default function Navbar() {
  return (
    <header className="sticky top-0 z-50 w-full border-b border-neutral-200/60 dark:border-neutral-800/60 bg-white/80 dark:bg-neutral-950/80 backdrop-blur-md supports-[backdrop-filter]:bg-white/60 dark:supports-[backdrop-filter]:bg-neutral-950/60">
      <div className="m-auto max-w-4xl px-4 sm:px-6 lg:px-8">
        <div className="flex h-16 items-center justify-between gap-4">
          <Link href="/" className="flex items-center gap-2 shrink-0">
            <Music className="h-5 w-5 text-neutral-800 dark:text-neutral-200" />
            <span className="text-base md:text-lg font-semibold tracking-tight text-neutral-900 dark:text-neutral-100">
              Guitar Chords
            </span>
          </Link>

          <div className="hidden md:flex items-center gap-1">
            <NavItems />
          </div>

          <div className="flex items-center gap-2">
            <Suspense>
              <SearchBar />
            </Suspense>
            <div className="hidden md:block">
              <ModeToggle />
            </div>
          </div>
        </div>

        <div className="flex md:hidden items-center justify-center gap-2 pb-3">
          <NavItems />
          <ModeToggle />
        </div>
      </div>
    </header>
  )
}
