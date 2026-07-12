CREATE POLICY "Authenticated can delete artists" ON artist
    FOR DELETE USING (auth.role() = 'authenticated');

CREATE POLICY "Authenticated can delete songs" ON song
    FOR DELETE USING (auth.role() = 'authenticated');
