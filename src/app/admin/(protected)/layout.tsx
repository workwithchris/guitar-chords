import AdminLayout from '@/components/layout/admin'
import React from 'react'

export default function Layout({ children }: { children: React.ReactNode }) {
    return (
        <div>
            <AdminLayout>
                {children}
            </AdminLayout>
        </div>
    )
}
