"use client"
import { Input } from '@/components/ui/form/input'
import { useRouter, useSearchParams } from 'next/navigation'
import React, { useEffect } from 'react'
import { useForm } from 'react-hook-form'
import { Search } from 'lucide-react'

export default function SearchBar() {
    const router = useRouter();
    const params: any = useSearchParams();
    const search = params.get('query')

    const { register, handleSubmit, setValue } = useForm({ defaultValues: { search: "" } })

    useEffect(() => {
        setValue("search", search || "")
    }, [search, setValue])

    const onSubmit = (values: { search: string }) => {
        if (values.search.trim()) {
            router.push(`/search?query=${encodeURIComponent(values.search.trim())}`)
        }
    }

    return (
        <form className='relative' onSubmit={handleSubmit(onSubmit)}>
            <Input
                placeholder='Search songs, artists...'
                className='pl-9 h-9 w-36 md:w-48 text-sm rounded-lg'
                {...register("search")}
            />
            <button type="submit" className='absolute left-2.5 top-1/2 -translate-y-1/2 text-neutral-400 hover:text-neutral-600 dark:hover:text-neutral-300 transition-colors'>
                <Search className="h-4 w-4" />
            </button>
        </form>
    )
}
