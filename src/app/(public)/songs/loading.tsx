export default function Loading() {
  return (
    <div className="space-y-8 animate-pulse">
      <div className="space-y-2">
        <div className="h-8 w-48 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
        <div className="h-4 w-32 bg-neutral-100 dark:bg-neutral-800/50 rounded" />
      </div>
      <div className="border-t border-neutral-200 dark:border-neutral-800" />
      <div className="space-y-6">
        <div className="flex flex-col sm:flex-row gap-3">
          <div className="flex-1 h-10 bg-neutral-200 dark:bg-neutral-800 rounded-xl" />
          <div className="flex items-center gap-2">
            <div className="h-10 w-20 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
            <div className="h-10 w-32 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
            <div className="h-10 w-10 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
          </div>
        </div>
        <div className="flex gap-2">
          <div className="h-7 w-20 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
          <div className="h-7 w-24 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
          <div className="h-7 w-16 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
          <div className="h-7 w-14 bg-neutral-200 dark:bg-neutral-800 rounded-lg" />
          <div className="h-7 w-12 bg-neutral-200 dark:bg-neutral-800 rounded-lg ml-auto" />
        </div>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
          {Array.from({ length: 6 }).map((_, i) => (
            <div
              key={i}
              className="rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 overflow-hidden"
            >
              <div className="aspect-[3/2] bg-neutral-100 dark:bg-neutral-800" />
              <div className="p-4 space-y-3">
                <div className="h-5 w-3/4 bg-neutral-100 dark:bg-neutral-800 rounded" />
                <div className="h-3 w-1/2 bg-neutral-50 dark:bg-neutral-800/50 rounded" />
                <div className="flex gap-2">
                  <div className="h-5 w-10 bg-neutral-100 dark:bg-neutral-800 rounded-md" />
                  <div className="h-5 w-16 bg-neutral-100 dark:bg-neutral-800 rounded-md" />
                  <div className="h-5 w-12 bg-neutral-100 dark:bg-neutral-800 rounded-md" />
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  )
}
