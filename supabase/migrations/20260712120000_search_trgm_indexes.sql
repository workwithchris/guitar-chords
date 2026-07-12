-- Speed up ilike '%query%' search on song titles and artist names as the
-- catalog grows past what a sequential scan can comfortably handle.
CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE INDEX IF NOT EXISTS idx_song_title_trgm ON song USING GIN (title gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_artist_name_trgm ON artist USING GIN (name gin_trgm_ops);
