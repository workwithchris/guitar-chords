"use client"
import React, { useState } from 'react'
import { useRouter } from 'next/navigation'
import { Button } from '@/components/ui/button/button'
import { Card, CardContent } from '@/components/ui/card'
import { addSong } from '@/store/api/song.api'
import { toast } from '@/components/ui/toast/use-toast'
import { titleToSlug } from '@/lib/title-to-slug'
import { Upload, FileText, CheckCircle, AlertCircle } from 'lucide-react'

const FORMAT_HINT = `Format: one song per line, tab-separated:
Title<TAB>ArtistId<TAB>Key<TAB>Difficulty<TAB>Genre<TAB>Year

Example:
Wonderwall	1	G	Intermediate	Rock	1995
Hotel California	2	Bm	Advanced	Rock	1976
Tears in Heaven	3	A	Intermediate	Pop	1992`

export default function BulkImportForm() {
    const router = useRouter()
    const [raw, setRaw] = useState('')
    const [loading, setLoading] = useState(false)
    const [results, setResults] = useState<{ success: number; failed: number; errors: string[] } | null>(null)

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault()
        if (!raw.trim()) {
            toast({ title: 'Paste at least one song' })
            return
        }

        setLoading(true)
        setResults(null)

        const lines = raw.trim().split('\n').filter(Boolean)
        let success = 0
        let failed = 0
        const errors: string[] = []

        for (const line of lines) {
            const parts = line.split('\t')
            if (parts.length < 2) {
                failed++
                errors.push(`Invalid line: "${line}" — need at least Title and ArtistId`)
                continue
            }

            const [title, artistId, key, difficulty, genre, year] = parts
            const slug = titleToSlug(title)

            try {
                await addSong({
                    title,
                    slug,
                    artistId: parseInt(artistId),
                    key: key || null,
                    difficulty: difficulty || 'Beginner',
                    genre: genre || null,
                    year: year ? parseInt(year) : null,
                    isActive: true,
                })
                success++
            } catch (err: any) {
                failed++
                errors.push(`Failed to import "${title}": ${err.message}`)
            }
        }

        setResults({ success, failed, errors })
        setLoading(false)
    }

    return (
        <form onSubmit={handleSubmit} className="space-y-6 max-w-3xl">
            <Card>
                <CardContent className="p-6 space-y-4">
                    <div className="flex items-start gap-3 p-3 rounded-lg bg-neutral-50 dark:bg-neutral-900 text-xs text-neutral-500 dark:text-neutral-400">
                        <FileText className="h-4 w-4 mt-0.5 shrink-0" />
                        <pre className="whitespace-pre-wrap font-mono text-xs leading-relaxed">{FORMAT_HINT}</pre>
                    </div>
                    <textarea
                        value={raw}
                        onChange={(e) => setRaw(e.target.value)}
                        placeholder="Paste songs here (tab-separated)..."
                        className="flex min-h-[300px] w-full rounded-md border border-input bg-transparent px-3 py-2 text-sm shadow-sm placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:cursor-not-allowed disabled:opacity-50 font-mono"
                        disabled={loading}
                    />
                </CardContent>
            </Card>

            <div className="flex gap-3">
                <Button type="submit" disabled={loading || !raw.trim()} className="gap-2">
                    <Upload className="h-4 w-4" />
                    {loading ? 'Importing...' : `Import ${raw.trim().split('\n').filter(Boolean).length} songs`}
                </Button>
                <Button type="button" variant="outline" onClick={() => router.back()}>
                    Cancel
                </Button>
            </div>

            {results && (
                <Card>
                    <CardContent className="p-6 space-y-3">
                        <h3 className="font-semibold text-neutral-900 dark:text-neutral-100">Import Results</h3>
                        <div className="flex gap-4 text-sm">
                            <span className="inline-flex items-center gap-1.5 text-emerald-600">
                                <CheckCircle className="h-4 w-4" />
                                {results.success} imported
                            </span>
                            {results.failed > 0 && (
                                <span className="inline-flex items-center gap-1.5 text-red-500">
                                    <AlertCircle className="h-4 w-4" />
                                    {results.failed} failed
                                </span>
                            )}
                        </div>
                        {results.errors.length > 0 && (
                            <div className="max-h-40 overflow-y-auto space-y-1">
                                {results.errors.map((err, i) => (
                                    <p key={i} className="text-xs text-red-500">{err}</p>
                                ))}
                            </div>
                        )}
                        {results.failed === 0 && (
                            <p className="text-xs text-neutral-500">
                                All songs imported successfully!{' '}
                                <button type="button" onClick={() => router.push('/admin/songs')} className="underline hover:text-neutral-900 dark:hover:text-neutral-100">
                                    View songs
                                </button>
                            </p>
                        )}
                    </CardContent>
                </Card>
            )}
        </form>
    )
}
