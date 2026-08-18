"use client"

import { useState } from "react"
import Link from "next/link"
import { usePathname } from "next/navigation"
import { Menu, Heart } from "lucide-react"

import {
  Sheet,
  SheetContent,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet"
import { ModeToggle } from "@/components/ui/button/toggle-mode"
import { cn } from "@/lib/utils"

type NavLink = { href: string; label: string; icon?: typeof Heart }

const links: NavLink[] = [
  { href: "/songs", label: "Songs" },
  { href: "/artists", label: "Artists" },
  { href: "/favorites", label: "Songbook", icon: Heart },
  { href: "/blog", label: "Blog" },
  { href: "/about-us", label: "About" },
]

export default function MobileNav() {
  const [open, setOpen] = useState(false)
  const pathName = usePathname()

  return (
    <Sheet open={open} onOpenChange={setOpen}>
      <SheetTrigger
        aria-label="Open menu"
        className="inline-flex md:hidden h-10 w-10 items-center justify-center rounded-md text-muted-foreground hover:bg-secondary transition-colors"
      >
        <Menu className="h-5 w-5" />
      </SheetTrigger>
      <SheetContent side="left" className="w-72 p-0">
        <SheetHeader className="border-b border-border px-6 py-5">
          <SheetTitle className="text-left">Guitar Chords</SheetTitle>
        </SheetHeader>
        <nav className="flex flex-col gap-1 px-3 py-4">
          {links.map((link) => {
            const isActive = pathName.startsWith(link.href)
            const Icon = link.icon
            return (
              <Link
                key={link.href}
                href={link.href}
                onClick={() => setOpen(false)}
                className={cn(
                  "px-3 py-2.5 rounded-lg text-sm font-medium transition-colors inline-flex items-center gap-2",
                  isActive
                    ? "bg-muted/70 text-foreground"
                    : "text-muted-foreground hover:text-foreground hover:bg-secondary"
                )}
              >
                {Icon ? <Icon className="h-4 w-4" /> : null}
                {link.label}
              </Link>
            )
          })}
        </nav>
        <div className="mt-auto px-6 py-4 border-t border-border">
          <ModeToggle />
        </div>
      </SheetContent>
    </Sheet>
  )
}