"use client"
import { z } from 'zod'
import { useForm } from 'react-hook-form'
import { zodResolver } from '@hookform/resolvers/zod'
import { Button } from '@/components/ui/button/button';
import TextEditor from '@/components/ui/form/editor';
import { Input } from '@/components/ui/form/input';
import { Label } from '@/components/ui/form/label';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/form/select';
import { toast } from '@/components/ui/toast/use-toast';
import { titleToSlug } from '@/lib/title-to-slug';
import { useArtistStore } from '@/store/artist.store';
import { useSongStore } from '@/store/song.store';
import { Card, CardContent } from '@/components/ui/card';
import { useRouter } from 'next/navigation';
import { ArrowLeft, ArrowUpDown } from 'lucide-react';
import Link from 'next/link';
import React, { useEffect } from 'react'

const DIFFICULTY_OPTIONS = ['Beginner', 'Intermediate', 'Advanced']
const TUNING_OPTIONS = ['EADGBE', 'Drop D', 'Open G', 'Open D', 'Half Step Down', 'DADGAD']
const KEYS = ['C', 'C#', 'Db', 'D', 'D#', 'Eb', 'E', 'F', 'F#', 'Gb', 'G', 'G#', 'Ab', 'A', 'A#', 'Bb', 'B']

const songSchema = z.object({
    title: z.string().min(1, "Title is required"),
    slug: z.string().min(1, "Slug is required"),
    content: z.string().optional(),
    videoUrl: z.string().optional(),
    image: z.string().optional(),
    writtenBy: z.string().optional(),
    artistId: z.string().min(1, "Artist is required"),
    year: z.number().optional(),
    key: z.string().optional(),
    capo: z.number().optional(),
    tuning: z.string().optional(),
    difficulty: z.string().optional(),
    genre: z.string().optional(),
})

type SongFormValues = z.infer<typeof songSchema>

export default function SongForm({ initialData }: { initialData?: any }) {
    const isEditing = !!initialData
    const router = useRouter()
    const { artistsDropdown, fetchDropdown }: any = useArtistStore();
    const { add, update }: any = useSongStore();

    const { register, handleSubmit, setValue, watch, reset, formState: { isSubmitting, errors } } = useForm<SongFormValues>({
        resolver: zodResolver(songSchema),
        defaultValues: {
            title: initialData?.title ?? "",
            slug: initialData?.slug ?? "",
            content: initialData?.content ?? "",
            videoUrl: initialData?.videoUrl ?? "",
            image: initialData?.image ?? "",
            writtenBy: initialData?.writtenBy ?? "",
            artistId: initialData?.artistId?.toString() ?? "",
            year: initialData?.year ?? new Date().getFullYear(),
            key: initialData?.key ?? "",
            capo: initialData?.capo ?? 0,
            tuning: initialData?.tuning ?? "EADGBE",
            difficulty: initialData?.difficulty ?? "Beginner",
            genre: initialData?.genre ?? "",
        },
    })

    useEffect(() => {
        fetchDropdown();
    }, [fetchDropdown])

    const onSubmit = async (values: SongFormValues) => {
        try {
            if (isEditing) {
                await update(initialData.id, values)
                toast({ title: 'Song updated', description: 'Changes saved successfully' })
            } else {
                await add(values)
                toast({ title: 'Song added', description: 'New song has been created' })
                reset()
            }
            router.push('/admin/songs')
        } catch {
            toast({ title: isEditing ? 'Failed to update song' : 'Failed to add song', variant: 'destructive' })
        }
    }

    const inputClass = (field: string) =>
        errors[field as keyof typeof errors]
            ? 'border-red-500 focus-visible:ring-red-500'
            : ''

    return (
        <form onSubmit={handleSubmit(onSubmit)}>
            <div className="mb-8 flex items-center gap-4">
                <Link
                    href="/admin/songs"
                    className="flex h-8 w-8 items-center justify-center rounded-lg border border-border hover:bg-secondary dark:border-border dark:hover:bg-secondary transition-colors"
                >
                    <ArrowLeft className="h-4 w-4" />
                </Link>
                <div className="flex-1">
                    <div className="flex items-center gap-2 text-sm text-muted-foreground">
                        <Link href="/admin/songs" className="hover:text-foreground transition-colors">Songs</Link>
                        <span>/</span>
                        <span className="text-foreground font-medium">{isEditing ? initialData.title : 'New Song'}</span>
                    </div>
                </div>
                <div className="flex gap-3">
                    <Button type="button" variant="outline" onClick={() => router.push('/admin/songs')}>
                        Cancel
                    </Button>
                    <Button type="submit" disabled={isSubmitting}>
                        {isSubmitting ? 'Saving...' : isEditing ? 'Save Changes' : 'Add Song'}
                    </Button>
                </div>
            </div>

            <div className="space-y-8">
                <Card>
                    <CardContent className="p-8 space-y-8">
                        <div className="flex items-center gap-3 pb-1 border-b border-border">
                            <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-secondary">
                                <ArrowUpDown className="h-4 w-4 text-muted-foreground" />
                            </div>
                            <div>
                                <h2 className="text-base font-semibold">Song Details</h2>
                                <p className="text-sm text-muted-foreground">Basic information and musical properties</p>
                            </div>
                        </div>

                        <div className="space-y-6">
                            <div className="space-y-2">
                                <Label htmlFor="title" className="text-base">Title</Label>
                                <Input
                                    id="title"
                                    placeholder="e.g. Wonderwall"
                                    className={`h-11 text-base ${inputClass('title')}`}
                                    {...register("title", { onChange: (e) => setValue("slug", titleToSlug(e.target.value)) })}
                                />
                                {errors.title && <p className="text-xs text-red-500">{errors.title.message}</p>}
                            </div>

                            <div className="space-y-2">
                                <Label htmlFor="slug">Slug</Label>
                                <Input id="slug" disabled value={watch("slug")} className="h-11 bg-background dark:bg-secondary text-muted-foreground" />
                                <p className="text-xs text-muted-foreground">Auto-generated from title</p>
                            </div>
                        </div>

                        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-x-6 gap-y-5">
                            <div className="space-y-2">
                                <Label htmlFor="artist">Artist</Label>
                                <Select value={watch("artistId")} onValueChange={(val) => setValue("artistId", val)}>
                                    <SelectTrigger id="artist" className={inputClass('artistId')}>
                                        <SelectValue placeholder="Select artist" />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {(artistsDropdown ?? []).map((artist: any) => (
                                            <SelectItem key={artist.value} value={artist.value.toString()}>{artist.label}</SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                                {errors.artistId && <p className="text-xs text-red-500">{errors.artistId.message}</p>}
                            </div>

                            <div className="space-y-2">
                                <Label htmlFor="genre">Genre</Label>
                                <Input id="genre" {...register("genre")} placeholder="Rock, Pop..." className="h-11" />
                            </div>

                            <div className="space-y-2">
                                <Label htmlFor="key">Key</Label>
                                <Select value={watch("key") ?? ""} onValueChange={(val) => setValue("key", val)}>
                                    <SelectTrigger id="key">
                                        <SelectValue placeholder="Select key" />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {KEYS.map((k) => (
                                            <SelectItem key={k} value={k}>{k}</SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </div>

                            <div className="space-y-2">
                                <Label htmlFor="difficulty">Difficulty</Label>
                                <Select value={watch("difficulty") ?? "Beginner"} onValueChange={(val) => setValue("difficulty", val)}>
                                    <SelectTrigger id="difficulty">
                                        <SelectValue placeholder="Difficulty" />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {DIFFICULTY_OPTIONS.map((d) => (
                                            <SelectItem key={d} value={d}>{d}</SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </div>

                            <div className="space-y-2">
                                <Label htmlFor="tuning">Tuning</Label>
                                <Select value={watch("tuning") ?? "EADGBE"} onValueChange={(val) => setValue("tuning", val)}>
                                    <SelectTrigger id="tuning">
                                        <SelectValue placeholder="Tuning" />
                                    </SelectTrigger>
                                    <SelectContent>
                                        {TUNING_OPTIONS.map((t) => (
                                            <SelectItem key={t} value={t}>{t}</SelectItem>
                                        ))}
                                    </SelectContent>
                                </Select>
                            </div>

                            <div className="space-y-2">
                                <Label htmlFor="capo">Capo (fret)</Label>
                                <Input id="capo" type="number" min={0} max={12} placeholder="0" {...register("capo", { valueAsNumber: true })} className="h-11" />
                            </div>

                            <div className="space-y-2">
                                <Label htmlFor="writtenBy">Written By</Label>
                                <Input id="writtenBy" {...register("writtenBy")} placeholder="Songwriter" className="h-11" />
                            </div>

                            <div className="space-y-2">
                                <Label htmlFor="year">Year</Label>
                                <Input id="year" type="number" {...register("year", { valueAsNumber: true })} placeholder="2026" className="h-11" />
                            </div>
                        </div>

                        <div className="space-y-2 pt-2">
                            <Label htmlFor="image">Album Art URL</Label>
                            <Input
                                id="image"
                                {...register("image")}
                                placeholder="https://..."
                                className="h-11"
                            />
                            <p className="text-xs text-muted-foreground">URL to album cover image (500x500 recommended)</p>
                        </div>

                        <div className="space-y-2">
                            <Label htmlFor="videoUrl">Video URL</Label>
                            <Input
                                id="videoUrl"
                                {...register("videoUrl")}
                                placeholder="https://www.youtube.com/embed/..."
                                className="h-11"
                            />
                            <p className="text-xs text-muted-foreground">Paste the embed URL from YouTube or other video platforms</p>
                        </div>
                    </CardContent>
                </Card>

                <Card>
                    <CardContent className="p-8 space-y-6">
                        <div className="flex items-center gap-3 pb-1 border-b border-border">
                            <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-secondary">
                                <span className="text-sm font-bold text-muted-foreground">♪</span>
                            </div>
                            <div>
                                <h2 className="text-base font-semibold">Lyrics & Chords</h2>
                                <p className="text-sm text-muted-foreground">Write the full song with chord notations</p>
                            </div>
                        </div>
                        <TextEditor editorValues={watch("content") ?? ""} getEditorValues={(val) => setValue("content", val)} />
                        <p className="text-xs text-muted-foreground">
                            Use square brackets for chords: <code className="rounded bg-secondary px-1 py-0.5 text-muted-foreground">[G]</code>{' '}
                            <code className="rounded bg-secondary px-1 py-0.5 text-muted-foreground">[C]</code>{' '}
                            <code className="rounded bg-secondary px-1 py-0.5 text-muted-foreground">[D]</code>
                        </p>
                    </CardContent>
                </Card>
            </div>
        </form>
    )
}
