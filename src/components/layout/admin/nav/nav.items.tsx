"use client"
import Link from "next/link"
import { usePathname } from "next/navigation";

export const NavItems = () => {
    const pathName = usePathname();
    return <div className="flex items-center">
        <nav className="mr-4 flex space-x-4">
            <Link href="/admin/songs">
                <p className={pathName === "/admin/songs" ? "text-white bg-gray-600 rounded-md px-2 py-1" : "text-gray-600 py-1 dark:hover:bg-gray-800 px-2 rounded-md transition-all"}>Songs</p>
            </Link>
            <Link href="/admin/artists">
                <p className={pathName === "/admin/artists" ? "text-white bg-gray-600 rounded-md px-2 py-1" : "text-gray-600 py-1 dark:hover:bg-gray-800 px-2 rounded-md transition-all"}>Artists</p>
            </Link>
            <Link href="/admin/blog">
                <p className={pathName.startsWith("/admin/blog") ? "text-white bg-gray-600 rounded-md px-2 py-1" : "text-gray-600 py-1 dark:hover:bg-gray-800 px-2 rounded-md transition-all"}>Blog</p>
            </Link>
        </nav>
    </div>
}