import Link from 'next/link'
import { Music, Home } from 'lucide-react'

export default function NotFound() {
    return (
        <div className="min-h-screen flex items-center justify-center bg-background">
            <div className="flex flex-col items-center gap-6 text-center px-4">
                <div className="h-16 w-16 rounded-2xl bg-secondary flex items-center justify-center">
                    <Music className="h-8 w-8 text-muted-foreground" />
                </div>
                <div className="space-y-2">
                    <h1 className="text-4xl font-bold tracking-tight text-foreground">
                        404
                    </h1>
                    <p className="text-sm text-muted-foreground max-w-sm">
                        This chord progression doesn&apos;t exist. The page you&apos;re looking for
                        has been moved or was never here.
                    </p>
                </div>
                <Link
                    href="/"
                    className="inline-flex items-center gap-2 px-5 py-2.5 rounded-lg bg-foreground text-background text-sm font-medium hover:bg-secondary dark:hover:bg-muted transition-colors"
                >
                    <Home className="h-4 w-4" />
                    Back to Home
                </Link>
            </div>
        </div>
    )
}
