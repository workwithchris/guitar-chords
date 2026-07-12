import { Music } from 'lucide-react'
import LoginForm from "./components/form";

export default function LoginPage() {
    return (
        <div className="flex min-h-screen items-center justify-center bg-gradient-to-br from-neutral-50 to-neutral-100 dark:from-neutral-950 dark:to-neutral-900 p-4">
            <div className="w-full max-w-md">
                <div className="rounded-xl border border-neutral-200 bg-white shadow-lg dark:border-neutral-800 dark:bg-neutral-950">
                    <div className="p-8">
                        <div className="mb-8 text-center">
                            <div className="mx-auto mb-4 flex h-12 w-12 items-center justify-center rounded-xl bg-neutral-900 dark:bg-neutral-800">
                                <Music className="h-6 w-6 text-white" />
                            </div>
                            <h1 className="text-2xl font-bold tracking-tight">Welcome back</h1>
                            <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
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
