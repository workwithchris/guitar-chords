export default function Loading() {
    return (
        <div className="space-y-24 pb-12 animate-pulse">
            <section className="pt-12 md:pt-20 flex flex-col items-center gap-6">
                <div className="h-6 w-48 bg-neutral-200 dark:bg-neutral-800 rounded-full" />
                <div className="space-y-3 text-center">
                    <div className="h-10 w-3/4 max-w-lg mx-auto bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
                    <div className="h-10 w-1/2 max-w-md mx-auto bg-neutral-100 dark:bg-neutral-800/50 rounded-lg" />
                </div>
                <div className="h-5 w-80 bg-neutral-100 dark:bg-neutral-800/50 rounded" />
                <div className="flex gap-3">
                    <div className="h-10 w-36 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
                    <div className="h-10 w-36 bg-neutral-100 dark:bg-neutral-800 rounded-lg" />
                </div>
            </section>
        </div>
    )
}
