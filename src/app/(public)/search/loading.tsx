export default function Loading() {
    return (
        <div className="space-y-8 animate-pulse">
            <div className="space-y-2">
                <div className="h-8 w-64 bg-muted rounded-lg" />
                <div className="h-4 w-32 bg-secondary/50 rounded" />
            </div>
            <div className="border-t border-border" />
            <div className="space-y-3">
                {Array.from({ length: 5 }).map((_, i) => (
                    <div
                        key={i}
                        className="flex items-center gap-4 p-4 rounded-xl border border-border bg-card"
                    >
                        <div className="h-10 w-10 rounded-lg bg-secondary shrink-0" />
                        <div className="space-y-2 flex-1">
                            <div className="h-5 w-1/2 bg-secondary rounded" />
                            <div className="h-3 w-1/4 bg-background dark:bg-muted/50 rounded" />
                        </div>
                    </div>
                ))}
            </div>
        </div>
    )
}
