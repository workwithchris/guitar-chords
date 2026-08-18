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
