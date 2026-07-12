CREATE TABLE IF NOT EXISTS artist (
    id BIGSERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    slug TEXT NOT NULL UNIQUE,
    bio TEXT,
    image TEXT,
    "isActive" BOOLEAN DEFAULT TRUE,
    "createdAt" TIMESTAMPTZ DEFAULT NOW(),
    "updatedAt" TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS song (
    id BIGSERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    slug TEXT NOT NULL UNIQUE,
    "artistId" BIGINT NOT NULL REFERENCES artist(id) ON DELETE CASCADE,
    content TEXT,
    "videoUrl" TEXT,
    year INTEGER,
    "writtenBy" TEXT,
    "createdAt" TIMESTAMPTZ DEFAULT NOW(),
    "updatedAt" TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_song_artist_id ON song("artistId");
CREATE INDEX IF NOT EXISTS idx_song_slug ON song(slug);
CREATE INDEX IF NOT EXISTS idx_artist_slug ON artist(slug);
