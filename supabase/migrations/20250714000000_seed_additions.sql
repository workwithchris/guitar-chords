-- Migration: Seed additions — 70s-2000s popular songs (separate file)
-- Generated: 2026-07-12T10:08:09.853Z
-- 30 artists

BEGIN;

INSERT INTO artist (name, slug, bio, "isActive") VALUES
  ('David Bowie', 'david-bowie', 'English singer-songwriter. Iconic, influential artist across five decades.', TRUE),
  ('AC/DC', 'ac-dc', 'Australian rock band formed in 1973. Hard rock legends.', TRUE),
  ('Guns N'' Roses', 'guns-n-roses', 'American hard rock band formed in 1985.', TRUE),
  ('Van Halen', 'van-halen', 'American rock band formed in 1972. Legendary guitar-driven hard rock.', TRUE),
  ('Aerosmith', 'aerosmith', 'American rock band formed in 1970. The Bad Boys from Boston.', TRUE),
  ('Bon Jovi', 'bon-jovi', 'American rock band formed in 1983. Arena rock icons.', TRUE),
  ('Journey', 'journey', 'American rock band formed in 1973. Arena rock legends.', TRUE),
  ('Dire Straits', 'dire-straits', 'English rock band formed in 1977. Mark Knopfler''s guitar mastery.', TRUE),
  ('ZZ Top', 'zz-top', 'American rock band formed in 1969. Blues rock with a distinct style.', TRUE),
  ('The Police', 'the-police', 'English rock band formed in 1977. New wave and reggae rock pioneers.', TRUE),
  ('The Smashing Pumpkins', 'smashing-pumpkins', 'American alternative rock band formed in 1988.', TRUE),
  ('Alice in Chains', 'alice-in-chains', 'American grunge band formed in 1987. Heavy, dark alternative.', TRUE),
  ('Weezer', 'weezer', 'American alternative rock band formed in 1992. Power pop icons.', TRUE),
  ('Counting Crows', 'counting-crows', 'American rock band formed in 1991. Folk-influenced alternative rock.', TRUE),
  ('The Cranberries', 'the-cranberries', 'Irish rock band formed in 1989. Alternative rock with Dolores O''Riordan''s distinctive voice.', TRUE),
  ('Alanis Morissette', 'alanis-morissette', 'Canadian-American singer-songwriter. 90s alt-rock icon.', TRUE),
  ('No Doubt', 'no-doubt', 'American ska punk band formed in 1986. Gwen Stefani fronted.', TRUE),
  ('Sublime', 'sublime', 'American ska punk band formed in 1988. Reggae punk fusion.', TRUE),
  ('Dave Matthews Band', 'dave-matthews-band', 'American rock band formed in 1991. Jam band legends.', TRUE),
  ('The Strokes', 'the-strokes', 'American rock band formed in 1998. Garage rock revival pioneers.', TRUE),
  ('The White Stripes', 'white-stripes', 'American rock duo formed in 1997. Jack White''s garage blues rock.', TRUE),
  ('The Killers', 'the-killers', 'American rock band formed in 2001. Indie rock superstars.', TRUE),
  ('The Verve', 'the-verve', 'English rock band formed in 1990. Britpop and space rock.', TRUE),
  ('Fleet Foxes', 'fleet-foxes', 'American indie folk band formed in 2006. Harmony-rich folk rock.', TRUE),
  ('The Cure', 'the-cure', 'English rock band formed in 1976. Gothic and alternative rock icons.', TRUE),
  ('Prince', 'prince', 'American singer-songwriter, multi-instrumentalist. Funk, pop, and rock genius.', TRUE),
  ('Boston', 'boston', 'American rock band formed in 1975. Arena rock with soaring harmonies.', TRUE),
  ('Heart', 'heart', 'American rock band formed in 1973. Pioneering women-led hard rock.', TRUE),
  ('The Cars', 'the-cars', 'American rock band formed in 1976. New wave and power pop icons.', TRUE),
  ('Blondie', 'blondie', 'American rock band formed in 1974. New wave and punk pioneers.', TRUE)
ON CONFLICT (slug) DO NOTHING;

-- Songs
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Space Oddity', 'space-oddity-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Art Rock', 'C', 1969,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Space Oddity - David Bowie

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Heroes', 'heroes-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Art Rock', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Heroes - David Bowie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Life on Mars', 'life-on-mars-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Advanced', 'Art Rock', 'C', 1971,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Life on Mars - David Bowie

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ziggy Stardust', 'ziggy-stardust-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Glam Rock', 'D', 1972,
  $song_content$<pre>D  G  A  Bm

[Verse]
D  G  A  Bm
Ziggy Stardust - David Bowie

[Chorus]
D  A  G  Bm
Play with feeling

[Outro]
D  Bm</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Suffragette City', 'suffragette-city-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Glam Rock', 'A', 1972,
  $song_content$<pre>A  D  E  F#m

[Verse]
A  D  E  F#m
Suffragette City - David Bowie

[Chorus]
A  E  D  F#m
Play with feeling

[Outro]
A  F#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rebel Rebel', 'rebel-rebel-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Beginner', 'Glam Rock', 'E', 1974,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Rebel Rebel - David Bowie

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Young Americans', 'young-americans-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Funk Rock', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Young Americans - David Bowie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fame', 'fame-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Funk Rock', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fame - David Bowie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Golden Years', 'golden-years-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Funk Rock', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Golden Years - David Bowie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Let''s Dance', 'let-s-dance-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Dance Rock', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Let's Dance - David Bowie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('China Girl', 'china-girl-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Rock', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
China Girl - David Bowie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Modern Love', 'modern-love-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Rock', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Modern Love - David Bowie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Under Pressure', 'under-pressure-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Rock', 'D', 1981,
  $song_content$<pre>D  G  A  Bm

[Verse]
D  G  A  Bm
Under Pressure - David Bowie

[Chorus]
D  A  G  Bm
Play with feeling

[Outro]
D  Bm</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Changes', 'changes-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Beginner', 'Glam Rock', 'C', 1971,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Changes - David Bowie

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Starman', 'starman-david-bowie', (SELECT id FROM artist WHERE slug = 'david-bowie'),
  'Intermediate', 'Glam Rock', 'C', 1972,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Starman - David Bowie

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Back in Black', 'back-in-black-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Advanced', 'Hard Rock', 'E', 1980,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Back in Black - AC/DC

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Highway to Hell', 'highway-to-hell-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Intermediate', 'Hard Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Highway to Hell - AC/DC

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Shook Me All Night Long', 'you-shook-me-all-night-long-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Intermediate', 'Hard Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Shook Me All Night Long - AC/DC

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Thunderstruck', 'thunderstruck-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Advanced', 'Hard Rock', 'E', 1990,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Thunderstruck - AC/DC

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Whole Lotta Rosie', 'whole-lotta-rosie-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Advanced', 'Hard Rock', 'E', 1977,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Whole Lotta Rosie - AC/DC

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('T.N.T.', 't-n-t-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Intermediate', 'Hard Rock', 'E', 1975,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
T.N.T. - AC/DC

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dirty Deeds Done Dirt Cheap', 'dirty-deeds-done-dirt-cheap-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Intermediate', 'Hard Rock', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dirty Deeds Done Dirt Cheap - AC/DC

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hell Bells', 'hell-bells-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Advanced', 'Hard Rock', 'E', 1980,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Hell Bells - AC/DC

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Shoot to Thrill', 'shoot-to-thrill-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Advanced', 'Hard Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Shoot to Thrill - AC/DC

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rock and Roll Ain''t Noise Pollution', 'rock-and-roll-ain-t-noise-pollution-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Intermediate', 'Hard Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rock and Roll Ain't Noise Pollution - AC/DC

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('For Those About to Rock', 'for-those-about-to-rock-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Advanced', 'Hard Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
For Those About to Rock - AC/DC

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Let There Be Rock', 'let-there-be-rock-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Advanced', 'Hard Rock', 'E', 1977,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Let There Be Rock - AC/DC

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jailbreak', 'jailbreak-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Intermediate', 'Hard Rock', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jailbreak - AC/DC

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Who Made Who', 'who-made-who-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Intermediate', 'Hard Rock', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Who Made Who - AC/DC

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Heatseeker', 'heatseeker-ac-dc', (SELECT id FROM artist WHERE slug = 'ac-dc'),
  'Advanced', 'Hard Rock', 'E', 1988,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Heatseeker - AC/DC

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sweet Child O'' Mine', 'sweet-child-o-mine-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Advanced', 'Hard Rock', 'D', 1987,
  $song_content$<pre>D  G  A  Bm

[Verse]
D  G  A  Bm
Sweet Child O' Mine - Guns N' Roses

[Chorus]
D  A  G  Bm
Play with feeling

[Outro]
D  Bm</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Welcome to the Jungle', 'welcome-to-the-jungle-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Advanced', 'Hard Rock', 'E', 1987,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Welcome to the Jungle - Guns N' Roses

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Paradise City', 'paradise-city-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Advanced', 'Hard Rock', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Paradise City - Guns N' Roses

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('November Rain', 'november-rain-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Advanced', 'Hard Rock', 'C', 1991,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
November Rain - Guns N' Roses

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Don''t Cry', 'don-t-cry-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Intermediate', 'Hard Rock', 'G', 1991,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Don't Cry - Guns N' Roses

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Patience', 'patience-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Intermediate', 'Hard Rock', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Patience - Guns N' Roses

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Knockin'' on Heaven''s Door', 'knockin-on-heaven-s-door-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Beginner', 'Hard Rock', 'G', 1991,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Knockin' on Heaven's Door - Guns N' Roses

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Civil War', 'civil-war-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Advanced', 'Hard Rock', 'Am', 1991,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Civil War - Guns N' Roses

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nightrain', 'nightrain-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Advanced', 'Hard Rock', 'E', 1987,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Nightrain - Guns N' Roses

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rocket Queen', 'rocket-queen-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Advanced', 'Hard Rock', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rocket Queen - Guns N' Roses

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Used to Love Her', 'used-to-love-her-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Beginner', 'Hard Rock', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Used to Love Her - Guns N' Roses

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Could Be Mine', 'you-could-be-mine-guns-n-roses', (SELECT id FROM artist WHERE slug = 'guns-n-roses'),
  'Advanced', 'Hard Rock', 'E', 1991,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
You Could Be Mine - Guns N' Roses

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jump', 'jump-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Intermediate', 'Hard Rock', 'C', 1984,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Jump - Van Halen

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Panama', 'panama-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Advanced', 'Hard Rock', 'E', 1984,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Panama - Van Halen

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hot for Teacher', 'hot-for-teacher-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Advanced', 'Hard Rock', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hot for Teacher - Van Halen

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Running with the Devil', 'running-with-the-devil-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Intermediate', 'Hard Rock', 'E', 1978,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Running with the Devil - Van Halen

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Eruption', 'eruption-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Advanced', 'Instrumental Rock', 'E', 1978,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Eruption - Van Halen

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ain''t Talkin'' ''Bout Love', 'ain-t-talkin-bout-love-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Intermediate', 'Hard Rock', 'Am', 1978,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Ain't Talkin' 'Bout Love - Van Halen

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Really Got Me', 'you-really-got-me-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Beginner', 'Hard Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Really Got Me - Van Halen

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jamie''s Cryin''', 'jamie-s-cryin-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Intermediate', 'Hard Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jamie's Cryin' - Van Halen

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('And the Cradle Will Rock', 'and-the-cradle-will-rock-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Intermediate', 'Hard Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
And the Cradle Will Rock - Van Halen

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Unchained', 'unchained-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Advanced', 'Hard Rock', 'E', 1981,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Unchained - Van Halen

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dance the Night Away', 'dance-the-night-away-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Intermediate', 'Hard Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dance the Night Away - Van Halen

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Beautiful Girls', 'beautiful-girls-van-halen', (SELECT id FROM artist WHERE slug = 'van-halen'),
  'Intermediate', 'Hard Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Beautiful Girls - Van Halen

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dream On', 'dream-on-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Intermediate', 'Rock', 'C', 1973,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Dream On - Aerosmith

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Walk This Way', 'walk-this-way-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Advanced', 'Rock', 'C', 1975,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Walk This Way - Aerosmith

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sweet Emotion', 'sweet-emotion-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Intermediate', 'Rock', 'E', 1975,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Sweet Emotion - Aerosmith

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Toys in the Attic', 'toys-in-the-attic-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Advanced', 'Rock', 'E', 1975,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Toys in the Attic - Aerosmith

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Back in the Saddle', 'back-in-the-saddle-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Advanced', 'Rock', 'E', 1976,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Back in the Saddle - Aerosmith

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Last Child', 'last-child-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Intermediate', 'Rock', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Last Child - Aerosmith

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Don''t Want to Miss a Thing', 'i-don-t-want-to-miss-a-thing-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Intermediate', 'Rock', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Don't Want to Miss a Thing - Aerosmith

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Cryin''', 'cryin-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Intermediate', 'Rock', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Cryin' - Aerosmith

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Crazy', 'crazy-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Intermediate', 'Rock', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Crazy - Aerosmith

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Amazing', 'amazing-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Intermediate', 'Rock', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Amazing - Aerosmith

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Janie''s Got a Gun', 'janie-s-got-a-gun-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Advanced', 'Rock', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Janie's Got a Gun - Aerosmith

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Love in an Elevator', 'love-in-an-elevator-aerosmith', (SELECT id FROM artist WHERE slug = 'aerosmith'),
  'Intermediate', 'Rock', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Love in an Elevator - Aerosmith

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Livin'' on a Prayer', 'livin-on-a-prayer-bon-jovi', (SELECT id FROM artist WHERE slug = 'bon-jovi'),
  'Beginner', 'Rock', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Livin' on a Prayer - Bon Jovi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Give Love a Bad Name', 'you-give-love-a-bad-name-bon-jovi', (SELECT id FROM artist WHERE slug = 'bon-jovi'),
  'Intermediate', 'Rock', 'C', 1986,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
You Give Love a Bad Name - Bon Jovi

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Wanted Dead or Alive', 'wanted-dead-or-alive-bon-jovi', (SELECT id FROM artist WHERE slug = 'bon-jovi'),
  'Beginner', 'Rock', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Wanted Dead or Alive - Bon Jovi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Always', 'always-bon-jovi', (SELECT id FROM artist WHERE slug = 'bon-jovi'),
  'Intermediate', 'Rock', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Always - Bon Jovi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bed of Roses', 'bed-of-roses-bon-jovi', (SELECT id FROM artist WHERE slug = 'bon-jovi'),
  'Intermediate', 'Rock', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bed of Roses - Bon Jovi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('It''s My Life', 'it-s-my-life-bon-jovi', (SELECT id FROM artist WHERE slug = 'bon-jovi'),
  'Intermediate', 'Rock', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
It's My Life - Bon Jovi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Blaze of Glory', 'blaze-of-glory-bon-jovi', (SELECT id FROM artist WHERE slug = 'bon-jovi'),
  'Intermediate', 'Rock', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Blaze of Glory - Bon Jovi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bad Medicine', 'bad-medicine-bon-jovi', (SELECT id FROM artist WHERE slug = 'bon-jovi'),
  'Intermediate', 'Rock', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bad Medicine - Bon Jovi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Born to Be My Baby', 'born-to-be-my-baby-bon-jovi', (SELECT id FROM artist WHERE slug = 'bon-jovi'),
  'Intermediate', 'Rock', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Born to Be My Baby - Bon Jovi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I''ll Be There for You', 'i-ll-be-there-for-you-bon-jovi', (SELECT id FROM artist WHERE slug = 'bon-jovi'),
  'Intermediate', 'Rock', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I'll Be There for You - Bon Jovi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Don''t Stop Believin''', 'don-t-stop-believin-journey', (SELECT id FROM artist WHERE slug = 'journey'),
  'Beginner', 'Arena Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Don't Stop Believin' - Journey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Any Way You Want It', 'any-way-you-want-it-journey', (SELECT id FROM artist WHERE slug = 'journey'),
  'Intermediate', 'Arena Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Any Way You Want It - Journey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Wheel in the Sky', 'wheel-in-the-sky-journey', (SELECT id FROM artist WHERE slug = 'journey'),
  'Intermediate', 'Arena Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Wheel in the Sky - Journey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lights', 'lights-journey', (SELECT id FROM artist WHERE slug = 'journey'),
  'Beginner', 'Arena Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lights - Journey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Open Arms', 'open-arms-journey', (SELECT id FROM artist WHERE slug = 'journey'),
  'Beginner', 'Arena Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Open Arms - Journey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Faithfully', 'faithfully-journey', (SELECT id FROM artist WHERE slug = 'journey'),
  'Intermediate', 'Arena Rock', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Faithfully - Journey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Separate Ways', 'separate-ways-journey', (SELECT id FROM artist WHERE slug = 'journey'),
  'Intermediate', 'Arena Rock', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Separate Ways - Journey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Who''s Crying Now', 'who-s-crying-now-journey', (SELECT id FROM artist WHERE slug = 'journey'),
  'Intermediate', 'Arena Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Who's Crying Now - Journey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Stone in Love', 'stone-in-love-journey', (SELECT id FROM artist WHERE slug = 'journey'),
  'Intermediate', 'Arena Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Stone in Love - Journey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Feeling That Way', 'feeling-that-way-journey', (SELECT id FROM artist WHERE slug = 'journey'),
  'Intermediate', 'Arena Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Feeling That Way - Journey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sultans of Swing', 'sultans-of-swing-dire-straits', (SELECT id FROM artist WHERE slug = 'dire-straits'),
  'Advanced', 'Rock', 'D', 1978,
  $song_content$<pre>D  G  A  Bm

[Verse]
D  G  A  Bm
Sultans of Swing - Dire Straits

[Chorus]
D  A  G  Bm
Play with feeling

[Outro]
D  Bm</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Money for Nothing', 'money-for-nothing-dire-straits', (SELECT id FROM artist WHERE slug = 'dire-straits'),
  'Intermediate', 'Rock', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Money for Nothing - Dire Straits

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Brothers in Arms', 'brothers-in-arms-dire-straits', (SELECT id FROM artist WHERE slug = 'dire-straits'),
  'Intermediate', 'Rock', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Brothers in Arms - Dire Straits

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Romeo and Juliet', 'romeo-and-juliet-dire-straits', (SELECT id FROM artist WHERE slug = 'dire-straits'),
  'Intermediate', 'Folk Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Romeo and Juliet - Dire Straits

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Walk of Life', 'walk-of-life-dire-straits', (SELECT id FROM artist WHERE slug = 'dire-straits'),
  'Beginner', 'Rock', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Walk of Life - Dire Straits

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('So Far Away', 'so-far-away-dire-straits', (SELECT id FROM artist WHERE slug = 'dire-straits'),
  'Intermediate', 'Rock', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
So Far Away - Dire Straits

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Your Latest Trick', 'your-latest-trick-dire-straits', (SELECT id FROM artist WHERE slug = 'dire-straits'),
  'Advanced', 'Rock', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Your Latest Trick - Dire Straits

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tunnel of Love', 'tunnel-of-love-dire-straits', (SELECT id FROM artist WHERE slug = 'dire-straits'),
  'Advanced', 'Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tunnel of Love - Dire Straits

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Down to the Waterline', 'down-to-the-waterline-dire-straits', (SELECT id FROM artist WHERE slug = 'dire-straits'),
  'Intermediate', 'Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Down to the Waterline - Dire Straits

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lady Writer', 'lady-writer-dire-straits', (SELECT id FROM artist WHERE slug = 'dire-straits'),
  'Intermediate', 'Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lady Writer - Dire Straits

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('La Grange', 'la-grange-zz-top', (SELECT id FROM artist WHERE slug = 'zz-top'),
  'Advanced', 'Blues Rock', 'A', 1973,
  $song_content$<pre>A  D  E  F#m

[Verse]
A  D  E  F#m
La Grange - ZZ Top

[Chorus]
A  E  D  F#m
Play with feeling

[Outro]
A  F#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tush', 'tush-zz-top', (SELECT id FROM artist WHERE slug = 'zz-top'),
  'Intermediate', 'Blues Rock', 'E', 1975,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Tush - ZZ Top

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sharp Dressed Man', 'sharp-dressed-man-zz-top', (SELECT id FROM artist WHERE slug = 'zz-top'),
  'Intermediate', 'Blues Rock', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sharp Dressed Man - ZZ Top

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gimme All Your Lovin''', 'gimme-all-your-lovin-zz-top', (SELECT id FROM artist WHERE slug = 'zz-top'),
  'Intermediate', 'Blues Rock', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gimme All Your Lovin' - ZZ Top

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Legs', 'legs-zz-top', (SELECT id FROM artist WHERE slug = 'zz-top'),
  'Intermediate', 'Blues Rock', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Legs - ZZ Top

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Cheap Sunglasses', 'cheap-sunglasses-zz-top', (SELECT id FROM artist WHERE slug = 'zz-top'),
  'Intermediate', 'Blues Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Cheap Sunglasses - ZZ Top

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jesus Just Left Chicago', 'jesus-just-left-chicago-zz-top', (SELECT id FROM artist WHERE slug = 'zz-top'),
  'Intermediate', 'Blues Rock', 'G', 1973,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jesus Just Left Chicago - ZZ Top

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I''m Bad I''m Nationwide', 'i-m-bad-i-m-nationwide-zz-top', (SELECT id FROM artist WHERE slug = 'zz-top'),
  'Intermediate', 'Blues Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I'm Bad I'm Nationwide - ZZ Top

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pearl Necklace', 'pearl-necklace-zz-top', (SELECT id FROM artist WHERE slug = 'zz-top'),
  'Intermediate', 'Blues Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pearl Necklace - ZZ Top

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sleeping Bag', 'sleeping-bag-zz-top', (SELECT id FROM artist WHERE slug = 'zz-top'),
  'Intermediate', 'Blues Rock', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sleeping Bag - ZZ Top

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Every Breath You Take', 'every-breath-you-take-the-police', (SELECT id FROM artist WHERE slug = 'the-police'),
  'Beginner', 'New Wave', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Every Breath You Take - The Police

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Roxanne', 'roxanne-the-police', (SELECT id FROM artist WHERE slug = 'the-police'),
  'Intermediate', 'New Wave', 'Am', 1978,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Roxanne - The Police

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Message in a Bottle', 'message-in-a-bottle-the-police', (SELECT id FROM artist WHERE slug = 'the-police'),
  'Intermediate', 'New Wave', 'Am', 1979,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Message in a Bottle - The Police

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Don''t Stand So Close to Me', 'don-t-stand-so-close-to-me-the-police', (SELECT id FROM artist WHERE slug = 'the-police'),
  'Intermediate', 'New Wave', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Don't Stand So Close to Me - The Police

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Every Little Thing She Does Is Magic', 'every-little-thing-she-does-is-magic-the-police', (SELECT id FROM artist WHERE slug = 'the-police'),
  'Intermediate', 'New Wave', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Every Little Thing She Does Is Magic - The Police

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Walking on the Moon', 'walking-on-the-moon-the-police', (SELECT id FROM artist WHERE slug = 'the-police'),
  'Beginner', 'Reggae Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Walking on the Moon - The Police

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('So Lonely', 'so-lonely-the-police', (SELECT id FROM artist WHERE slug = 'the-police'),
  'Intermediate', 'Reggae Rock', 'Am', 1978,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
So Lonely - The Police

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Can''t Stand Losing You', 'can-t-stand-losing-you-the-police', (SELECT id FROM artist WHERE slug = 'the-police'),
  'Intermediate', 'Reggae Rock', 'Am', 1978,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Can't Stand Losing You - The Police

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('King of Pain', 'king-of-pain-the-police', (SELECT id FROM artist WHERE slug = 'the-police'),
  'Intermediate', 'New Wave', 'Am', 1983,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
King of Pain - The Police

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Synchronicity II', 'synchronicity-ii-the-police', (SELECT id FROM artist WHERE slug = 'the-police'),
  'Intermediate', 'New Wave', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Synchronicity II - The Police

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('1979', '1979-smashing-pumpkins', (SELECT id FROM artist WHERE slug = 'smashing-pumpkins'),
  'Intermediate', 'Alternative', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
1979 - The Smashing Pumpkins

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tonight Tonight', 'tonight-tonight-smashing-pumpkins', (SELECT id FROM artist WHERE slug = 'smashing-pumpkins'),
  'Intermediate', 'Alternative', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tonight Tonight - The Smashing Pumpkins

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bullet with Butterfly Wings', 'bullet-with-butterfly-wings-smashing-pumpkins', (SELECT id FROM artist WHERE slug = 'smashing-pumpkins'),
  'Advanced', 'Alternative', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bullet with Butterfly Wings - The Smashing Pumpkins

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Disarm', 'disarm-smashing-pumpkins', (SELECT id FROM artist WHERE slug = 'smashing-pumpkins'),
  'Intermediate', 'Alternative', 'C', 1993,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Disarm - The Smashing Pumpkins

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Cherub Rock', 'cherub-rock-smashing-pumpkins', (SELECT id FROM artist WHERE slug = 'smashing-pumpkins'),
  'Advanced', 'Alternative', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Cherub Rock - The Smashing Pumpkins

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Today', 'today-smashing-pumpkins', (SELECT id FROM artist WHERE slug = 'smashing-pumpkins'),
  'Intermediate', 'Alternative', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Today - The Smashing Pumpkins

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Zero', 'zero-smashing-pumpkins', (SELECT id FROM artist WHERE slug = 'smashing-pumpkins'),
  'Advanced', 'Alternative', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Zero - The Smashing Pumpkins

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ava Adore', 'ava-adore-smashing-pumpkins', (SELECT id FROM artist WHERE slug = 'smashing-pumpkins'),
  'Intermediate', 'Alternative', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ava Adore - The Smashing Pumpkins

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Man in the Box', 'man-in-the-box-alice-in-chains', (SELECT id FROM artist WHERE slug = 'alice-in-chains'),
  'Advanced', 'Grunge', 'E', 1990,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Man in the Box - Alice in Chains

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Would?', 'would-alice-in-chains', (SELECT id FROM artist WHERE slug = 'alice-in-chains'),
  'Advanced', 'Grunge', 'E', 1992,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Would? - Alice in Chains

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rooster', 'rooster-alice-in-chains', (SELECT id FROM artist WHERE slug = 'alice-in-chains'),
  'Advanced', 'Grunge', 'E', 1992,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Rooster - Alice in Chains

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Down in a Hole', 'down-in-a-hole-alice-in-chains', (SELECT id FROM artist WHERE slug = 'alice-in-chains'),
  'Intermediate', 'Grunge', 'Am', 1992,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Down in a Hole - Alice in Chains

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('No Excuses', 'no-excuses-alice-in-chains', (SELECT id FROM artist WHERE slug = 'alice-in-chains'),
  'Intermediate', 'Grunge', 'E', 1994,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
No Excuses - Alice in Chains

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Them Bones', 'them-bones-alice-in-chains', (SELECT id FROM artist WHERE slug = 'alice-in-chains'),
  'Advanced', 'Grunge', 'E', 1992,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Them Bones - Alice in Chains

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Heaven Beside You', 'heaven-beside-you-alice-in-chains', (SELECT id FROM artist WHERE slug = 'alice-in-chains'),
  'Intermediate', 'Grunge', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Heaven Beside You - Alice in Chains

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nutshell', 'nutshell-alice-in-chains', (SELECT id FROM artist WHERE slug = 'alice-in-chains'),
  'Intermediate', 'Grunge', 'Em', 1994,
  $song_content$<pre>Em  C  G  D

[Verse]
Em  C  G  D
Nutshell - Alice in Chains

[Chorus]
Em  G  C  D
Play with feeling

[Outro]
Em  D</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Angry Chair', 'angry-chair-alice-in-chains', (SELECT id FROM artist WHERE slug = 'alice-in-chains'),
  'Advanced', 'Grunge', 'E', 1992,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Angry Chair - Alice in Chains

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Got Me Wrong', 'got-me-wrong-alice-in-chains', (SELECT id FROM artist WHERE slug = 'alice-in-chains'),
  'Intermediate', 'Grunge', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Got Me Wrong - Alice in Chains

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Say It Ain''t So', 'say-it-ain-t-so-weezer', (SELECT id FROM artist WHERE slug = 'weezer'),
  'Intermediate', 'Alternative', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Say It Ain't So - Weezer

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Buddy Holly', 'buddy-holly-weezer', (SELECT id FROM artist WHERE slug = 'weezer'),
  'Intermediate', 'Alternative', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Buddy Holly - Weezer

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Undone the Sweater Song', 'undone-the-sweater-song-weezer', (SELECT id FROM artist WHERE slug = 'weezer'),
  'Intermediate', 'Alternative', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Undone the Sweater Song - Weezer

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hash Pipe', 'hash-pipe-weezer', (SELECT id FROM artist WHERE slug = 'weezer'),
  'Intermediate', 'Alternative', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hash Pipe - Weezer

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Island in the Sun', 'island-in-the-sun-weezer', (SELECT id FROM artist WHERE slug = 'weezer'),
  'Beginner', 'Alternative', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Island in the Sun - Weezer

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Beverly Hills', 'beverly-hills-weezer', (SELECT id FROM artist WHERE slug = 'weezer'),
  'Intermediate', 'Alternative', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Beverly Hills - Weezer

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Perfect Situation', 'perfect-situation-weezer', (SELECT id FROM artist WHERE slug = 'weezer'),
  'Intermediate', 'Alternative', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Perfect Situation - Weezer

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pork and Beans', 'pork-and-beans-weezer', (SELECT id FROM artist WHERE slug = 'weezer'),
  'Intermediate', 'Alternative', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pork and Beans - Weezer

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('El Scorcho', 'el-scorcho-weezer', (SELECT id FROM artist WHERE slug = 'weezer'),
  'Intermediate', 'Alternative', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
El Scorcho - Weezer

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mr. Jones', 'mr-jones-counting-crows', (SELECT id FROM artist WHERE slug = 'counting-crows'),
  'Intermediate', 'Alternative', 'D', 1993,
  $song_content$<pre>D  G  A  Bm

[Verse]
D  G  A  Bm
Mr. Jones - Counting Crows

[Chorus]
D  A  G  Bm
Play with feeling

[Outro]
D  Bm</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Round Here', 'round-here-counting-crows', (SELECT id FROM artist WHERE slug = 'counting-crows'),
  'Intermediate', 'Alternative', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Round Here - Counting Crows

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('A Long December', 'a-long-december-counting-crows', (SELECT id FROM artist WHERE slug = 'counting-crows'),
  'Intermediate', 'Alternative', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
A Long December - Counting Crows

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hanginaround', 'hanginaround-counting-crows', (SELECT id FROM artist WHERE slug = 'counting-crows'),
  'Intermediate', 'Alternative', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hanginaround - Counting Crows

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Colorblind', 'colorblind-counting-crows', (SELECT id FROM artist WHERE slug = 'counting-crows'),
  'Beginner', 'Alternative', 'C', 1999,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Colorblind - Counting Crows

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Accidentally in Love', 'accidentally-in-love-counting-crows', (SELECT id FROM artist WHERE slug = 'counting-crows'),
  'Intermediate', 'Alternative', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Accidentally in Love - Counting Crows

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Omaha', 'omaha-counting-crows', (SELECT id FROM artist WHERE slug = 'counting-crows'),
  'Intermediate', 'Alternative', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Omaha - Counting Crows

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rain King', 'rain-king-counting-crows', (SELECT id FROM artist WHERE slug = 'counting-crows'),
  'Intermediate', 'Alternative', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rain King - Counting Crows

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Zombie', 'zombie-the-cranberries', (SELECT id FROM artist WHERE slug = 'the-cranberries'),
  'Intermediate', 'Alternative', 'Em', 1994,
  $song_content$<pre>Em  C  G  D

[Verse]
Em  C  G  D
Zombie - The Cranberries

[Chorus]
Em  G  C  D
Play with feeling

[Outro]
Em  D</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Linger', 'linger-the-cranberries', (SELECT id FROM artist WHERE slug = 'the-cranberries'),
  'Beginner', 'Alternative', 'C', 1993,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Linger - The Cranberries

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dreams', 'dreams-the-cranberries', (SELECT id FROM artist WHERE slug = 'the-cranberries'),
  'Intermediate', 'Alternative', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dreams - The Cranberries

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ode to My Family', 'ode-to-my-family-the-cranberries', (SELECT id FROM artist WHERE slug = 'the-cranberries'),
  'Intermediate', 'Alternative', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ode to My Family - The Cranberries

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Salvation', 'salvation-the-cranberries', (SELECT id FROM artist WHERE slug = 'the-cranberries'),
  'Intermediate', 'Alternative', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Salvation - The Cranberries

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('When You''re Gone', 'when-you-re-gone-the-cranberries', (SELECT id FROM artist WHERE slug = 'the-cranberries'),
  'Beginner', 'Alternative', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
When You're Gone - The Cranberries

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Free to Decide', 'free-to-decide-the-cranberries', (SELECT id FROM artist WHERE slug = 'the-cranberries'),
  'Intermediate', 'Alternative', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Free to Decide - The Cranberries

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Oughta Know', 'you-oughta-know-alanis-morissette', (SELECT id FROM artist WHERE slug = 'alanis-morissette'),
  'Advanced', 'Alternative', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Oughta Know - Alanis Morissette

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ironic', 'ironic-alanis-morissette', (SELECT id FROM artist WHERE slug = 'alanis-morissette'),
  'Intermediate', 'Alternative', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ironic - Alanis Morissette

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hand in My Pocket', 'hand-in-my-pocket-alanis-morissette', (SELECT id FROM artist WHERE slug = 'alanis-morissette'),
  'Beginner', 'Alternative', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hand in My Pocket - Alanis Morissette

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Head over Feet', 'head-over-feet-alanis-morissette', (SELECT id FROM artist WHERE slug = 'alanis-morissette'),
  'Intermediate', 'Alternative', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Head over Feet - Alanis Morissette

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Uninvited', 'uninvited-alanis-morissette', (SELECT id FROM artist WHERE slug = 'alanis-morissette'),
  'Intermediate', 'Alternative', 'Am', 1998,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Uninvited - Alanis Morissette

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Thank U', 'thank-u-alanis-morissette', (SELECT id FROM artist WHERE slug = 'alanis-morissette'),
  'Intermediate', 'Alternative', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Thank U - Alanis Morissette

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Everything', 'everything-alanis-morissette', (SELECT id FROM artist WHERE slug = 'alanis-morissette'),
  'Intermediate', 'Alternative', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Everything - Alanis Morissette

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Don''t Speak', 'don-t-speak-no-doubt', (SELECT id FROM artist WHERE slug = 'no-doubt'),
  'Beginner', 'Ska Punk', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Don't Speak - No Doubt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Just a Girl', 'just-a-girl-no-doubt', (SELECT id FROM artist WHERE slug = 'no-doubt'),
  'Intermediate', 'Ska Punk', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Just a Girl - No Doubt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Spiderwebs', 'spiderwebs-no-doubt', (SELECT id FROM artist WHERE slug = 'no-doubt'),
  'Intermediate', 'Ska Punk', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Spiderwebs - No Doubt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sunday Morning', 'sunday-morning-no-doubt', (SELECT id FROM artist WHERE slug = 'no-doubt'),
  'Intermediate', 'Ska Punk', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sunday Morning - No Doubt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Simple Kind of Life', 'simple-kind-of-life-no-doubt', (SELECT id FROM artist WHERE slug = 'no-doubt'),
  'Intermediate', 'Ska Punk', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Simple Kind of Life - No Doubt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hey Baby', 'hey-baby-no-doubt', (SELECT id FROM artist WHERE slug = 'no-doubt'),
  'Intermediate', 'Ska Punk', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hey Baby - No Doubt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hella Good', 'hella-good-no-doubt', (SELECT id FROM artist WHERE slug = 'no-doubt'),
  'Intermediate', 'Ska Punk', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hella Good - No Doubt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('What I Got', 'what-i-got-sublime', (SELECT id FROM artist WHERE slug = 'sublime'),
  'Beginner', 'Ska Punk', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
What I Got - Sublime

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Santeria', 'santeria-sublime', (SELECT id FROM artist WHERE slug = 'sublime'),
  'Beginner', 'Ska Punk', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Santeria - Sublime

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Wrong Way', 'wrong-way-sublime', (SELECT id FROM artist WHERE slug = 'sublime'),
  'Intermediate', 'Ska Punk', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Wrong Way - Sublime

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Doin'' Time', 'doin-time-sublime', (SELECT id FROM artist WHERE slug = 'sublime'),
  'Beginner', 'Ska Punk', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Doin' Time - Sublime

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Date Rape', 'date-rape-sublime', (SELECT id FROM artist WHERE slug = 'sublime'),
  'Intermediate', 'Ska Punk', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Date Rape - Sublime

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Badfish', 'badfish-sublime', (SELECT id FROM artist WHERE slug = 'sublime'),
  'Beginner', 'Ska Punk', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Badfish - Sublime

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('40oz to Freedom', '40oz-to-freedom-sublime', (SELECT id FROM artist WHERE slug = 'sublime'),
  'Intermediate', 'Ska Punk', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
40oz to Freedom - Sublime

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Crash into Me', 'crash-into-me-dave-matthews-band', (SELECT id FROM artist WHERE slug = 'dave-matthews-band'),
  'Intermediate', 'Rock', 'D', 1996,
  $song_content$<pre>D  G  A  Bm

[Verse]
D  G  A  Bm
Crash into Me - Dave Matthews Band

[Chorus]
D  A  G  Bm
Play with feeling

[Outro]
D  Bm</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ants Marching', 'ants-marching-dave-matthews-band', (SELECT id FROM artist WHERE slug = 'dave-matthews-band'),
  'Advanced', 'Rock', 'D', 1994,
  $song_content$<pre>D  G  A  Bm

[Verse]
D  G  A  Bm
Ants Marching - Dave Matthews Band

[Chorus]
D  A  G  Bm
Play with feeling

[Outro]
D  Bm</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Satellite', 'satellite-dave-matthews-band', (SELECT id FROM artist WHERE slug = 'dave-matthews-band'),
  'Intermediate', 'Rock', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Satellite - Dave Matthews Band

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Space Between', 'the-space-between-dave-matthews-band', (SELECT id FROM artist WHERE slug = 'dave-matthews-band'),
  'Intermediate', 'Rock', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
The Space Between - Dave Matthews Band

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('What Would You Say', 'what-would-you-say-dave-matthews-band', (SELECT id FROM artist WHERE slug = 'dave-matthews-band'),
  'Intermediate', 'Rock', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
What Would You Say - Dave Matthews Band

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tripping Billies', 'tripping-billies-dave-matthews-band', (SELECT id FROM artist WHERE slug = 'dave-matthews-band'),
  'Advanced', 'Rock', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tripping Billies - Dave Matthews Band

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Don''t Drink the Water', 'don-t-drink-the-water-dave-matthews-band', (SELECT id FROM artist WHERE slug = 'dave-matthews-band'),
  'Intermediate', 'Rock', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Don't Drink the Water - Dave Matthews Band

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Everyday', 'everyday-dave-matthews-band', (SELECT id FROM artist WHERE slug = 'dave-matthews-band'),
  'Intermediate', 'Rock', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Everyday - Dave Matthews Band

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Where Are You Going', 'where-are-you-going-dave-matthews-band', (SELECT id FROM artist WHERE slug = 'dave-matthews-band'),
  'Beginner', 'Rock', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Where Are You Going - Dave Matthews Band

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Last Nite', 'last-nite-the-strokes', (SELECT id FROM artist WHERE slug = 'the-strokes'),
  'Beginner', 'Indie Rock', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Last Nite - The Strokes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Someday', 'someday-the-strokes', (SELECT id FROM artist WHERE slug = 'the-strokes'),
  'Intermediate', 'Indie Rock', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Someday - The Strokes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hard to Explain', 'hard-to-explain-the-strokes', (SELECT id FROM artist WHERE slug = 'the-strokes'),
  'Intermediate', 'Indie Rock', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hard to Explain - The Strokes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Reptilia', 'reptilia-the-strokes', (SELECT id FROM artist WHERE slug = 'the-strokes'),
  'Intermediate', 'Indie Rock', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Reptilia - The Strokes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('12:51', '12-51-the-strokes', (SELECT id FROM artist WHERE slug = 'the-strokes'),
  'Intermediate', 'Indie Rock', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
12:51 - The Strokes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Juicebox', 'juicebox-the-strokes', (SELECT id FROM artist WHERE slug = 'the-strokes'),
  'Intermediate', 'Indie Rock', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Juicebox - The Strokes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Only Live Once', 'you-only-live-once-the-strokes', (SELECT id FROM artist WHERE slug = 'the-strokes'),
  'Intermediate', 'Indie Rock', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Only Live Once - The Strokes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Seven Nation Army', 'seven-nation-army-white-stripes', (SELECT id FROM artist WHERE slug = 'white-stripes'),
  'Beginner', 'Garage Rock', 'E', 2003,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Seven Nation Army - The White Stripes

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fell in Love with a Girl', 'fell-in-love-with-a-girl-white-stripes', (SELECT id FROM artist WHERE slug = 'white-stripes'),
  'Intermediate', 'Garage Rock', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fell in Love with a Girl - The White Stripes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Hardest Button to Button', 'the-hardest-button-to-button-white-stripes', (SELECT id FROM artist WHERE slug = 'white-stripes'),
  'Intermediate', 'Garage Rock', 'E', 2003,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
The Hardest Button to Button - The White Stripes

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dead Leaves and the Dirty Ground', 'dead-leaves-and-the-dirty-ground-white-stripes', (SELECT id FROM artist WHERE slug = 'white-stripes'),
  'Intermediate', 'Garage Rock', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dead Leaves and the Dirty Ground - The White Stripes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('We''re Going to Be Friends', 'we-re-going-to-be-friends-white-stripes', (SELECT id FROM artist WHERE slug = 'white-stripes'),
  'Beginner', 'Folk Rock', 'C', 2001,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
We're Going to Be Friends - The White Stripes

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hotel Yorba', 'hotel-yorba-white-stripes', (SELECT id FROM artist WHERE slug = 'white-stripes'),
  'Beginner', 'Garage Rock', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hotel Yorba - The White Stripes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Icky Thump', 'icky-thump-white-stripes', (SELECT id FROM artist WHERE slug = 'white-stripes'),
  'Advanced', 'Garage Rock', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Icky Thump - The White Stripes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mr. Brightside', 'mr-brightside-the-killers', (SELECT id FROM artist WHERE slug = 'the-killers'),
  'Intermediate', 'Indie Rock', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mr. Brightside - The Killers

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Somebody Told Me', 'somebody-told-me-the-killers', (SELECT id FROM artist WHERE slug = 'the-killers'),
  'Intermediate', 'Indie Rock', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Somebody Told Me - The Killers

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('When You Were Young', 'when-you-were-young-the-killers', (SELECT id FROM artist WHERE slug = 'the-killers'),
  'Intermediate', 'Indie Rock', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
When You Were Young - The Killers

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Read My Mind', 'read-my-mind-the-killers', (SELECT id FROM artist WHERE slug = 'the-killers'),
  'Intermediate', 'Indie Rock', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Read My Mind - The Killers

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Smile Like You Mean It', 'smile-like-you-mean-it-the-killers', (SELECT id FROM artist WHERE slug = 'the-killers'),
  'Intermediate', 'Indie Rock', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Smile Like You Mean It - The Killers

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('All These Things That I''ve Done', 'all-these-things-that-i-ve-done-the-killers', (SELECT id FROM artist WHERE slug = 'the-killers'),
  'Intermediate', 'Indie Rock', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
All These Things That I've Done - The Killers

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Human', 'human-the-killers', (SELECT id FROM artist WHERE slug = 'the-killers'),
  'Intermediate', 'Indie Rock', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Human - The Killers

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bitter Sweet Symphony', 'bitter-sweet-symphony-the-verve', (SELECT id FROM artist WHERE slug = 'the-verve'),
  'Intermediate', 'Britpop', 'E', 1997,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Bitter Sweet Symphony - The Verve

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lucky Man', 'lucky-man-the-verve', (SELECT id FROM artist WHERE slug = 'the-verve'),
  'Intermediate', 'Britpop', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lucky Man - The Verve

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Drugs Don''t Work', 'the-drugs-don-t-work-the-verve', (SELECT id FROM artist WHERE slug = 'the-verve'),
  'Intermediate', 'Britpop', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
The Drugs Don't Work - The Verve

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sonnet', 'sonnet-the-verve', (SELECT id FROM artist WHERE slug = 'the-verve'),
  'Intermediate', 'Britpop', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sonnet - The Verve

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Love Is Noise', 'love-is-noise-the-verve', (SELECT id FROM artist WHERE slug = 'the-verve'),
  'Intermediate', 'Britpop', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Love Is Noise - The Verve

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('White Winter Hymnal', 'white-winter-hymnal-fleet-foxes', (SELECT id FROM artist WHERE slug = 'fleet-foxes'),
  'Beginner', 'Indie Folk', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
White Winter Hymnal - Fleet Foxes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mykonos', 'mykonos-fleet-foxes', (SELECT id FROM artist WHERE slug = 'fleet-foxes'),
  'Intermediate', 'Indie Folk', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mykonos - Fleet Foxes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Blue Ridge Mountains', 'blue-ridge-mountains-fleet-foxes', (SELECT id FROM artist WHERE slug = 'fleet-foxes'),
  'Intermediate', 'Indie Folk', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Blue Ridge Mountains - Fleet Foxes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ragged Wood', 'ragged-wood-fleet-foxes', (SELECT id FROM artist WHERE slug = 'fleet-foxes'),
  'Intermediate', 'Indie Folk', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ragged Wood - Fleet Foxes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Helplessness Blues', 'helplessness-blues-fleet-foxes', (SELECT id FROM artist WHERE slug = 'fleet-foxes'),
  'Intermediate', 'Indie Folk', 'G', 2011,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Helplessness Blues - Fleet Foxes

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Boys Don''t Cry', 'boys-don-t-cry-the-cure', (SELECT id FROM artist WHERE slug = 'the-cure'),
  'Beginner', 'New Wave', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Boys Don't Cry - The Cure

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Just Like Heaven', 'just-like-heaven-the-cure', (SELECT id FROM artist WHERE slug = 'the-cure'),
  'Intermediate', 'New Wave', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Just Like Heaven - The Cure

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Friday I''m in Love', 'friday-i-m-in-love-the-cure', (SELECT id FROM artist WHERE slug = 'the-cure'),
  'Beginner', 'Alternative', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Friday I'm in Love - The Cure

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pictures of You', 'pictures-of-you-the-cure', (SELECT id FROM artist WHERE slug = 'the-cure'),
  'Intermediate', 'Alternative', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pictures of You - The Cure

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lullaby', 'lullaby-the-cure', (SELECT id FROM artist WHERE slug = 'the-cure'),
  'Intermediate', 'Alternative', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lullaby - The Cure

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Close to Me', 'close-to-me-the-cure', (SELECT id FROM artist WHERE slug = 'the-cure'),
  'Intermediate', 'New Wave', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Close to Me - The Cure

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('In Between Days', 'in-between-days-the-cure', (SELECT id FROM artist WHERE slug = 'the-cure'),
  'Intermediate', 'New Wave', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
In Between Days - The Cure

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Heaven Knows I''m Miserable Now', 'heaven-knows-i-m-miserable-now-the-cure', (SELECT id FROM artist WHERE slug = 'the-cure'),
  'Intermediate', 'New Wave', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Heaven Knows I'm Miserable Now - The Cure

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Purple Rain', 'purple-rain-prince', (SELECT id FROM artist WHERE slug = 'prince'),
  'Advanced', 'Funk Rock', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Purple Rain - Prince

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('When Doves Cry', 'when-doves-cry-prince', (SELECT id FROM artist WHERE slug = 'prince'),
  'Advanced', 'Funk', 'Am', 1984,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
When Doves Cry - Prince

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Let''s Go Crazy', 'let-s-go-crazy-prince', (SELECT id FROM artist WHERE slug = 'prince'),
  'Intermediate', 'Funk Rock', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Let's Go Crazy - Prince

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kiss', 'kiss-prince', (SELECT id FROM artist WHERE slug = 'prince'),
  'Intermediate', 'Funk', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kiss - Prince

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Raspberry Beret', 'raspberry-beret-prince', (SELECT id FROM artist WHERE slug = 'prince'),
  'Intermediate', 'Pop', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Raspberry Beret - Prince

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Little Red Corvette', 'little-red-corvette-prince', (SELECT id FROM artist WHERE slug = 'prince'),
  'Intermediate', 'Funk', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Little Red Corvette - Prince

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('1999', '1999-prince', (SELECT id FROM artist WHERE slug = 'prince'),
  'Intermediate', 'Funk', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
1999 - Prince

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sign o'' the Times', 'sign-o-the-times-prince', (SELECT id FROM artist WHERE slug = 'prince'),
  'Intermediate', 'Funk', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sign o' the Times - Prince

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('More Than a Feeling', 'more-than-a-feeling-boston', (SELECT id FROM artist WHERE slug = 'boston'),
  'Intermediate', 'Arena Rock', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
More Than a Feeling - Boston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Peace of Mind', 'peace-of-mind-boston', (SELECT id FROM artist WHERE slug = 'boston'),
  'Intermediate', 'Arena Rock', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Peace of Mind - Boston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Foreplay Long Time', 'foreplay-long-time-boston', (SELECT id FROM artist WHERE slug = 'boston'),
  'Advanced', 'Arena Rock', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Foreplay Long Time - Boston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Don''t Look Back', 'don-t-look-back-boston', (SELECT id FROM artist WHERE slug = 'boston'),
  'Intermediate', 'Arena Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Don't Look Back - Boston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rock and Roll Band', 'rock-and-roll-band-boston', (SELECT id FROM artist WHERE slug = 'boston'),
  'Intermediate', 'Arena Rock', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rock and Roll Band - Boston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Amanda', 'amanda-boston', (SELECT id FROM artist WHERE slug = 'boston'),
  'Intermediate', 'Arena Rock', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Amanda - Boston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Barracuda', 'barracuda-heart', (SELECT id FROM artist WHERE slug = 'heart'),
  'Advanced', 'Hard Rock', 'Am', 1977,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Barracuda - Heart

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Crazy on You', 'crazy-on-you-heart', (SELECT id FROM artist WHERE slug = 'heart'),
  'Advanced', 'Hard Rock', 'Am', 1976,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Crazy on You - Heart

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Magic Man', 'magic-man-heart', (SELECT id FROM artist WHERE slug = 'heart'),
  'Advanced', 'Hard Rock', 'Am', 1976,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Magic Man - Heart

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('What About Love', 'what-about-love-heart', (SELECT id FROM artist WHERE slug = 'heart'),
  'Intermediate', 'Hard Rock', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
What About Love - Heart

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('These Dreams', 'these-dreams-heart', (SELECT id FROM artist WHERE slug = 'heart'),
  'Intermediate', 'Rock', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
These Dreams - Heart

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Alone', 'alone-heart', (SELECT id FROM artist WHERE slug = 'heart'),
  'Intermediate', 'Hard Rock', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Alone - Heart

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Drive', 'drive-the-cars', (SELECT id FROM artist WHERE slug = 'the-cars'),
  'Intermediate', 'New Wave', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Drive - The Cars

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Just What I Needed', 'just-what-i-needed-the-cars', (SELECT id FROM artist WHERE slug = 'the-cars'),
  'Beginner', 'New Wave', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Just What I Needed - The Cars

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('My Best Friend''s Girl', 'my-best-friend-s-girl-the-cars', (SELECT id FROM artist WHERE slug = 'the-cars'),
  'Beginner', 'New Wave', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
My Best Friend's Girl - The Cars

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Let''s Go', 'let-s-go-the-cars', (SELECT id FROM artist WHERE slug = 'the-cars'),
  'Intermediate', 'New Wave', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Let's Go - The Cars

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Shake It Up', 'shake-it-up-the-cars', (SELECT id FROM artist WHERE slug = 'the-cars'),
  'Intermediate', 'New Wave', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Shake It Up - The Cars

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Might Think', 'you-might-think-the-cars', (SELECT id FROM artist WHERE slug = 'the-cars'),
  'Intermediate', 'New Wave', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Might Think - The Cars

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Heart of Glass', 'heart-of-glass-blondie', (SELECT id FROM artist WHERE slug = 'blondie'),
  'Intermediate', 'New Wave', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Heart of Glass - Blondie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Call Me', 'call-me-blondie', (SELECT id FROM artist WHERE slug = 'blondie'),
  'Intermediate', 'New Wave', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Call Me - Blondie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('One Way or Another', 'one-way-or-another-blondie', (SELECT id FROM artist WHERE slug = 'blondie'),
  'Beginner', 'New Wave', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
One Way or Another - Blondie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dreaming', 'dreaming-blondie', (SELECT id FROM artist WHERE slug = 'blondie'),
  'Intermediate', 'New Wave', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dreaming - Blondie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Tide Is High', 'the-tide-is-high-blondie', (SELECT id FROM artist WHERE slug = 'blondie'),
  'Beginner', 'New Wave', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
The Tide Is High - Blondie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Atomic', 'atomic-blondie', (SELECT id FROM artist WHERE slug = 'blondie'),
  'Intermediate', 'New Wave', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Atomic - Blondie

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;

COMMIT;
