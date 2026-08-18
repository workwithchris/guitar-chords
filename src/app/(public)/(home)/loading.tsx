export default function Loading() {
    return (
        <div className="space-y-20 pb-16 animate-pulse">
            <section className="pt-8 md:pt-20 pb-12 md:pb-16 flex flex-col items-center gap-8">
                <div className="h-6 w-48 bg-muted rounded-full" />
                <div className="space-y-3 text-center">
                    <div className="h-12 w-3/4 max-w-lg mx-auto bg-muted rounded-lg" />
                    <div className="h-12 w-1/2 max-w-md mx-auto bg-secondary/50 rounded-lg" />
                </div>
                <div className="h-5 w-80 bg-secondary/50 rounded" />
                <div className="flex gap-3">
                    <div className="h-10 w-36 bg-muted rounded-lg" />
                    <div className="h-10 w-36 bg-secondary rounded-lg" />
                </div>
                <div className="h-12 w-full max-w-md bg-secondary/50 rounded-xl" />
            </section>

            <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
                {[...Array(4)].map((_, i) => (
                    <div key={i} className="flex items-center gap-3 p-4 rounded-xl border border-border bg-card">
                        <div className="h-9 w-9 rounded-lg bg-secondary" />
                        <div className="space-y-1.5">
                            <div className="h-5 w-12 bg-muted rounded" />
                            <div className="h-3 w-16 bg-secondary/50 rounded" />
                        </div>
                    </div>
                ))}
            </div>

            {[...Array(4)].map((_, i) => (
                <div key={i} className="space-y-6">
                    <div className="space-y-1.5">
                        <div className="h-6 w-40 bg-muted rounded-lg" />
                        <div className="h-4 w-56 bg-secondary/50 rounded" />
                    </div>
                    <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                        {[...Array(3)].map((_, j) => (
                            <div key={j} className="h-24 rounded-xl border border-border bg-card" />
                        ))}
                    </div>
                </div>
            ))}
        </div>
    )
}
