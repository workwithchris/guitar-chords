export default function Loading() {
    return (
        <div className="space-y-8 animate-pulse">
            <div className="h-4 w-32 bg-neutral-200 dark:bg-neutral-800 rounded" />
            <div className="flex flex-col md:flex-row md:items-start md:justify-between gap-6">
                <div className="space-y-3 flex-1">
                    <div className="h-8 w-64 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
                    <div className="h-4 w-40 bg-neutral-100 dark:bg-neutral-800/50 rounded" />
                    <div className="flex gap-4">
                        <div className="h-3 w-16 bg-neutral-100 dark:bg-neutral-800/50 rounded" />
                        <div className="h-3 w-24 bg-neutral-100 dark:bg-neutral-800/50 rounded" />
                    </div>
                </div>
                <div className="flex gap-3">
                    <div className="h-9 w-28 bg-neutral-200 dark:bg-neutral-800 rounded-full" />
                    <div className="h-9 w-20 bg-neutral-100 dark:bg-neutral-800 rounded-full" />
                </div>
            </div>
            <div className="flex justify-center">
                <div className="h-[180px] w-[180px] bg-neutral-100 dark:bg-neutral-800 rounded-2xl" />
            </div>
            <div className="border-t border-neutral-200 dark:border-neutral-800" />
            <div className="space-y-4">
                <div className="h-5 w-32 bg-neutral-200 dark:bg-neutral-800 rounded" />
                <div className="space-y-3">
                    {Array.from({ length: 8 }).map((_, i) => (
                        <div
                            key={i}
                            className="h-4 bg-neutral-100 dark:bg-neutral-800/50 rounded"
                            style={{ width: `${60 + Math.random() * 40}%` }}
                        />
                    ))}
                </div>
            </div>
        </div>
    )
}
