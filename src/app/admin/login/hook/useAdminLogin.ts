import { z } from "zod"

import { toast } from "@/components/ui/toast/use-toast"
import { useRouter } from "next/navigation"
import { useAuthStore } from "@/store/auth.store"
import { useForm } from "react-hook-form"
import { zodResolver } from "@hookform/resolvers/zod"

const loginSchema = z.object({
    email: z.string().email("Invalid email"),
    password: z.string().min(1, "Password is required"),
})

export default function useAdminLogin() {
    const router = useRouter()
    const { signIn }: any = useAuthStore();

    const form = useForm<z.infer<typeof loginSchema>>({
        resolver: zodResolver(loginSchema),
        defaultValues: { email: "", password: "" },
    })

    const onSubmit = form.handleSubmit(async (values) => {
        try {
            await signIn(values.email, values.password);
            toast({ title: "Login Successful" })
            router.push("/admin/")
        } catch (err: any) {
            toast({ title: "Login Failed", description: err?.message })
        }
    })

    return { form, onSubmit }
}
