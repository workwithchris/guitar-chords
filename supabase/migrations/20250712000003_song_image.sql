-- Migration: Add image column to song table for album art

ALTER TABLE song ADD COLUMN IF NOT EXISTS image TEXT;

CREATE INDEX IF NOT EXISTS idx_song_image ON song (image) WHERE image IS NOT NULL;
