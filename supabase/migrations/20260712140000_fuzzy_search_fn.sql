-- Typo-tolerant search: falls back to trigram similarity when the exact
-- substring (ilike) match misses, ranked so closer matches sort first.
-- Reuses the GIN trgm indexes from 20260712120000_search_trgm_indexes.sql.
--
-- Supabase installs extensions into the "extensions" schema, which isn't
-- always on a function's search_path, hence pg_trgm's `similarity()` failing
-- to resolve. Re-declaring the extension here is a no-op if already present;
-- the explicit SET search_path makes both functions resolve it regardless of
-- which schema it landed in or what the calling session's path is.
CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE OR REPLACE FUNCTION search_songs(search_query text, result_limit int DEFAULT 50, min_similarity real DEFAULT 0.25)
RETURNS TABLE (
    id bigint,
    title text,
    slug text,
    image text,
    artist_id bigint,
    artist_name text,
    artist_is_active boolean
)
LANGUAGE sql
STABLE
SET search_path = public, extensions, pg_catalog
AS $$
    SELECT
        s.id, s.title, s.slug, s.image,
        a.id AS artist_id, a.name AS artist_name, a."isActive" AS artist_is_active
    FROM song s
    JOIN artist a ON a.id = s."artistId"
    WHERE s.title ILIKE '%' || search_query || '%'
       OR similarity(s.title, search_query) > min_similarity
    ORDER BY GREATEST(
        similarity(s.title, search_query),
        (s.title ILIKE '%' || search_query || '%')::int::real
    ) DESC
    LIMIT result_limit;
$$;

GRANT EXECUTE ON FUNCTION search_songs(text, int, real) TO anon, authenticated;

CREATE OR REPLACE FUNCTION search_artists(search_query text, result_limit int DEFAULT 50, min_similarity real DEFAULT 0.25)
RETURNS TABLE (
    id bigint,
    name text,
    slug text,
    bio text,
    image text,
    "isActive" boolean
)
LANGUAGE sql
STABLE
SET search_path = public, extensions, pg_catalog
AS $$
    SELECT a.id, a.name, a.slug, a.bio, a.image, a."isActive"
    FROM artist a
    WHERE a.name ILIKE '%' || search_query || '%'
       OR similarity(a.name, search_query) > min_similarity
    ORDER BY GREATEST(
        similarity(a.name, search_query),
        (a.name ILIKE '%' || search_query || '%')::int::real
    ) DESC
    LIMIT result_limit;
$$;

GRANT EXECUTE ON FUNCTION search_artists(text, int, real) TO anon, authenticated;
