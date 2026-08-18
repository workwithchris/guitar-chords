import React from 'react'
import BulkImportForm from './components/form'

export default function BulkImportPage() {
    return (
        <div className="space-y-6">
            <div>
                <h1 className="text-2xl font-bold tracking-tight">Bulk Import Songs</h1>
                <p className="mt-1 text-sm text-muted-foreground">
                    Paste multiple songs at once. One song per line, tab-separated fields.
                </p>
            </div>
            <BulkImportForm />
        </div>
    )
}
