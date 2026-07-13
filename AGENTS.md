# next-chords — AGENTS.md

Guitar chords site (guitarchords.techyatraa.com). Next.js 16 App Router, Supabase (client-side), Zustand, shadcn/ui, Tailwind.

## Setup

```bash
npm install
npm run dev        # http://localhost:3000 (Turbopack default)
npm run build      # next build (Turbopack default, --webpack to opt out)
npm run start      # next start
npm run lint       # eslint . (flat config via eslint.config.mjs)
```

Requires Node.js 20.9+. Uses `eslint.config.mjs` (flat config).

No test framework, no CI. Typecheck via `npm run typecheck`.

## Architecture

```
src/
  app/             # Next.js App Router
    (public)/      # Route group — public site layout
      (home)/      # Landing page (mostly empty shell)
      songs/[slug] # Song detail page
      artists/[slug] # Artist detail page
      search/      # Combined song+artist search
      about-us/, contact-us/, request/  # Static pages
    admin/
      login/       # Admin login form
      (protected)/ # Dashboard: artists CRUD, songs CRUD + add
  components/
    ui/            # shadcn/ui primitives (new-york style)
    layout/        # public/ and admin/ layout wrappers
  core/
    supabase/client.ts   # Singleton supabase-js client (anon key, client-only)
    provider/theme.provider.tsx  # @ecosy/next-themes + Toaster
    constants/routes.ts  # Route constants (mostly empty)
  store/
    api/           # Supabase query functions (song, artist, search)
    *.store.ts     # Zustand stores wrapping API layer
  lib/
    utils.ts       # cn() via clsx + tailwind-merge
    title-to-slug.ts
  proxy.ts    # Cookie-based auth guard for /admin/* (Next.js 16 proxy)
```

## Key facts

- **Auth**: Cookie-based. `supabase.auth.signInWithPassword()` sets `session` + `user` cookies via `cookies-next`. Proxy (`src/proxy.ts`) redirects unauthenticated requests from `/admin/*` to `/admin/login`, and redirects authenticated users away from `/admin/login` to `/admin/`.
- **Supabase client**: Browser-side singleton (`createClient`). Anon key in `.env`, readable at runtime. **Do not put server-only queries in client code** — the app currently does everything client-side, including fetching data for server components.
- **`@/*` = `./src/*`** (tsconfig paths).
- **shadcn/ui**: new-york style, `components.json` at root. Add new primitives with `npx shadcn-ui@latest add <component>`. Existing: button, drawer, dropdown-menu, form, label, select, switch, toast.
- **Theme**: Uses `next-themes`. Imports from `next-themes`. `<html>` has `suppressHydrationWarning`. ThemeProvider follows shadcn/ui pattern (`React.ComponentProps<typeof NextThemesProvider>`).
- **Next.js 16 specifics**: Turbopack default bundler. `params`/`searchParams` are Promises (must `await`). `proxy.ts` replaces `middleware.ts` (Node.js runtime). `next lint` removed — use `eslint .` directly.
- **Dynamic pages** use `export const revalidate = 0` (no ISR — SSR on every request).
- **Supabase local dev**: `supabase/migrations/` contains SQL migrations. Push with `supabase db push`. Schema managed via Supabase dashboard + migrations.
- **No tests**, no CI. Typecheck via `npm run typecheck`.
- **`package-lock.json` only** — use `npm`, not yarn/pnpm/bun.

## Song metadata

`song` table has 6 additional fields beyond the core CRUD columns:

| Column | Type | Default | Description |
|---|---|---|---|
| `key` | TEXT | null | Song key (C, G, Am, etc.) |
| `capo` | INTEGER | 0 | Capo fret position |
| `tuning` | TEXT | 'EADGBE' | Guitar tuning |
| `difficulty` | TEXT | 'Beginner' | Beginner / Intermediate / Advanced |
| `genre` | TEXT | null | Genre tag (Rock, Pop, Blues...) |
| `isActive` | BOOLEAN | true | Soft-delete toggle for songs |

**Chord features**: Song detail page has transpose buttons (+/- semitones) that
parse chords from raw HTML and shift them. Auto-scroll has variable speed
controls (0.8x, 1.5x, 3x, 5x). Both features are client-side only.

**Admin CRUD**: Full create/read/update/delete for songs and artists.
- Song edit at `/admin/songs/[id]/edit` using shared SongForm component
- Artist edit/delete in the list view with drawer form
- Active/inactive toggles for both entities
- RLS policies allow authenticated INSERT/UPDATE/DELETE

**Public filtering**: Public pages use `fetchActiveSongs()` and
`fetchActiveArtistsWithSongCount()` — only `isActive = true` records.
Admin pages use `fetchSongs()` / `fetchArtists()` — all records.

## Route conventions

- Route groups `(public)` and `(protected)` for layout scoping.
- `[slug]` dynamic routes for song/artist detail pages.
- Admin pages mirror public structure under `admin/(protected)/`.
- Component colocation: each page directory has `components/` subfolder.
- `loading.tsx` skeletons exist for all dynamic routes (songs, artists, search, song/artist detail, home).
- `not-found.tsx` (404) and `error.tsx` (error boundary) at app root with branded design.
- `robots.ts` and `sitemap.ts` (dynamic) generate SEO metadata at build/request time.

## Shorthands

| Intent | Command |
|---|---|
| dev server | `npm run dev` |
| build | `npm run build` (Turbopack default, add `--webpack` to opt out) |
| lint | `npm run lint` |
| typecheck | `npm run typecheck` |
| add shadcn/ui component | `npx shadcn-ui@latest add <name>` |
| Next.js upgrade codemod | `npx @next/codemod@latest next-16` |

## Scale plan

`docs/SCALE-PLAN.md` — phased performance & UX plan for 1000s of songs/artists.
Start with Phase 0 (DB indexes in a new migration), then Phase 1 (home page
lightweight RPCs), etc.

## Project Skills

Skills defined in `.opencode/skills/<name>/SKILL.md`. Restart opencode after editing.

| Skill | Purpose |
|---|---|
| `ponytail` | Modern clean code style: TypeScript, React, Tailwind, imports, component patterns |
| `ui` | Design system: color palette, typography, cards, buttons, dark mode, spacing, icons |
| `caveman` | Project-level caveman communication mode (extends global caveman skill) |
