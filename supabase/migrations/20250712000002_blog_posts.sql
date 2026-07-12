CREATE TABLE IF NOT EXISTS blog_post (
    id BIGSERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    slug TEXT NOT NULL UNIQUE,
    excerpt TEXT,
    content TEXT NOT NULL,
    image TEXT,
    published BOOLEAN DEFAULT false,
    "authorName" TEXT DEFAULT 'Admin',
    "createdAt" TIMESTAMPTZ DEFAULT NOW(),
    "updatedAt" TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_blog_post_slug ON blog_post(slug);
CREATE INDEX IF NOT EXISTS idx_blog_post_published ON blog_post(published);
