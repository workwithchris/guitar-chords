export default function Loading() {
  return (
    <div className="space-y-8 animate-pulse">
      <div className="space-y-2">
        <div className="h-8 w-48 bg-muted rounded-lg" />
        <div className="h-4 w-32 bg-secondary/50 rounded" />
      </div>
      <div className="border-t border-border" />
      <div className="space-y-6">
        <div className="flex flex-col sm:flex-row gap-3">
          <div className="flex-1 h-10 bg-muted rounded-xl" />
          <div className="flex items-center gap-2">
            <div className="h-10 w-20 bg-muted rounded-lg" />
            <div className="h-10 w-32 bg-muted rounded-lg" />
            <div className="h-10 w-10 bg-muted rounded-lg" />
          </div>
        </div>
        <div className="flex gap-1">
          <div className="h-6 w-8 bg-muted rounded-md" />
          <div className="h-6 w-6 bg-muted rounded-md" />
          <div className="h-6 w-6 bg-muted rounded-md" />
          <div className="h-6 w-6 bg-muted rounded-md" />
          <div className="h-6 w-6 bg-muted rounded-md" />
          <div className="h-6 w-6 bg-muted rounded-md" />
          <div className="h-6 w-6 bg-muted rounded-md" />
          <div className="h-6 w-6 bg-muted rounded-md" />
        </div>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
          {Array.from({ length: 6 }).map((_, i) => (
            <div
              key={i}
              className="flex flex-col items-center gap-3 p-5 rounded-xl border border-border bg-card"
            >
              <div className="h-24 w-24 rounded-full bg-secondary" />
              <div className="space-y-1 text-center w-full">
                <div className="h-5 w-24 mx-auto bg-secondary rounded" />
                <div className="h-3 w-16 mx-auto bg-background dark:bg-muted/50 rounded" />
              </div>
              <div className="h-3 w-3/4 bg-background dark:bg-muted/50 rounded" />
            </div>
          ))}
        </div>
      </div>
    </div>
  )
}
