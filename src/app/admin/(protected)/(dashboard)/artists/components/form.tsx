"use client"
import React from 'react'
import { z } from 'zod'
import { useForm } from 'react-hook-form'
import { zodResolver } from '@hookform/resolvers/zod'
import { uploadArtistImage } from '@/store/api/artist.api'
import { useArtistStore } from '@/store/artist.store'
import { titleToSlug } from '@/lib/title-to-slug'
import { Input } from '@/components/ui/form/input'
import { Button } from '@/components/ui/button/button'
import { Label } from '@/components/ui/form/label'
import { Separator } from '@/components/ui/separator'
import { toast } from '@/components/ui/toast/use-toast'
import { ImageIcon, User } from 'lucide-react'
import { Card, CardContent } from '@/components/ui/card'

const artistSchema = z.object({
    name: z.string().min(1, "Name is required"),
    slug: z.string().min(1, "Slug is required"),
    bio: z.string().optional(),
    image: z.any().nullable(),
})

export default function AddArtistForm() {
    const { add, update, handleClose, selectedArtist, clearSelectedArtist }: any = useArtistStore();
    const isEditing = !!selectedArtist

    const { register, handleSubmit, setValue, watch, reset, formState: { isSubmitting, errors } } = useForm<z.infer<typeof artistSchema>>({
        resolver: zodResolver(artistSchema),
        defaultValues: {
            name: selectedArtist?.name ?? "",
            slug: selectedArtist?.slug ?? "",
            bio: selectedArtist?.bio ?? "",
            image: null,
        },
    })

    React.useEffect(() => {
        if (selectedArtist) {
            reset({
                name: selectedArtist.name ?? "",
                slug: selectedArtist.slug ?? "",
                bio: selectedArtist.bio ?? "",
                image: null,
            })
        }
    }, [selectedArtist, reset])

    const onSubmit = async (values: z.infer<typeof artistSchema>) => {
        try {
            let imageUrl = selectedArtist?.image ?? null
            if (values.image instanceof File) {
                imageUrl = await uploadArtistImage(values.image, values.slug)
            }

            if (isEditing) {
                await update(selectedArtist.id, { ...values, image: imageUrl })
                toast({ title: 'Artist updated' })
            } else {
                await add({ ...values, image: imageUrl })
                toast({ title: 'Artist added' })
            }
            reset()
            handleClose()
            clearSelectedArtist()
        } catch {
            toast({ title: isEditing ? 'Failed to update artist' : 'Failed to add artist' })
        }
    }

    const inputClass = (field: string) =>
        errors[field as keyof typeof errors]
            ? 'border-red-500 focus-visible:ring-red-500'
            : ''

    return (
        <form className="space-y-6" onSubmit={handleSubmit(onSubmit)}>
            <Card>
                <CardContent className="p-6 space-y-4">
                    <div className="flex items-center gap-2 pb-2">
                        <User className="h-4 w-4 text-neutral-500" />
                        <h3 className="text-sm font-semibold tracking-wide text-neutral-500 uppercase">Artist Details</h3>
                    </div>
                    <Separator />
                    <div className="grid grid-cols-2 gap-6">
                        <div className="space-y-4">
                            <div className="space-y-2">
                                <Label>Name</Label>
                                <Input
                                    placeholder="Artist name"
                                    className={inputClass('name')}
                                    {...register("name", { onChange: (e) => setValue("slug", titleToSlug(e.target.value)) })}
                                />
                                {errors.name && <p className="text-xs text-red-500">{errors.name.message}</p>}
                            </div>
                            <div className="space-y-2">
                                <Label>Slug</Label>
                                <Input disabled value={watch("slug")} />
                            </div>
                            <div className="space-y-2">
                                <Label>Image</Label>
                                <div className="flex items-center gap-3">
                                    <div className="flex h-10 w-10 items-center justify-center rounded-lg border border-neutral-200 dark:border-neutral-800 bg-neutral-50 dark:bg-neutral-900 shrink-0">
                                        <ImageIcon className="h-4 w-4 text-neutral-400" />
                                    </div>
                                    <Input name="image" type="file" onChange={(e) => {
                                        if (e.target.files?.[0]) {
                                            setValue("image", e.target.files[0])
                                        }
                                    }} />
                                </div>
                            </div>
                        </div>
                        <div className="space-y-2">
                            <Label>Bio</Label>
                            <Input className="min-h-[120px] py-3 resize-none" {...register("bio")} placeholder="Brief biography of the artist..." />
                        </div>
                    </div>
                </CardContent>
            </Card>
            <div className="flex justify-end gap-3">
                <Button variant="outline" type="button" onClick={() => { handleClose(); clearSelectedArtist() }}>
                    Cancel
                </Button>
                <Button disabled={isSubmitting} type='submit'>
                    {isSubmitting ? 'Saving...' : isEditing ? 'Update Artist' : 'Add Artist'}
                </Button>
            </div>
        </form>
    )
}
