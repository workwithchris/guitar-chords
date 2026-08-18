import { Music } from 'lucide-react'

export default function RootLoading() {
    return (
        <div className="min-h-screen flex items-center justify-center bg-background">
            <div className="flex flex-col items-center gap-4">
                <div className="h-10 w-10 rounded-xl bg-muted animate-pulse flex items-center justify-center">
                    <Music className="h-5 w-5 text-muted-foreground" />
                </div>
                <div className="h-4 w-48 bg-muted rounded animate-pulse" />
            </div>
        </div>
    )
}
