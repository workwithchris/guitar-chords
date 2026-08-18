import AdminLayout from '@/components/layout/admin'
import { connection } from 'next/server'
import React from 'react'

// TODO: Cache Components adoption. Refactor this route so this opt-out can be removed.
// See: https://nextjs.org/docs/app/guides/migrating-to-cache-components
export const instant = false;

export default async function Layout({ children }: { children: React.ReactNode }) {
    // Admin pages must render at request time (fresh dashboard stats, auth state).
    await connection()
    return (
        <div>
            <AdminLayout>
                {children}
            </AdminLayout>
        </div>
    )
}
