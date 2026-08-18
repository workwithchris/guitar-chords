import { Music } from 'lucide-react'
import LoginForm from "./components/form";

// TODO: Cache Components adoption. Refactor this route so this opt-out can be removed.
// See: https://nextjs.org/docs/app/guides/migrating-to-cache-components
export const instant = false;

export default function LoginPage() {
    return (
        <div className="flex min-h-screen items-center justify-center bg-gradient-to-br from-background to-secondary p-4">
            <div className="w-full max-w-md">
                <div className="rounded-xl border border-border bg-card shadow-lg">
                    <div className="p-8">
                        <div className="mb-8 text-center">
                            <div className="mx-auto mb-4 flex h-12 w-12 items-center justify-center rounded-xl bg-foreground">
                                <Music className="h-6 w-6 text-background" />
                            </div>
                            <h1 className="text-2xl font-bold tracking-tight">Welcome back</h1>
                            <p className="mt-1 text-sm text-muted-foreground">
                                Sign in to your admin account
                            </p>
                        </div>
                        <LoginForm />
                    </div>
                </div>
            </div>
        </div>
    )
}
