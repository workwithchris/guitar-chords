-- Enable RLS (already on by default, explicit for clarity)
ALTER TABLE artist ENABLE ROW LEVEL SECURITY;
ALTER TABLE song ENABLE ROW LEVEL SECURITY;

-- Public read access for everyone (anon key)
CREATE POLICY "Public can view artists" ON artist
    FOR SELECT USING (true);

CREATE POLICY "Public can view songs" ON song
    FOR SELECT USING (true);

-- Authenticated admin write access
CREATE POLICY "Authenticated can insert artists" ON artist
    FOR INSERT WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Authenticated can update artists" ON artist
    FOR UPDATE USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated can insert songs" ON song
    FOR INSERT WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Authenticated can update songs" ON song
    FOR UPDATE USING (auth.role() = 'authenticated');
