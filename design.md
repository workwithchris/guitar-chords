# Guitar Chords — Web UI Redesign (design.md)

Date: 2026-08-18
Status: Draft — approved direction
Scope: visual layer only. No logic changes, no new deps. All changes are
tokens in `src/app/globals.css` + `tailwind.config.ts` and className/structure
in `.tsx`. Supabase, Zustand, fetch logic, schema untouched.

## 1. Direction

Current UI is default shadcn: zinc monochrome (`0 0% X%`), flat cards, no brand
color. Functional but generic — reads like a template, not a music product.

Candidate directions:

| Option | Vibe | Fit |
|---|---|---|
| **Warm Acoustic** (chosen) | amber accent on warm stone neutrals, paper-light / stage-dark modes | Instrument feel — matches Fender / Ultimate Guitar warm aesthetic. Distinct from generic SaaS purple/blue. |
| Stage Black | near-black + neon accent | Cool but low readability for lyric sheets; overused "dark mode" trope. |
| Clean Editorial | monochrome, serif headlines, heavy whitespace | Elegant but lacks musical identity; chord sheets need structured visual aids, not minimalism. |

**Chosen: Warm Acoustic.** Amber = wood / rosin / vintage guitar vibe. Warm
stone neutrals keep lyric sheets calm and legible. Black primary buttons keep
CTAs strong (music sites use dark buttons); amber is the highlight layer —
active nav, chord hover, focus rings, gradient moments.

## 2. Design tokens

### Light

| Token | Value | Usage |
|---|---|---|
| background | `40 33% 99%` | page bg (warm paper) |
| card | `0 0% 100%` | cards, popovers, sheet |
| foreground | `24 10% 10%` | body text |
| primary | `24 10% 10%` | primary buttons, active states |
| primary-foreground | `40 33% 99%` | text on primary |
| secondary | `35 25% 96%` | alt surface (hero, nav hover) |
| secondary-foreground | `24 10% 10%` | text on secondary |
| muted | `35 20% 95%` | table rows, disabled, chord chip bg |
| muted-foreground | `25 5% 45%` | meta text, captions |
| accent | `38 92% 50%` | **amber** — highlights, active nav, chord hover |
| accent-foreground | `24 10% 10%` | text on amber |
| destructive | `0 84% 60%` | errors, delete |
| border | `30 12% 90%` | card borders, dividers |
| input | `30 12% 88%` | inputs, selects |
| ring | `38 92% 50% / 40%` | focus rings (amber) |
| radius | `0.75rem` | keep |

### Dark ("warm stage")

| Token | Value | Usage |
|---|---|---|
| background | `24 10% 6%` | page bg (roasted wood black) |
| card | `24 8% 8%` | cards |
| foreground | `40 20% 97%` | body text |
| primary | `40 20% 97%` | primary buttons flip to light |
| primary-foreground | `24 10% 10%` | text on primary |
| secondary | `25 8% 14%` | alt surface |
| muted | `25 8% 14%` | rows, chips |
| muted-foreground | `30 5% 64%` | meta text |
| accent | `38 92% 55%` | amber pops on dark |
| accent-foreground | `24 10% 10%` | text on amber |
| border | `25 8% 15%` | borders |
| input | `25 8% 15%` | inputs |
| ring | `38 92% 55% / 40%` | focus rings |
| radius | `0.75rem` | keep |

Gradient (hero glow, logo mark): `38 95% 50%` → `32 95% 44%` (amber-500→600).
Shadow recipes: soft `0 1px 2px rgb(0 0 0 / .05), 0 8px 24px -12px rgb(0 0 0 / .10)`;
lift `0 2px 4px rgb(0 0 0 / .06), 0 16px 40px -16px rgb(0 0 0 / .18)`.

Fonts: keep current — **Inter** (sans) + **JetBrains Mono** (mono). Mono is the
chord-sheet voice; already wired via `next/font` + `--font-sans/--font-mono`.

Type scale: hero `text-3xl md:text-4xl font-bold tracking-tight`, page titles
`text-2xl font-bold tracking-tight`, card titles `text-sm font-semibold`, body
`text-sm`, meta `text-xs text-muted-foreground`. Section labels (Verse/Chorus,
chord sheet) stay `uppercase text-[0.8em] tracking-[0.06em] text-muted-foreground`
mono-friendly.

## 3. Primitives

- **Button** — default: `bg-primary text-primary-foreground shadow-sm hover:opacity-90`.
  Outline: `border-input hover:bg-secondary`. Ghost: `hover:bg-secondary`.
  Icon buttons keep API. No gradient buttons except hero CTA (amber gradient,
  `shadow-md shadow-accent/25`).
- **Card** — `rounded-xl border bg-card shadow-soft`; link cards add
  `transition hover:shadow-lift hover:-translate-y-0.5 hover:border-accent/40`.
- **Badge** — `rounded-full border px-2.5 py-0.5 text-xs font-medium`.
  Difficulty: Beginner=emerald, Intermediate=amber, Advanced=rose (soft tinted
  fills, matching border). Key/genre: neutral `bg-muted text-muted-foreground`.
- **Chord chip** (`.chord-pop`, hover popovers) — `bg-muted text-foreground
  font-mono font-semibold rounded px-1`; hover `bg-accent text-accent-foreground`
  (amber highlight — the signature interaction).
- **Chord diagram** — replace hardcoded `text-neutral-700` /
  `fill-neutral-900` in `chord-diagram.tsx` with tokens: strings/nut
  `hsl(var(--foreground))`, dots `fill-foreground`, finger text
  `fill-background`, capo bar `fill-muted-foreground`. Diagrams then adapt to
  both modes automatically.
- **Input/Select/Textarea** — `rounded-lg border-input bg-background`, focus
  `ring-2 ring-ring/40`.
- **Segmented control** (transpose, auto-scroll speed, sort) — pill container
  `bg-muted p-1 rounded-full`; active segment `bg-card shadow-sm`; icons for
  transpose (＋/−), speed labels `0.8x 1.5x 3x 5x`.
- **Empty states** — dashed `border-dashed` container, centered icon in soft
  amber circle (`bg-accent/10 text-accent`), title + hint + CTA.
- **Stat tile** (home, admin) — icon in rounded `bg-accent/10 text-accent`
  square, big number `text-2xl font-bold`, label `text-xs text-muted-foreground`.

## 4. Pages

### 4.1 Public shell
- Sticky header: `backdrop-blur bg-background/80 border-b`, logo mark = amber
  gradient rounded square + wordmark; nav rows (Home, Songs, Artists, Chords,
  Blog) — active item `text-foreground` + amber underline dot, inactive
  `text-muted-foreground hover:text-foreground`. Right: ⌘K search pill
  (`bg-muted rounded-full text-muted-foreground`), theme toggle.
- Main: `max-w-[1440px] mx-auto px-4 sm:px-6 lg:px-8 py-10`.
- Footer: `border-t bg-card`; muted links, simple 3-column.

### 4.2 Home (`/`)
- Hero: warm radial amber glow (pure CSS radial-gradient utility) on
  `bg-secondary/50`; pill badge (`bg-accent/10 text-accent`), headline with
  amber gradient keyword, subcopy, CTA row (primary + outline).
- Stat strip: 4 stat tiles (songs, artists, genres, beginner songs).
- Featured artist: gradient border card, initial avatar (amber gradient circle),
  name + song count.
- Trending songs: horizontal card row — image/thumbnail, title, artist,
  difficulty badge, views.
- Genre chips: amber-tint hover; key chips row from `getKeysWithSongCount`.

### 4.3 Songs list (`/songs`)
- Header: title + total count badge + prev/next `<link>` unaffected.
- Filter bar: difficulty/genre/key/sort as chips + segmented control; active
  filter chip = `bg-foreground text-background` (strong), inactive `bg-muted`.
- Song cards: `card` with difficulty badge top-right, title, artist, key +
  capo meta row (`text-xs text-muted-foreground`).
- Pagination: numbered pill buttons, active = `bg-primary text-primary-foreground`.

### 4.4 Song detail (`/songs/[slug]`) — the core
- Header block: breadcrumbs (existing), title `text-2xl font-bold`, artist
  link, badge row (key, capo, tuning, difficulty, genre, year), actions row
  (favorite toggle heart, share, print).
- Player (if `videoUrl`): existing embed card, `rounded-xl border`.
- **Chord sheet**: keep mono voice. Chord chips above lyrics
  (`top: -1.05em`, amber on hover), section headers uppercase tracking,
  `line-height 2.4`. Sheet container: `rounded-xl border bg-card p-6 md:p-10
  shadow-soft`.
- Toolbar above sheet: transpose segmented control (＋/− semitone, concert
  pitch toggle = `aria-pressed` accent), auto-scroll speed segmented control.
- **Chord diagram grid** (`ChordDiagramList`): `bg-muted/50 rounded-xl border
  p-4`; diagrams use token colors per 3.4.
- Related songs / same key rows: standard cards.

### 4.5 Artists (`/artists`, `/artists/[slug]`)
- A–Z letter nav: pill row, active = `bg-foreground text-background`.
- Artist cards: amber-gradient initial avatar, name, song count.
- Detail: header card (avatar, bio), song list rows (title + difficulty badge).

### 4.6 Search + ⌘K
- ⌘K dialog: existing cmdk, polish `rounded-xl border shadow-lift`; results
  grouped Song / Artist with type icon in soft amber square.
- `/search` page: grouped results, same treatment.

### 4.7 Favorites
- localStorage-only; grid of song cards + empty state per 3.4.

### 4.8 Blog + static pages
- Blog list: article cards (title, date, excerpt); post: prose container
  `max-w-3xl mx-auto`, existing JSON-LD/metadata untouched. Static pages
  (about/contact/request/privacy/terms): centered prose card.

### 4.9 Chords (`/chords`)
- Diagram index grid: each chord = diagram + label card; hover lift; filter
  by root letter pills.

### 4.10 Admin (light polish only)
- Keep neutral professional (not brand-amber). Dashboard stat tiles per 3.4,
  tables `bg-card rounded-xl border`, drawer forms same tokens. No gradient
  hero — admin stays quiet.

## 5. Implementation notes

- No new packages. No font swaps. No logic/store changes.
- Token swap is one pass in `globals.css` (root + `.dark` blocks) — everything
  consuming `hsl(var(--...))` updates automatically.
- Hardcoded `neutral-*` classes in components (layout, cards, chords lyrics,
  chord-diagram SVG) must be migrated to token classes — grep for `neutral-`
  and `zinc-` across `src/`.
- Chord diagram SVG colors live in `src/components/ui/chord-diagram.tsx` —
  switch to `hsl(var(--...))` via `fill="currentColor"`/className so both modes
  work.
- Verify: `npm run typecheck`, `npm run build`. Lint currently broken
  (eslint-plugin-react vs eslint 10) — pre-existing, not a blocker.