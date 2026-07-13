"use client"

import React, { useState, useCallback } from 'react'
import {
  Activity,
  RefreshCw,
  AlertTriangle,
  CheckCircle2,
  XCircle,
  FileText,
  Sparkles,
  ChevronDown,
  ChevronRight,
  Music,
  Search,
  Save,
} from 'lucide-react'
import { Button } from '@/components/ui/button/button'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Skeleton } from '@/components/ui/skeleton'
import { toast } from '@/components/ui/toast/use-toast'

type ScanState = 'idle' | 'scanning' | 'done' | 'error'

type MismatchItem = {
  id: number
  title: string
  currentArtist: string
  match: boolean
  confidence: number
  suggestedArtist: string | null
}

type ContentIssue = {
  id: number
  title: string
  artist: string
  key: string | null
  contentLength?: number
  preview?: string
}

export default function DataHealthPage() {
  const [artistState, setArtistState] = useState<ScanState>('idle')
  const [contentState, setContentState] = useState<ScanState>('idle')
  const [mismatches, setMismatches] = useState<MismatchItem[]>([])
  const [mismatchCounts, setMismatchCounts] = useState({ total: 0, mismatched: 0, uncertain: 0 })
  const [missingContent, setMissingContent] = useState<ContentIssue[]>([])
  const [incompleteContent, setIncompleteContent] = useState<ContentIssue[]>([])
  const [contentCounts, setContentCounts] = useState({ total: 0, missing: 0, incomplete: 0 })
  const [generated, setGenerated] = useState<Record<number, string>>({})
  const [generating, setGenerating] = useState<Set<number>>(new Set())
  const [fixingIds, setFixingIds] = useState<Set<number>>(new Set())
  const [savingIds, setSavingIds] = useState<Set<number>>(new Set())
  const [expandedArtist, setExpandedArtist] = useState(false)
  const [expandedMissing, setExpandedMissing] = useState(false)
  const [expandedIncomplete, setExpandedIncomplete] = useState(false)

  const scanArtists = useCallback(async () => {
    setArtistState('scanning')
    try {
      const res = await fetch('/api/admin/ai', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'scan-artists' }),
      })
      if (!res.ok) throw new Error((await res.json()).error)
      const data = await res.json()
      setMismatches(data.items ?? [])
      setMismatchCounts({
        total: data.total,
        mismatched: data.mismatched,
        uncertain: data.uncertain,
      })
      setArtistState('done')
      toast({ title: `Scan complete — ${data.mismatched} mismatches found` })
    } catch (err: any) {
      setArtistState('error')
      toast({ title: 'Artist scan failed', description: err.message, variant: 'destructive' })
    }
  }, [])

  const scanContent = useCallback(async () => {
    setContentState('scanning')
    try {
      const res = await fetch('/api/admin/ai', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'scan-content' }),
      })
      if (!res.ok) throw new Error((await res.json()).error)
      const data = await res.json()
      setMissingContent(data.missingItems ?? [])
      setIncompleteContent(data.incompleteItems ?? [])
      setContentCounts({ total: data.total, missing: data.missing, incomplete: data.incomplete })
      setContentState('done')
      toast({
        title: `Content scan complete — ${data.missing} missing, ${data.incomplete} incomplete`,
      })
    } catch (err: any) {
      setContentState('error')
      toast({ title: 'Content scan failed', description: err.message, variant: 'destructive' })
    }
  }, [])

  const fixArtist = useCallback(async (songId: number, artistName: string) => {
    setFixingIds((prev) => new Set(prev).add(songId))
    try {
      const res = await fetch('/api/admin/ai', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'fix-artist', songId, artistName }),
      })
      if (!res.ok) throw new Error((await res.json()).error)
      setMismatches((prev) => prev.filter((m) => m.id !== songId))
      toast({ title: 'Artist fixed!' })
    } catch (err: any) {
      toast({ title: 'Fix failed', description: err.message, variant: 'destructive' })
    } finally {
      setFixingIds((prev) => {
        const next = new Set(prev)
        next.delete(songId)
        return next
      })
    }
  }, [])

  const generateContent = useCallback(async (item: ContentIssue) => {
    setGenerating((prev) => new Set(prev).add(item.id))
    try {
      const res = await fetch('/api/admin/ai', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          action: 'generate-content',
          title: item.title,
          artist: item.artist,
          key: item.key,
        }),
      })
      if (!res.ok) throw new Error((await res.json()).error)
      const data = await res.json()
      setGenerated((prev) => ({ ...prev, [item.id]: data.content }))
    } catch (err: any) {
      toast({ title: 'Generation failed', description: err.message, variant: 'destructive' })
    } finally {
      setGenerating((prev) => {
        const next = new Set(prev)
        next.delete(item.id)
        return next
      })
    }
  }, [])

  const saveContent = useCallback(async (songId: number, content: string) => {
    setSavingIds((prev) => new Set(prev).add(songId))
    try {
      const res = await fetch('/api/admin/ai', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'save-content', songId, content }),
      })
      if (!res.ok) throw new Error((await res.json()).error)
      setMissingContent((prev) => prev.filter((m) => m.id !== songId))
      setIncompleteContent((prev) => prev.filter((m) => m.id !== songId))
      setGenerated((prev) => {
        const next = { ...prev }
        delete next[songId]
        return next
      })
      toast({ title: 'Content saved!' })
    } catch (err: any) {
      toast({ title: 'Save failed', description: err.message, variant: 'destructive' })
    } finally {
      setSavingIds((prev) => {
        const next = new Set(prev)
        next.delete(songId)
        return next
      })
    }
  }, [])

  return (
    <div className="space-y-8">
      <div>
        <h1 className="text-2xl font-bold tracking-tight">Data Health</h1>
        <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
          AI-powered tools to clean up your song library
        </p>
      </div>

      <div className="flex flex-wrap gap-4">
        <Card className="flex-1 min-w-[200px]">
          <CardContent className="p-6">
            <div className="flex items-center gap-3">
              <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-red-100 dark:bg-red-950">
                <AlertTriangle className="h-5 w-5 text-red-600 dark:text-red-400" />
              </div>
              <div>
                <p className="text-2xl font-bold">{mismatchCounts.mismatched}</p>
                <p className="text-xs text-neutral-500">Artist mismatches</p>
              </div>
            </div>
          </CardContent>
        </Card>
        <Card className="flex-1 min-w-[200px]">
          <CardContent className="p-6">
            <div className="flex items-center gap-3">
              <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-amber-100 dark:bg-amber-950">
                <FileText className="h-5 w-5 text-amber-600 dark:text-amber-400" />
              </div>
              <div>
                <p className="text-2xl font-bold">{contentCounts.missing}</p>
                <p className="text-xs text-neutral-500">Missing content</p>
              </div>
            </div>
          </CardContent>
        </Card>
        <Card className="flex-1 min-w-[200px]">
          <CardContent className="p-6">
            <div className="flex items-center gap-3">
              <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-orange-100 dark:bg-orange-950">
                <FileText className="h-5 w-5 text-orange-600 dark:text-orange-400" />
              </div>
              <div>
                <p className="text-2xl font-bold">{contentCounts.incomplete}</p>
                <p className="text-xs text-neutral-500">Incomplete content</p>
              </div>
            </div>
          </CardContent>
        </Card>
      </div>

      <Card>
        <CardHeader className="flex flex-row items-center justify-between">
          <CardTitle className="text-lg flex items-center gap-2">
            <Search className="h-4 w-4" />
            Artist Mismatch Scanner
          </CardTitle>
          <Button
            size="sm"
            onClick={scanArtists}
            disabled={artistState === 'scanning'}
            className="gap-2"
          >
            <RefreshCw
              className={`h-4 w-4 ${artistState === 'scanning' ? 'animate-spin' : ''}`}
            />
            {artistState === 'scanning' ? 'Scanning...' : 'Scan Artists'}
          </Button>
        </CardHeader>
        <CardContent className="space-y-4">
          {artistState === 'idle' && (
            <p className="text-sm text-neutral-500">
              Scan your library to find songs where the artist might be wrong.
              AI will compare song titles against artist names.
            </p>
          )}
          {artistState === 'scanning' && (
            <div className="space-y-3">
              {[1, 2, 3].map((i) => (
                <Skeleton key={i} className="h-12 w-full rounded-lg" />
              ))}
              <p className="text-sm text-neutral-400 text-center">
                Analyzing {mismatchCounts.total || '...'} songs with AI...
              </p>
            </div>
          )}
          {artistState === 'done' && mismatches.length === 0 && (
            <div className="flex flex-col items-center py-8 text-center">
              <CheckCircle2 className="h-10 w-10 text-emerald-500 mb-3" />
              <p className="text-sm font-medium">No mismatches found!</p>
              <p className="text-xs text-neutral-500 mt-1">
                All {mismatchCounts.total} songs appear to have the correct artist.
              </p>
            </div>
          )}
          {mismatches.length > 0 && (
            <div>
              <button
                onClick={() => setExpandedArtist(!expandedArtist)}
                className="flex items-center gap-2 text-sm font-medium text-neutral-700 dark:text-neutral-300 mb-3 hover:text-neutral-900 dark:hover:text-neutral-100"
              >
                {expandedArtist ? (
                  <ChevronDown className="h-4 w-4" />
                ) : (
                  <ChevronRight className="h-4 w-4" />
                )}
                {mismatches.length} suspicious songs —
                click to {expandedArtist ? 'hide' : 'review'}
              </button>
              {expandedArtist && (
                <div className="space-y-2 max-h-[500px] overflow-y-auto">
                  {mismatches.map((item) => (
                    <div
                      key={item.id}
                      className="flex items-center gap-3 p-3 rounded-lg border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900"
                    >
                      <AlertTriangle className="h-4 w-4 text-amber-500 shrink-0" />
                      <div className="flex-1 min-w-0">
                        <p className="text-sm font-medium truncate">{item.title}</p>
                        <p className="text-xs text-neutral-500">
                          Currently: <span className="text-red-500">{item.currentArtist}</span>
                          {item.suggestedArtist && (
                            <>
                              {' → '}
                              <span className="text-emerald-500">{item.suggestedArtist}</span>
                            </>
                          )}
                          <span className="ml-2 text-neutral-400">
                            ({(item.confidence * 100).toFixed(0)}% confidence)
                          </span>
                        </p>
                      </div>
                          {item.suggestedArtist && (
                            <span className="shrink-0">
                              <Badge
                                variant="outline"
                                className="cursor-pointer hover:bg-emerald-50 dark:hover:bg-emerald-950 border-emerald-300 text-emerald-700 dark:text-emerald-400"
                                onClick={() => fixArtist(item.id, item.suggestedArtist!)}
                              >
                                {fixingIds.has(item.id) ? 'Fixing...' : 'Auto-fix'}
                              </Badge>
                            </span>
                          )}
                    </div>
                  ))}
                </div>
              )}
            </div>
          )}
          {artistState === 'error' && (
            <p className="text-sm text-red-500">
              Scan failed. Check that your AI API key is configured in .env.
            </p>
          )}
        </CardContent>
      </Card>

      <Card>
        <CardHeader className="flex flex-row items-center justify-between">
          <CardTitle className="text-lg flex items-center gap-2">
            <FileText className="h-4 w-4" />
            Content Scanner
          </CardTitle>
          <Button
            size="sm"
            onClick={scanContent}
            disabled={contentState === 'scanning'}
            className="gap-2"
          >
            <RefreshCw
              className={`h-4 w-4 ${contentState === 'scanning' ? 'animate-spin' : ''}`}
            />
            {contentState === 'scanning' ? 'Scanning...' : 'Scan Content'}
          </Button>
        </CardHeader>
        <CardContent className="space-y-4">
          {contentState === 'idle' && (
            <p className="text-sm text-neutral-500">
              Find songs with missing or incomplete chord/lyric content.
              AI can generate new content or fill in missing sections.
            </p>
          )}
          {contentState === 'scanning' && (
            <div className="space-y-3">
              {[1, 2].map((i) => (
                <Skeleton key={i} className="h-12 w-full rounded-lg" />
              ))}
            </div>
          )}
          {contentState === 'done' && missingContent.length === 0 && incompleteContent.length === 0 && (
            <div className="flex flex-col items-center py-8 text-center">
              <CheckCircle2 className="h-10 w-10 text-emerald-500 mb-3" />
              <p className="text-sm font-medium">All songs have content!</p>
              <p className="text-xs text-neutral-500 mt-1">
                All {contentCounts.total} songs have complete chord sheets.
              </p>
            </div>
          )}
          {contentState === 'error' && (
            <p className="text-sm text-red-500">Content scan failed.</p>
          )}

          {missingContent.length > 0 && (
            <div>
              <button
                onClick={() => setExpandedMissing(!expandedMissing)}
                className="flex items-center gap-2 text-sm font-medium text-neutral-700 dark:text-neutral-300 mb-3 hover:text-neutral-900 dark:hover:text-neutral-100"
              >
                {expandedMissing ? (
                  <ChevronDown className="h-4 w-4" />
                ) : (
                  <ChevronRight className="h-4 w-4" />
                )}
                <Badge variant="secondary">{missingContent.length}</Badge> songs with no content —
                click to {expandedMissing ? 'hide' : 'show'}
              </button>
              {expandedMissing && (
                <div className="space-y-3 max-h-[600px] overflow-y-auto">
                  {missingContent.map((item) => {
                    const hasGenerated = generated[item.id]
                    return (
                      <div
                        key={item.id}
                        className="p-3 rounded-lg border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 space-y-3"
                      >
                        <div className="flex items-center gap-3">
                          <Music className="h-4 w-4 text-neutral-400 shrink-0" />
                          <div className="flex-1 min-w-0">
                            <p className="text-sm font-medium truncate">{item.title}</p>
                            <p className="text-xs text-neutral-500">{item.artist}</p>
                          </div>
                          <Button
                            size="sm"
                            variant={hasGenerated ? 'outline' : 'default'}
                            onClick={() => generateContent(item)}
                            disabled={generating.has(item.id)}
                            className="gap-1.5 shrink-0"
                          >
                            <Sparkles className="h-3.5 w-3.5" />
                            {generating.has(item.id)
                              ? 'Generating...'
                              : hasGenerated
                                ? 'Regenerate'
                                : 'Generate'}
                          </Button>
                        </div>
                        {hasGenerated && (
                          <div className="space-y-2">
                            <pre className="text-xs font-mono bg-neutral-50 dark:bg-neutral-950 p-3 rounded-lg max-h-48 overflow-y-auto whitespace-pre-wrap">
                              {hasGenerated}
                            </pre>
                            <div className="flex justify-end">
                              <Button
                                size="sm"
                                onClick={() => saveContent(item.id, hasGenerated)}
                                disabled={savingIds.has(item.id)}
                                className="gap-1.5"
                              >
                                <Save className="h-3.5 w-3.5" />
                                {savingIds.has(item.id) ? 'Saving...' : 'Save to Database'}
                              </Button>
                            </div>
                          </div>
                        )}
                      </div>
                    )
                  })}
                </div>
              )}
            </div>
          )}

          {incompleteContent.length > 0 && (
            <div>
              <button
                onClick={() => setExpandedIncomplete(!expandedIncomplete)}
                className="flex items-center gap-2 text-sm font-medium text-neutral-700 dark:text-neutral-300 mb-3 hover:text-neutral-900 dark:hover:text-neutral-100"
              >
                {expandedIncomplete ? (
                  <ChevronDown className="h-4 w-4" />
                ) : (
                  <ChevronRight className="h-4 w-4" />
                )}
                <Badge variant="secondary">{incompleteContent.length}</Badge> songs with incomplete
                content — click to {expandedIncomplete ? 'hide' : 'show'}
              </button>
              {expandedIncomplete && (
                <div className="space-y-3 max-h-[600px] overflow-y-auto">
                  {incompleteContent.map((item) => {
                    const hasGenerated = generated[item.id]
                    return (
                      <div
                        key={item.id}
                        className="p-3 rounded-lg border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 space-y-3"
                      >
                        <div className="flex items-center gap-3">
                          <AlertTriangle className="h-4 w-4 text-orange-400 shrink-0" />
                          <div className="flex-1 min-w-0">
                            <p className="text-sm font-medium truncate">{item.title}</p>
                            <p className="text-xs text-neutral-500">
                              {item.artist} · {item.contentLength} chars
                            </p>
                          </div>
                          <Button
                            size="sm"
                            variant={hasGenerated ? 'outline' : 'default'}
                            onClick={() => generateContent(item)}
                            disabled={generating.has(item.id)}
                            className="gap-1.5 shrink-0"
                          >
                            <Sparkles className="h-3.5 w-3.5" />
                            {generating.has(item.id)
                              ? 'Completing...'
                              : hasGenerated
                                ? 'Regenerate'
                                : 'Complete'}
                          </Button>
                        </div>
                        {!hasGenerated && item.preview && (
                          <pre className="text-xs font-mono text-neutral-500 truncate">
                            {item.preview}...
                          </pre>
                        )}
                        {hasGenerated && (
                          <div className="space-y-2">
                            <pre className="text-xs font-mono bg-neutral-50 dark:bg-neutral-950 p-3 rounded-lg max-h-48 overflow-y-auto whitespace-pre-wrap">
                              {hasGenerated}
                            </pre>
                            <div className="flex justify-end">
                              <Button
                                size="sm"
                                onClick={() => saveContent(item.id, hasGenerated)}
                                disabled={savingIds.has(item.id)}
                                className="gap-1.5"
                              >
                                <Save className="h-3.5 w-3.5" />
                                {savingIds.has(item.id) ? 'Saving...' : 'Save to Database'}
                              </Button>
                            </div>
                          </div>
                        )}
                      </div>
                    )
                  })}
                </div>
              )}
            </div>
          )}
        </CardContent>
      </Card>
    </div>
  )
}
