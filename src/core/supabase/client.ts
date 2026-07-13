import { createClient } from '@supabase/supabase-js'

const url = process.env.NEXT_PUBLIC_SUPABASE_URL
const aonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
if (!url || !aonKey) {
    throw new Error('Missing NEXT_PUBLIC_SUPABASE_URL or NEXT_PUBLIC_SUPABASE_ANON_KEY env vars')
}
const supabase = createClient(url, aonKey)

export default supabase;

