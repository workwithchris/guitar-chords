CREATE TABLE IF NOT EXISTS page_view (
    id BIGSERIAL PRIMARY KEY,
    path TEXT NOT NULL,
    "songId" BIGINT REFERENCES song(id) ON DELETE SET NULL,
    "userAgent" TEXT,
    "referrer" TEXT,
    "createdAt" TIMESTAMPTZ DEFAULT NOW()
);

DO $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_schema = 'public'
          AND table_name = 'page_view'
          AND column_name = 'songid'
    ) AND NOT EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_schema = 'public'
          AND table_name = 'page_view'
          AND column_name = 'songId'
    ) THEN
        ALTER TABLE page_view RENAME COLUMN songid TO "songId";
    END IF;
END $$;

ALTER TABLE page_view
    ADD COLUMN IF NOT EXISTS "songId" BIGINT REFERENCES song(id) ON DELETE SET NULL,
    ADD COLUMN IF NOT EXISTS "userAgent" TEXT,
    ADD COLUMN IF NOT EXISTS "referrer" TEXT,
    ADD COLUMN IF NOT EXISTS "createdAt" TIMESTAMPTZ DEFAULT NOW();

CREATE INDEX IF NOT EXISTS idx_page_view_path ON page_view(path);
CREATE INDEX IF NOT EXISTS idx_page_view_created_at ON page_view("createdAt");
CREATE INDEX IF NOT EXISTS idx_page_view_song_id ON page_view("songId");
