export default function Loading() {
    return (
        <div className="space-y-20 pb-16 animate-pulse">
            <section className="pt-8 md:pt-20 pb-12 md:pb-16 flex flex-col items-center gap-8">
                <div className="h-6 w-48 bg-neutral-200 dark:bg-neutral-800 rounded-full" />
                <div className="space-y-3 text-center">
                    <div className="h-12 w-3/4 max-w-lg mx-auto bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
                    <div className="h-12 w-1/2 max-w-md mx-auto bg-neutral-100 dark:bg-neutral-800/50 rounded-lg" />
                </div>
                <div className="h-5 w-80 bg-neutral-100 dark:bg-neutral-800/50 rounded" />
                <div className="flex gap-3">
                    <div className="h-10 w-36 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
                    <div className="h-10 w-36 bg-neutral-100 dark:bg-neutral-800 rounded-lg" />
                </div>
                <div className="h-12 w-full max-w-md bg-neutral-100 dark:bg-neutral-800/50 rounded-xl" />
            </section>

            <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
                {[...Array(4)].map((_, i) => (
                    <div key={i} className="flex items-center gap-3 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900">
                        <div className="h-9 w-9 rounded-lg bg-neutral-100 dark:bg-neutral-800" />
                        <div className="space-y-1.5">
                            <div className="h-5 w-12 bg-neutral-200 dark:bg-neutral-800 rounded" />
                            <div className="h-3 w-16 bg-neutral-100 dark:bg-neutral-800/50 rounded" />
                        </div>
                    </div>
                ))}
            </div>

            {[...Array(4)].map((_, i) => (
                <div key={i} className="space-y-6">
                    <div className="space-y-1.5">
                        <div className="h-6 w-40 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
                        <div className="h-4 w-56 bg-neutral-100 dark:bg-neutral-800/50 rounded" />
                    </div>
                    <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        {[...Array(3)].map((_, j) => (
                            <div key={j} className="h-24 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900" />
                        ))}
                    </div>
                </div>
            ))}
        </div>
    )
}
