# Guitar Chords

A guitar chords reference site built with [Next.js](https://nextjs.org/) (App Router), [Supabase](https://supabase.com/), [Zustand](https://zustand.docs.pmnd.rs/), [shadcn/ui](https://ui.shadcn.com/), and [Tailwind CSS](https://tailwindcss.com/).

Live at [guitarchords.techyatraa.com](https://guitarchords.techyatraa.com).

## Features

- **Song library** with chord diagrams, transposition, and auto-scroll
- **Artist profiles** with song listings
- **Search** across songs and artists
- **Admin panel** — full CRUD for songs and artists with rich text editing (Jodit), active/inactive toggles
- **Dark mode** via `next-themes`
- **SEO** — dynamic sitemap, robots.txt, metadata

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Next.js 16 (App Router, Turbopack) |
| Database | Supabase (PostgreSQL, RLS) |
| State | Zustand |
| UI | shadcn/ui (new-york), Tailwind CSS |
| Auth | Supabase Auth (cookie-based) |
| Editor | Jodit React |

## Getting Started

```bash
npm install
npm run dev
```

Open [http://localhost:3000](http://localhost:3000).

## Scripts

| Command | Description |
|---|---|
| `npm run dev` | Start dev server (Turbopack) |
| `npm run build` | Production build (Turbopack) |
| `npm run start` | Start production server |
| `npm run lint` | Run ESLint |
| `npm run typecheck` | Run TypeScript type checking |

## Environment

Copy `.env.example` to `.env` and fill in your Supabase project credentials.

## Project Structure

```
src/
  app/            # Next.js App Router pages
  components/     # UI and layout components
  core/           # Supabase client, providers, constants
  store/          # Zustand stores + API layer
  lib/            # Utilities
```

## License

MIT
