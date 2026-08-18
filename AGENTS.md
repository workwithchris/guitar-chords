# next-chords — AGENTS.md

Guitar chords site (guitarchords.techyatraa.com). Next.js 16 App Router, Supabase, Zustand, shadcn/ui, Tailwind.

Note: `package.json` name is `next-supabase-prisma` — stale. No Prisma in this repo.

## Setup

```bash
npm install
npm run dev        # http://localhost:3000 (Turbopack default)
npm run build      # next build (Turbopack default, --webpack to opt out)
npm run start      # next start
npm run lint       # eslint . (flat config via eslint.config.mjs)
npm run typecheck  # tsc --noEmit
```

Next.js 16 requires Node.js 20.9+. `next lint` is removed — use `eslint .`. No tests, no CI. `package-lock.json` only — use `npm`, not yarn/pnpm/bun.

## Architecture

```
src/
  app/
    (public)/          # Public site: (home), songs[/slug], artists[/slug], search, favorites, blog[/slug], chords, about-us, contact-us, request, privacy, terms
    admin/
      login/           # Login form + useAdminLogin hook
      (protected)/     # (dashboard) stats + artists CRUD, songs CRUD + add/edit/bulk, blog CRUD, data-health
  components/
    ui/                # shadcn/ui (new-york) + custom: chord-diagram, chord-popover, confirm-dialog, breadcrumbs, json-ld, skeleton, sheet, table
    layout/            # public/ and admin/ layouts, nav, cmdk-search (⌘K), scroll-provider (Lenis)
    chord-sheet-renderer.tsx
  core/
    supabase/client.ts   # Browser anon-key singleton (client components, Zustand stores)
    supabase/server.ts   # createServerClient() + createAdminClient() (service-role) — server components
    provider/theme.provider.tsx  # next-themes + Toaster
    constants/routes.ts  # publicRoutes + adminRoutes
    types.ts
  store/
    api/                 # *.api.ts = client fetchers; *.server.ts = server fetchers
    *.store.ts           # Zustand (song, artist, auth)
  lib/
    chords.ts            # Transpose engine (see below)
    parse-chord-content.ts, title-to-slug.ts, use-favorites.ts, is-new.ts, utils.ts (cn())
  proxy.ts               # Cookie-based auth guard for /admin/*
```

## Key facts

- **Hybrid fetching — NOT client-only anymore.** Public pages are server components that call `store/api/*.server.ts` (wrapped in `cache` + `unstable_cache` with 60–300s TTLs). Client `*.api.ts` (browser anon client) is still used by Zustand stores and admin mutations. Don't move a server fetcher into client code or vice versa without checking callers.
- **Two Supabase clients.** `core/supabase/server.ts` exports `createServerClient()` (anon, no persistSession) and `createAdminClient()` (service-role key; throws if `SUPABASE_SERVICE_ROLE_KEY` unset). `createAdminClient` is currently unused — admin writes still go through the anon client + RLS.
- **Search quirk**: `app/(public)/search/page.tsx` is a server component but imports `store/api/search.api.ts` (the client module) — it calls RPCs `search_songs` / `search_artists` (pg_trgm fuzzy) and works server-side too. Both `search-*` and admin/songs pages read `searchParams` (a Promise — must `await`).
- **Caching**: public pages use ISR `revalidate` (home/songs 60, artists 300, blog 300, chords 86400) + `generateStaticParams` on `songs/[slug]` and `artists/[slug]`. Only admin pages and `search` use `revalidate = 0`.
- **Auth**: `signInWithPassword()` sets `session` + `user` cookies via `cookies-next`. `proxy.ts` only checks cookie **presence** — no server-side session validation. Unauthenticated `/admin/*` → `/admin/login`; logged-in users on `/admin/login` → `/admin/`.
- **Env vars** (see `.env.example`, typed in `src/env.d.ts`): `NEXT_PUBLIC_SUPABASE_URL`, `NEXT_PUBLIC_SUPABASE_ANON_KEY`, `NEXT_PUBLIC_STORAGE_BASE_URL`, `NEXT_PUBLIC_SHARE_BASE_URL`. Footgun: `server.ts` falls back to `NEXT_PUBLIC_SERVICE_ROLE_KEY` for the service-role client — a `NEXT_PUBLIC_`-prefixed service key would be exposed in the browser bundle. Keep it non-public.
- **Images**: `next.config.mjs` whitelists `cdn-images.dzcdn.net` and `upload.wikimedia.org` via `remotePatterns`. New external image hosts must be added there or `next/image` fails.
- **`@/*` = `./src/*`**. Theme: `next-themes`, `<html suppressHydrationWarning>`, ThemeProvider wraps `<Toaster />`.
- **shadcn/ui**: new-york style, `components.json` at root, `cssVariables: false`. Add primitives with `npx shadcn@latest add <name>`. Existing primitives are spread across flat files and subfolders (`button/`, `drawer/`, `dropdown/`, `form/`, `switch/`, `toast/`).
- **`supabase/migrations/`** holds SQL schema + seed data. Apply with `supabase db push` (project already linked — `.temp/project-ref`). Schema changes go through migrations, not the dashboard.

## Song metadata

`song` table has 6 additional fields beyond core CRUD columns (migration `20250712000000_song_metadata.sql`):

| Column | Type | Default | Description |
|---|---|---|---|
| `key` | TEXT | null | Song key (C, G, Am, etc.) |
| `capo` | INTEGER | 0 | Capo fret position |
| `tuning` | TEXT | 'EADGBE' | Guitar tuning |
| `difficulty` | TEXT | 'Beginner' | Beginner / Intermediate / Advanced |
| `genre` | TEXT | null | Genre tag (Rock, Pop, Blues...) |
| `isActive` | BOOLEAN | true | Soft-delete toggle for songs |

## Chord features (client-side only)

- **Transpose** lives in `src/lib/chords.ts`: `CHORD_REGEX`, `transposeChordToken()`, `wrapChords()` (wraps chords in `<span class="chord-pop" data-chord="...">`). Slash chords, `#`/`b` roots, sharp vs flat display per song key. `song/[slug]/components/detail.tsx` applies it with a transpose state; concert-pitch mode adds capo to the offset.
- **Auto-scroll** speeds `[0.8, 1.5, 3, 5]` (framer-motion scroll animation).
- **Chord diagrams** (`components/ui/chord-diagram.tsx`) + hover popovers; dynamically imported, `ssr: false`.
- **Favorites** are localStorage-only (`src/lib/use-favorites.ts`, key `guitar-chords-favorites`), no DB.
- **Page views**: `analytics.api.ts` inserts into `page_view` from the client; `page_view` also feeds trending + admin dashboard stats.

## Admin CRUD

- Songs: list/search (server-side, `searchSongsAdmin`), add (`songs/add`), edit (`songs/[id]/edit`, shared SongForm), bulk import/delete/activate (`songs/bulk`, `bulkUpdateSongs`/`bulkDeleteSongs`).
- Artists: drawer form + list view; active/inactive toggles for both entities.
- RLS allows authenticated INSERT/UPDATE/DELETE; admin pages render server-side with `revalidate = 0`.

## Public vs admin fetching

- Public: server fetchers filter `isActive = true` (songs and their artists). `artist_with_song_count` DB view backs artist counts.
- Admin: `searchSongsAdmin`/`searchArtistsAdmin` return all records regardless of `isActive`.

## Docs

- `docs/SCALE-PLAN.md` and `docs/PERFORMANCE.md` are **mostly implemented** (perf indexes, home RPCs `get_home_stats`/`get_top_songs`/`get_dashboard_stats`, server-side pagination, `artist_with_song_count` view, ⌘K search, bulk actions, ISR revalidates, dynamic imports). Re-read before planning work they describe — don't re-implement.
- RPCs to reuse: `search_songs`, `search_artists` (fuzzy), `get_home_stats`, `get_dashboard_stats`, `get_top_songs`.

## Shorthands

| Intent | Command |
|---|---|
| dev server | `npm run dev` |
| build | `npm run build` (Turbopack default, add `--webpack` to opt out) |
| lint | `npm run lint` |
| typecheck | `npm run typecheck` |
| add shadcn/ui component | `npx shadcn@latest add <name>` |
| push DB migrations | `supabase db push` |
| Next.js upgrade codemod | `npx @next/codemod@latest next-16` |