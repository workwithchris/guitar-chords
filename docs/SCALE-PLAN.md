# Scale Plan — 1000s of Songs & Artists

A phased performance and UX overhaul for the guitar chords app, scoped to the
current architecture (Next.js 16 App Router, Supabase client-side, Zustand).

---

## Phase 0 — Database Indexes (1h · 🔥 Highest ROI)

Run as a new Supabase migration **before any code changes**. Every query below
benefits immediately.

```sql
-- supabase/migrations/20260714000000_perf_indexes.sql

CREATE INDEX IF NOT EXISTS idx_song_difficulty   ON song ("difficulty");
CREATE INDEX IF NOT EXISTS idx_song_genre        ON song ("genre");
CREATE INDEX IF NOT EXISTS idx_song_key          ON song ("key");
CREATE INDEX IF NOT EXISTS idx_song_is_active    ON song ("isActive");
CREATE INDEX IF NOT EXISTS idx_song_artist_id    ON song ("artistId");
CREATE INDEX IF NOT EXISTS idx_song_created_at   ON song ("createdAt");
CREATE INDEX IF NOT EXISTS idx_artist_name       ON artist (name);
CREATE INDEX IF NOT EXISTS idx_artist_is_active  ON artist ("isActive");
```

---

## Phase 1 — Home Page (2h · High Impact)

### Problem
Every visitor hits a server component that fetches **all** 100 songs + **all**
artists with song counts just to render stats and 6 recent items.

### Solution
Replace with **4 lightweight RPCs** and remove the heavy fetches from
`src/app/(public)/(home)/page.tsx`.

```sql
-- supabase/migrations/20260714000001_home_stats_rpc.sql

CREATE OR REPLACE FUNCTION get_home_stats()
RETURNS TABLE (
  total_songs    bigint,
  total_artists  bigint,
  total_genres   bigint,
  beginner_count bigint
)
LANGUAGE sql STABLE AS $$
  SELECT
    (SELECT COUNT(*) FROM song WHERE "isActive")::bigint,
    (SELECT COUNT(*) FROM artist WHERE "isActive")::bigint,
    (SELECT COUNT(DISTINCT genre) FROM song WHERE genre IS NOT NULL AND "isActive")::bigint,
    (SELECT COUNT(*) FROM song WHERE "isActive" AND difficulty = 'Beginner')::bigint;
$$;
```

**Files to change:**

| File | Change |
|------|--------|
| `src/store/api/song.server.ts` | Add `getHomeStats()`, `getRecentSongs(limit)`, `getFeaturedArtist()` using `unstable_cache` |
| `src/app/(public)/(home)/page.tsx` | Fetch only stats + 6 recent songs + featured artist. No more `fetchActiveSongs()` / `fetchActiveArtistsWithSongCountServer()` |
| `src/app/(public)/(home)/components/home-client.tsx` | Accept new lightweight prop types (just counts + recent songs + featured artist) |

---

## Phase 2 — Public Songs Pagination (4h · High Impact)

### Problem
`/songs` fetches 100 songs and does all filtering/sorting client-side.
"Show more" loads 24 more but the dataset is capped at 100.

### Solution
**Server-side pagination via `fetchSongsWithParams()`** — the API already exists
in `song.api.ts` but is only used nowhere. Wire it into the server component and
drive filters/sort/page from URL search params.

**Files to change:**

| File | Change |
|------|--------|
| `src/store/api/song.server.ts` | Add `fetchActiveSongsWithParams({ page, limit, difficulty, genre, sortBy, sortOrder })` — mirrors the existing client API but uses `createServerClient()` + `unstable_cache` |
| `src/app/(public)/songs/page.tsx` | Read `searchParams`, pas them to new server function, pass paginated data to client |
| `src/app/(public)/songs/components/list.tsx` | Remove client-side filter/sort/paginate logic. Accept `{ songs, totalCount, page, totalPages }` and drive navigation via `router.push(/songs?page=X&genre=Y...)` |

**URL-driven state:**
```
/songs?page=2&genre=Rock&difficulty=Beginner&sort=title&dir=asc
```

---

## Phase 3 — Public Artists Pagination (3h · High Impact)

### Problem
`/artists` fetches **all** artists with song counts, then filters by A-Z
letter and search client-side. For 1000+ artists the initial payload is large.

### Solution
Server-side A-Z filtering + pagination.

**Files to change:**

| File | Change |
|------|--------|
| `src/store/api/song.server.ts` | Add `fetchActiveArtistsWithParams({ page, limit, letter, search })` using `.gte("name", letter).lt("name", nextLetter)` for letter filter and `.ilike("name", search)` |
| `src/app/(public)/artists/page.tsx` | Read `searchParams`, pass to new server function |
| `src/app/(public)/artists/components/list.tsx` | Remove client-side A-Z/search filtering. Drive from URL params |

---

## Phase 4 — Admin List Pagination (4h · High Impact)

### Problem
Admin songs page fetches 100 songs, admin artists fetches all (up to 10k).
Both paginate/filter client-side. Every store mutation re-fetches everything.

### Solution
Server-side pagination + search for admin pages. Optimistic Zustand updates.

**New server APIs in `song.server.ts`:**
```ts
export const searchSongsAdmin = cache(async (params: {
  search?: string; difficulty?: string; page?: number; limit?: number
}) => {
  // uses createServerClient()
  // .ilike('title', search) OR .ilike('artist.name', search)
  // .range(from, to) with { count: 'exact' }
})

export const searchArtistsAdmin = cache(async (params: {
  search?: string; page?: number; limit?: number
}) => {
  // same pattern
})
```

**Files to change:**

| File | Change |
|------|--------|
| `src/app/admin/(protected)/songs/page.tsx` | Fetch first page server-side, pass to client |
| `src/app/admin/(protected)/songs/components/list.tsx` | Fetch pages on demand via API calls with debounced search. Remove `useSongStore` for list data (keep it for mutations only) |
| `src/app/admin/(protected)/(dashboard)/artists/page.tsx` | Same pattern for artists |
| `src/app/admin/(protected)/(dashboard)/artists/components/list.tsx` | Same pattern for artists |
| `src/store/song.store.ts` | Replace `fetch()` with targeted mutations + optimistic updates. After add/update/delete, don't re-fetch list — just update the local cache or invalidate the `unstable_cache` tag |
| `src/store/artist.store.ts` | Same pattern |

---

## Phase 5 — Artist Count SQL View (1h · Medium)

### Problem
`fetchActiveArtistsWithSongCount()` in `artist.api.ts` does 2 separate queries
(artists + songs) and joins in JS. The server version already uses
`song: song(count)` which is better but still runs a subquery per artist.

### Solution
```sql
CREATE OR REPLACE VIEW artist_with_song_count AS
SELECT
  a.*,
  COALESCE(song_counts.count, 0) AS "songCount"
FROM artist a
LEFT JOIN (
  SELECT "artistId", COUNT(*) AS count
  FROM song
  WHERE "isActive" = true
  GROUP BY "artistId"
) song_counts ON song_counts."artistId" = a.id;
```

Then query `artist_with_song_count` instead of `artist` with a join. Both the
server and client API functions get updated.

---

## Phase 6 — ⌘K Command Palette (3h · High UX)

Add a global keyboard shortcut that opens a search-overlay dialog.

**New component:** `src/components/layout/cmdk-search.tsx`

- Uses `cmdk` (or a simple dialog with debounced input)
- Bound to `meta+k` / `ctrl+k`
- Calls `searchSongsAndArtists()` debounced at 300ms
- Arrow keys to navigate, enter to visit
- Shows recent/popular results when idle

**Files to change:**

| File | Change |
|------|--------|
| `src/components/layout/public/index.tsx` | Add `<CmdkSearch />` to the layout |
| `src/components/layout/cmdk-search.tsx` | New file |

---

## Phase 7 — Admin Bulk Actions (3h · Medium UX)

**Files to change:**

| File | Change |
|------|--------|
| `src/app/admin/(protected)/songs/components/list.tsx` | Add checkbox column, "Select All" header checkbox, batch action toolbar (Delete, Activate, Deactivate) |
| `src/app/admin/(protected)/(dashboard)/artists/components/list.tsx` | Same for artists |

**New API helpers:**
```ts
export async function bulkUpdateSongs(ids: number[], updates: Partial<Song>) {
  return supabase.from("song").update(updates).in("id", ids)
}
export async function bulkDeleteSongs(ids: number[]) {
  return supabase.from("song").delete().in("id", ids)
}
```

---

## Phase 8 — Public Search Debounce (1h · Low Effort)

**Files to change:**

| File | Change |
|------|--------|
| `src/app/(public)/search/page.tsx` | Fetch results server-side, but also accept `?q=` param |
| `src/app/(public)/search/components/search-client.tsx` | Add `useTransition` + loading spinner. Use `useDeferredValue` properly (currently imported but unused) |

---

## Execution Timeline

```
Week 1          Week 2          Week 3          Week 4
─────────────────────────────────────────────────────────
Phase 0 (idx)
Phase 1 (home)
Phase 2 (songs)   Phase 4 (admin)
Phase 3 (artists) Phase 5 (view)
                  Phase 6 (⌘K)
                  Phase 7 (bulk)
                  Phase 8 (search)
```

**Start order:** Phase 0 → Phase 1 → Phase 2/3 (parallel) → Phase 4 → Phase 5
→ Phase 6/7/8 (parallel as polish).

---

## Files to Create

| File | Phase |
|------|-------|
| `supabase/migrations/20260714000000_perf_indexes.sql` | 0 |
| `supabase/migrations/20260714000001_home_stats_rpc.sql` | 1 |
| `supabase/migrations/20260714000002_artist_song_count_view.sql` | 5 |
| `src/components/layout/cmdk-search.tsx` | 6 |

## Files to Modify

Detailed in each phase above. ~15 files total across the 4-week timeline.
