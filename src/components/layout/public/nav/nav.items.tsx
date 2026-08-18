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
                ? "bg-muted/70 text-foreground"
                : "text-muted-foreground hover:text-foreground hover:bg-secondary"
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
