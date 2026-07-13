import { Music } from 'lucide-react'

export default function RootLoading() {
    return (
        <div className="min-h-screen flex items-center justify-center bg-neutral-50 dark:bg-neutral-950">
            <div className="flex flex-col items-center gap-4">
                <div className="h-10 w-10 rounded-xl bg-neutral-200 dark:bg-neutral-800 animate-pulse flex items-center justify-center">
                    <Music className="h-5 w-5 text-neutral-400" />
                </div>
                <div className="h-4 w-48 bg-neutral-200 dark:bg-neutral-800 rounded animate-pulse" />
            </div>
        </div>
    )
}
