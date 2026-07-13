import { createClient } from '@supabase/supabase-js'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
if (!supabaseUrl || !supabaseAnonKey) {
    throw new Error('Missing NEXT_PUBLIC_SUPABASE_URL or NEXT_PUBLIC_SUPABASE_ANON_KEY env vars')
}
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SERVICE_ROLE_KEY || ''

let serverClient: ReturnType<typeof createClient> | null = null
let adminClient: ReturnType<typeof createClient> | null = null

export function createServerClient() {
    if (serverClient) return serverClient
    serverClient = createClient(supabaseUrl, supabaseAnonKey, {
        auth: { persistSession: false },
    })
    return serverClient
}

export function createAdminClient() {
    if (adminClient) return adminClient
    if (!supabaseServiceKey) {
        throw new Error('SUPABASE_SERVICE_ROLE_KEY not set in .env — required for admin writes')
    }
    adminClient = createClient(supabaseUrl, supabaseServiceKey, {
        auth: { persistSession: false },
    })
    return adminClient
}
