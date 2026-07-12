-- Single round-trip dashboard stats instead of the admin dashboard fetching
-- every song/artist row and counting them in JS.
CREATE OR REPLACE FUNCTION get_dashboard_stats()
RETURNS TABLE (
    total_songs bigint,
    active_songs bigint,
    total_artists bigint,
    active_artists bigint,
    genres text[]
)
LANGUAGE sql
STABLE
AS $$
    SELECT
        (SELECT COUNT(*) FROM song) AS total_songs,
        (SELECT COUNT(*) FROM song WHERE "isActive") AS active_songs,
        (SELECT COUNT(*) FROM artist) AS total_artists,
        (SELECT COUNT(*) FROM artist WHERE "isActive") AS active_artists,
        (SELECT ARRAY_AGG(DISTINCT genre) FROM song WHERE genre IS NOT NULL) AS genres;
$$;

GRANT EXECUTE ON FUNCTION get_dashboard_stats() TO anon, authenticated;
