"use client"
import Link from "next/link"
import { usePathname } from "next/navigation";
import { Heart } from "lucide-react";

const links = [
  { href: "/songs", label: "Songs" },
  { href: "/artists", label: "Artists" },
  { href: "/chords", label: "Chords" },
  { href: "/favorites", label: "Songbook", icon: Heart },
  { href: "/blog", label: "Blog" },
  { href: "/about-us", label: "About" },
]

export const NavItems = () => {
  const pathName = usePathname();

  return (
    <nav className="flex items-center gap-1">
      {links.map((link) => {
        const isActive = pathName.startsWith(link.href)
        const Icon = link.icon
        return (
          <Link
            key={link.href}
            href={link.href}
            className={`px-3 py-1.5 text-sm font-medium rounded-md transition-colors inline-flex items-center gap-1.5 ${
              isActive
                ? "bg-neutral-200/70 dark:bg-neutral-800 text-neutral-900 dark:text-neutral-100"
                : "text-neutral-600 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 hover:bg-neutral-100 dark:hover:bg-neutral-800/50"
            }`}
          >
            {Icon && <Icon className="h-3.5 w-3.5" />}
            {link.label}
          </Link>
        )
      })}
    </nav>
  )
}
