CREATE INDEX IF NOT EXISTS idx_song_difficulty   ON song ("difficulty");
CREATE INDEX IF NOT EXISTS idx_song_genre        ON song ("genre");
CREATE INDEX IF NOT EXISTS idx_song_key          ON song ("key");
CREATE INDEX IF NOT EXISTS idx_song_is_active    ON song ("isActive");
CREATE INDEX IF NOT EXISTS idx_song_artist_id    ON song ("artistId");
CREATE INDEX IF NOT EXISTS idx_song_created_at   ON song ("createdAt");
CREATE INDEX IF NOT EXISTS idx_artist_name       ON artist (name);
CREATE INDEX IF NOT EXISTS idx_artist_is_active  ON artist ("isActive");
