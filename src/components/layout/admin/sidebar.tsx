"use client"

import Link from "next/link"
import { usePathname } from "next/navigation"
import { LayoutDashboard, Music, Users, LogOut, Menu } from "lucide-react"
import { Button } from "@/components/ui/button/button"
import { ModeToggle } from "@/components/ui/button/toggle-mode"
import { useAuthStore } from "@/store/auth.store"
import { useRouter } from "next/navigation"
import { cn } from "@/lib/utils"
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet"

const navItems = [
  { href: "/admin", label: "Dashboard", icon: LayoutDashboard, exact: true },
  { href: "/admin/songs", label: "Songs", icon: Music },
  { href: "/admin/artists", label: "Artists", icon: Users },
]

function NavLinks({ onNavigate }: { onNavigate?: () => void }) {
  const pathname = usePathname()

  return (
    <nav className="flex-1 space-y-1 px-3 py-4">
      {navItems.map((item) => {
        const isActive = item.exact
          ? pathname === item.href
          : pathname.startsWith(item.href)
        return (
          <Link
            key={item.href}
            href={item.href}
            onClick={onNavigate}
            className={cn(
              "flex items-center gap-3 rounded-lg px-3 py-2.5 text-sm font-medium transition-all duration-200",
              isActive
                ? "bg-neutral-800 text-white dark:bg-neutral-700 shadow-sm"
                : "text-neutral-400 hover:bg-neutral-800/50 hover:text-neutral-200"
            )}
          >
            <item.icon className={cn("h-4 w-4 shrink-0", isActive && "text-white")} />
            {item.label}
          </Link>
        )
      })}
    </nav>
  )
}

function SidebarContent() {
  const router = useRouter()
  const { signOut }: any = useAuthStore()

  return (
    <div className="flex h-full flex-col bg-neutral-950 dark:bg-neutral-900">
      <div className="flex h-14 items-center border-b border-neutral-800 px-6">
        <Link href="/admin" className="flex items-center gap-2.5 group">
          <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-white group-hover:bg-neutral-100 transition-colors">
            <span className="text-xs font-bold text-neutral-950">GC</span>
          </div>
          <span className="font-semibold text-white">Guitar Chords</span>
        </Link>
      </div>
      <NavLinks />
      <div className="border-t border-neutral-800 p-4 space-y-3">
        <div className="flex items-center justify-between px-1">
          <span className="text-xs text-neutral-600">Theme</span>
          <ModeToggle />
        </div>
        <Button
          variant="ghost"
          className="w-full justify-start gap-3 text-neutral-400 hover:text-white hover:bg-neutral-800/50"
          onClick={() => {
            signOut().then(() => router.push("/admin/login"))
          }}
        >
          <LogOut className="h-4 w-4" />
          Logout
        </Button>
      </div>
    </div>
  )
}

export function Sidebar() {
  return (
    <aside className="hidden lg:fixed lg:inset-y-0 lg:flex lg:w-64 lg:flex-col">
      <SidebarContent />
    </aside>
  )
}

export function MobileSidebar() {
  return (
    <Sheet>
      <SheetTrigger asChild>
        <Button variant="ghost" size="icon" className="lg:hidden">
          <Menu className="h-5 w-5" />
        </Button>
      </SheetTrigger>
      <SheetContent side="left" className="w-64 p-0">
        <SidebarContent />
      </SheetContent>
    </Sheet>
  )
}
