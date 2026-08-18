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
