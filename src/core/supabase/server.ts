import { createClient } from '@supabase/supabase-js'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!

let serverClient: ReturnType<typeof createClient> | null = null

export function createServerClient() {
    if (serverClient) return serverClient
    serverClient = createClient(supabaseUrl, supabaseAnonKey, {
        auth: { persistSession: false },
    })
    return serverClient
}
