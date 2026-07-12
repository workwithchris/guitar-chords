export default function Loading() {
    return (
        <div className="space-y-8 animate-pulse">
            <div className="h-4 w-32 bg-neutral-200 dark:bg-neutral-800 rounded" />
            <div className="flex flex-col md:flex-row gap-8 items-start">
                <div className="h-[200px] w-[200px] bg-neutral-100 dark:bg-neutral-800 rounded-2xl shrink-0" />
                <div className="space-y-3 flex-1">
                    <div className="h-8 w-48 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
                    <div className="space-y-2">
                        <div className="h-4 bg-neutral-100 dark:bg-neutral-800/50 rounded" style={{ width: '90%' }} />
                        <div className="h-4 bg-neutral-100 dark:bg-neutral-800/50 rounded" style={{ width: '70%' }} />
                    </div>
                </div>
            </div>
            <div className="border-t border-neutral-200 dark:border-neutral-800" />
            <div className="h-6 w-20 bg-neutral-200 dark:bg-neutral-800 rounded" />
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                {Array.from({ length: 4 }).map((_, i) => (
                    <div
                        key={i}
                        className="flex items-start gap-4 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900"
                    >
                        <div className="h-10 w-10 rounded-lg bg-neutral-100 dark:bg-neutral-800 shrink-0" />
                        <div className="space-y-2 flex-1">
                            <div className="h-5 w-3/4 bg-neutral-100 dark:bg-neutral-800 rounded" />
                            <div className="h-3 w-1/3 bg-neutral-50 dark:bg-neutral-800/50 rounded" />
                        </div>
                    </div>
                ))}
            </div>
        </div>
    )
}
