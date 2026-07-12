
import { createClient } from '@supabase/supabase-js'

const url: string = process.env.NEXT_PUBLIC_SUPABASE_URL!
const aonKey: string = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
const supabase = createClient(url, aonKey)

export default supabase;

