CREATE OR REPLACE FUNCTION get_top_songs(limit_count int DEFAULT 5)
RETURNS TABLE (
  id int,
  title text,
  slug text,
  artist_name text,
  views bigint
)
LANGUAGE sql STABLE AS $$
  SELECT
    s.id,
    s.title,
    s.slug,
    a.name AS artist_name,
    COUNT(*)::bigint AS views
  FROM page_view pv
  JOIN song s ON s.id = pv."songId"
  JOIN artist a ON a.id = s."artistId"
  WHERE pv."songId" IS NOT NULL
  GROUP BY s.id, s.title, s.slug, a.name
  ORDER BY views DESC
  LIMIT limit_count;
$$;
