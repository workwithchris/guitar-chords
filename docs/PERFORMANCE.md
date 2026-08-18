# Performance Optimization Plan

## Current State Summary

- **No caching**: all pages use `revalidate = 0` (SSR every request), including static pages.
- **Full table scans**: multiple queries use `.limit(10000)`, loading all rows unnecessarily.
- **Two animation libraries**: framer-motion + gsap in `song/[slug]/detail.tsx` (~100KB+ extra JS).
- **Lenis smooth scroll** wraps entire public site — adds JS overhead to every page.
- **Blog uses `<img>`** instead of `next/image`.
- **No image `priority`** on LCP images.
- **Client Supabase from server components** — blog uses browser anon key server-side.

---

## H1 — Caching & Revalidation (Biggest Impact)

| File | Change | Rationale |
|---|---|---|
| `src/app/(public)/songs/[slug]/page.tsx` | `revalidate = 60` | Song content changes infrequently; 60s stale is fine |
| `src/app/(public)/artists/[slug]/page.tsx` | `revalidate = 60` | Same as songs |
| `src/app/(public)/artists/page.tsx` | `revalidate = 300` | Artist list changes rarely |
| `src/app/(public)/songs/page.tsx` | `revalidate = 60` | New songs may appear, 60s is acceptable |
| `src/app/(public)/blog/page.tsx` | `revalidate = 300` | Blog posts are published manually |
| `src/app/(public)/blog/[slug]/page.tsx` | `revalidate = 300` | Same |
| `src/app/(public)/search/page.tsx` | keep `revalidate = 0` | Search must be fresh |
| `src/app/(public)/(home)/page.tsx` | `revalidate = 60` | Homepage content |
| `src/app/(public)/about-us/page.tsx` | remove `revalidate` (auto-static) | Fully static content |
| `src/app/(public)/contact-us/page.tsx` | remove `revalidate` (auto-static) | Fully static content |
| `src/app/(public)/request/page.tsx` | remove `revalidate` (auto-static) | Fully static content |
| `src/app/(public)/favorites/page.tsx` | remove `revalidate` (auto-static) | Client-only content |

---

## H2 — Data Fetching Optimization

| File | Change | Rationale |
|---|---|---|
| `src/store/api/song.server.ts` | Add `import { cache } from 'react'` wrapper to all server fetchers | Deduplicates requests within a render pass |
| `src/store/api/song.server.ts` | Add `import { unstable_cache } from 'next/cache'` for data caching | Persists across requests (e.g. 60s TTL) |
| `src/store/api/song.api.ts` (all fetch functions) | Replace `.limit(10000)` with `.limit(100)` or paginated queries | No page needs 10K rows at once |
| `src/app/(public)/songs/page.tsx` | Pass pagination params, use `fetchActiveSongsServer()` with limit | Reduce payload size |
| `src/app/(public)/songs/components/list.tsx` | Accept paginated data; implement server-side search/filter | Avoid filtering 10K rows on client |
| `src/store/api/song.server.ts` `fetchActiveArtistsWithSongCountServer` | Use a single Supabase RPC or DB view instead of 2 queries + JS loop | Reduce to 1 round trip |
| `src/app/(public)/blog/page.tsx` | Use `@/core/supabase/server.ts` for data fetching | Don't bundle browser anon key in server bundle |
| `src/app/(public)/blog/[slug]/page.tsx` | Use `@/core/supabase/server.ts` for data fetching | Same |

---

## H3 — Bundle Size Reduction

| File | Change | Rationale |
|---|---|---|
| `src/app/(public)/songs/[slug]/components/detail.tsx` | Remove gsap/ScrollTrigger import, keep framer-motion only | Duplicate animation libs = wasted bytes |
| `src/app/(public)/songs/[slug]/components/detail.tsx` | Dynamic import `react-share` with `next/dynamic({ ssr: false })` | Social buttons not needed on load |
| `src/app/(public)/songs/[slug]/components/detail.tsx` | Dynamic import `ChordPopoverContainer` | Not visible until user interaction |
| `src/app/(public)/songs/[slug]/components/detail.tsx` | Dynamic import `ChordDiagramList` | Below the fold |
| `src/components/layout/scroll-provider.tsx` | Remove Lenis from public layout, or limit to specific pages | Unnecessary smooth scroll JS on every page |

---

## H4 — Image Optimization

| File | Change | Rationale |
|---|---|---|
| `src/app/(public)/(home)/components/home-client.tsx` | Add `priority` to featured artist image | LCP candidate |
| `src/app/(public)/songs/[slug]/components/detail.tsx` | Add `priority` to song/artist image | LCP candidate |
| `src/app/(public)/blog/page.tsx` | Replace `<img>` with `next/image` | WebP, resizing, lazy loading |
| `src/app/(public)/blog/[slug]/page.tsx` | Replace `<img>` with `next/image` | Same |
| `next.config.mjs` | Add `formats: ['image/webp']` or custom `loader` | Optimize image delivery |

---

## H5 — Misc Improvements

| File | Change | Rationale |
|---|---|---|
| `src/app/(public)/songs/[slug]/page.tsx` | Add `generateStaticParams` for popular songs | Pre-render most-visited pages at build |
| `src/app/(public)/artists/[slug]/page.tsx` | Add `generateStaticParams` for popular artists | Same |
| `src/proxy.ts` | Narrow `matcher` pattern if possible | Reduce middleware surface area |

---

## Implementation Order

1. **H1 — Caching** (5 min, no-risk: changes to revalidate values)
2. **H4 — Image optimization** (10 min: priority + next/image conversions)
3. **H3 — Bundle size: remove gsap** (10 min: drop one animation lib)
4. **H3 — Dynamic imports** (15 min: lazy-load share buttons + chord components)
5. **H2 — Data fetching: cache wrapper + pagination** (30 min: biggest refactor)
6. **H2 — Fix server component Supabase usage** (15 min)
7. **H5 — generateStaticParams** (20 min)
8. **H3 — Lenis removal** (15 min)
