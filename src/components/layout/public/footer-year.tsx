"use client"

import { useEffect, useState } from "react"

// Renders the year on the client only — calling new Date() during prerender
// would block cache-components static shells.
export default function FooterYear() {
    const [year, setYear] = useState<number | null>(null)

    useEffect(() => {
        setYear(new Date().getFullYear())
    }, [])

    return <span>&copy; {year ?? 2026} TechYatraa. All rights reserved.</span>
}
