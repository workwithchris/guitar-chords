export default function Loading() {
    return (
        <div className="space-y-8 animate-pulse">
            <div className="flex items-center justify-between">
                <div className="space-y-2">
                    <div className="h-8 w-48 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
                    <div className="h-4 w-32 bg-neutral-100 dark:bg-neutral-800/50 rounded" />
                </div>
                <div className="flex items-center gap-1 p-1 rounded-lg border border-neutral-200 dark:border-neutral-800 bg-neutral-100 dark:bg-neutral-900 w-20 h-9" />
            </div>
            <div className="border-t border-neutral-200 dark:border-neutral-800" />
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
                {Array.from({ length: 6 }).map((_, i) => (
                    <div
                        key={i}
                        className="flex flex-col items-center gap-3 p-6 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900"
                    >
                        <div className="h-24 w-24 rounded-full bg-neutral-100 dark:bg-neutral-800" />
                        <div className="space-y-1 text-center w-full">
                            <div className="h-5 w-24 mx-auto bg-neutral-100 dark:bg-neutral-800 rounded" />
                            <div className="h-3 w-16 mx-auto bg-neutral-50 dark:bg-neutral-800/50 rounded" />
                        </div>
                    </div>
                ))}
            </div>
        </div>
    )
}
