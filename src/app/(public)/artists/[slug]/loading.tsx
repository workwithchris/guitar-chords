export default function Loading() {
    return (
        <div className="space-y-8 animate-pulse">
            <div className="h-4 w-32 bg-muted rounded" />
            <div className="flex flex-col md:flex-row gap-8 items-start">
                <div className="h-[200px] w-[200px] bg-secondary rounded-2xl shrink-0" />
                <div className="space-y-3 flex-1">
                    <div className="h-8 w-48 bg-muted rounded-lg" />
                    <div className="space-y-2">
                        <div className="h-4 bg-secondary/50 rounded" style={{ width: '90%' }} />
                        <div className="h-4 bg-secondary/50 rounded" style={{ width: '70%' }} />
                    </div>
                </div>
            </div>
            <div className="border-t border-border" />
            <div className="h-6 w-20 bg-muted rounded" />
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                {Array.from({ length: 4 }).map((_, i) => (
                    <div
                        key={i}
                        className="flex items-start gap-4 p-4 rounded-xl border border-border bg-card"
                    >
                        <div className="h-10 w-10 rounded-lg bg-secondary shrink-0" />
                        <div className="space-y-2 flex-1">
                            <div className="h-5 w-3/4 bg-secondary rounded" />
                            <div className="h-3 w-1/3 bg-background dark:bg-muted/50 rounded" />
                        </div>
                    </div>
                ))}
            </div>
        </div>
    )
}
