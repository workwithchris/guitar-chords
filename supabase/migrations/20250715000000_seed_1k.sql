-- Migration: Seed 1k unique songs (English, Nepali, Hindi)
-- Generated: 2026-07-12T10:18:58.528Z
-- 85 artists (35 English, 20 Nepali, 30 Hindi)

BEGIN;

INSERT INTO artist (name, slug, bio, "isActive") VALUES
  ('Radiohead', 'radiohead', 'English rock band formed in 1985. Pioneers of alternative and experimental rock.', TRUE),
  ('The Clash', 'the-clash', 'English punk rock band formed in 1976. Pioneering punk and post-punk.', TRUE),
  ('Black Sabbath', 'black-sabbath', 'English heavy metal band formed in 1968. Pioneers of heavy metal.', TRUE),
  ('Iron Maiden', 'iron-maiden', 'English heavy metal band formed in 1975. New Wave of British Heavy Metal icons.', TRUE),
  ('Rush', 'rush', 'Canadian rock band formed in 1968. Progressive rock legends.', TRUE),
  ('Genesis', 'genesis', 'English rock band formed in 1967. Pioneers of progressive rock and later pop rock.', TRUE),
  ('Depeche Mode', 'depeche-mode', 'English electronic band formed in 1980. Pioneers of synth-pop and electronic rock.', TRUE),
  ('Talking Heads', 'talking-heads', 'American rock band formed in 1977. Pioneers of new wave and art pop.', TRUE),
  ('The Smiths', 'the-smiths', 'English rock band formed in 1982. Influential indie rock pioneers.', TRUE),
  ('Electric Light Orchestra', 'elo', 'English rock band formed in 1970. Orchestral rock pioneers.', TRUE),
  ('Supertramp', 'supertramp', 'English rock band formed in 1970. Progressive and art rock icons.', TRUE),
  ('Toto', 'toto', 'American rock band formed in 1977. Highly skilled session musician supergroup.', TRUE),
  ('Foreigner', 'foreigner', 'British-American rock band formed in 1976. Arena rock staples.', TRUE),
  ('Janis Joplin', 'janis-joplin', 'American singer-songwriter. Iconic blues-rock vocalist.', TRUE),
  ('The Grateful Dead', 'grateful-dead', 'American rock band formed in 1965. Psychedelic rock and jam band icons.', TRUE),
  ('Earth, Wind & Fire', 'earth-wind-fire', 'American band formed in 1969. Pioneers of funk, soul, and R&B.', TRUE),
  ('James Brown', 'james-brown', 'American singer-songwriter. The Godfather of Soul.', TRUE),
  ('Ray Charles', 'ray-charles', 'American singer-songwriter and pianist. Pioneer of soul music.', TRUE),
  ('Madonna', 'madonna', 'American singer-songwriter. The Queen of Pop.', TRUE),
  ('ABBA', 'abba', 'Swedish pop group formed in 1972. Legendary pop superstars.', TRUE),
  ('The Bee Gees', 'bee-gees', 'English-Australian pop group formed in 1958. Disco and pop icons.', TRUE),
  ('Whitney Houston', 'whitney-houston', 'American singer and actress. One of the best-selling music artists.', TRUE),
  ('Mariah Carey', 'mariah-carey', 'American singer-songwriter. The Songbird Supreme.', TRUE),
  ('Taylor Swift', 'taylor-swift', 'American singer-songwriter. One of the most influential pop stars.', TRUE),
  ('Backstreet Boys', 'backstreet-boys', 'American vocal group formed in 1993. Best-selling boy band.', TRUE),
  ('Britney Spears', 'britney-spears', 'American singer. The Princess of Pop.', TRUE),
  ('Duran Duran', 'duran-duran', 'English new wave band formed in 1978. New Romantic icons.', TRUE),
  ('Tears for Fears', 'tears-for-fears', 'English pop rock band formed in 1981. New wave and synth-pop.', TRUE),
  ('Amy Winehouse', 'amy-winehouse', 'English singer-songwriter. Soul and jazz revival icon.', TRUE),
  ('Alicia Keys', 'alicia-keys', 'American singer-songwriter. R&B and soul icon.', TRUE),
  ('Norah Jones', 'norah-jones', 'American singer-songwriter and pianist. Jazz-influenced pop.', TRUE),
  ('P!nk', 'pink', 'American singer-songwriter. Pop rock and acrobatic performer.', TRUE),
  ('Avril Lavigne', 'avril-lavigne', 'Canadian singer-songwriter. Pop punk icon.', TRUE),
  ('Kelly Clarkson', 'kelly-clarkson', 'American singer-songwriter. Original American Idol winner.', TRUE),
  ('Pixies', 'pixies', 'American alternative rock band formed in 1986. Influential indie rock pioneers.', TRUE),
  ('Shreya Sotang', 'shreya-sotang', 'Nepali playback singer known for modern pop and folk fusion.', TRUE),
  ('Melina Rai', 'melina-rai', 'Nepali pop singer known for her soulful voice and modern pop hits.', TRUE),
  ('Saurabh Adhikari', 'saurabh-adhikari', 'Nepali singer-songwriter and musician. Modern folk pop.', TRUE),
  ('Rajina Rimal', 'rajina-rimal', 'Nepali folk and modern singer with a distinct voice.', TRUE),
  ('Anju Panta', 'anju-panta', 'Nepali playback singer. Known for modern folk and pop songs.', TRUE),
  ('Kunti Moktan', 'kunti-moktan', 'Nepali folk and modern singer. Versatile vocalist.', TRUE),
  ('Nima Rumba', 'nima-rumba', 'Nepali pop singer and composer. Leading figure in Nepali pop.', TRUE),
  ('Rajesh Payal Rai', 'rajesh-payal-rai', 'Nepali pop rock singer. Known for energetic performances.', TRUE),
  ('Phattiman Rajbhandari', 'phattiman-rajbhandari', 'Nepali folk and modern singer. Known for soulful melodies.', TRUE),
  ('Rohit John Chettri', 'rohit-john-chettri', 'Nepali singer-songwriter. Modern folk and pop rock.', TRUE),
  ('Underground Tropa', 'underground-tropa', 'Nepali reggae and ska band. Known for socially conscious lyrics.', TRUE),
  ('Raju Lama', 'raju-lama', 'Nepali Tamang Selo singer. Known for traditional Tamang folk music.', TRUE),
  ('Ram Chandra Kafle', 'ram-chandra-kafle', 'Nepali folk singer. Known for traditional Nepali folk songs.', TRUE),
  ('The Black Cats', 'the-black-cats', 'Nepali pop band formed in the 1990s. Pioneers of Nepali pop music.', TRUE),
  ('Swor Samrat', 'swor-samrat', 'Nepali pop rock band. Modern Nepali music sensations.', TRUE),
  ('Trishala Gurung', 'trishala-gurung', 'Nepali pop singer. Rising star in the Nepali music scene.', TRUE),
  ('Sushma Shakya', 'sushma-shakya', 'Nepali playback and folk singer. Known for melodious voice.', TRUE),
  ('Kiran Pradhan', 'kiran-pradhan', 'Nepali folk pop singer. Known for soulful romantic songs.', TRUE),
  ('Bijay Bdr. Rana', 'bijay-bdr-rana', 'Nepali folk singer. Known for traditional folk melodies.', TRUE),
  ('Candrabali', 'candrabali', 'Nepali folk singer. Keeper of traditional Nepali folk music heritage.', TRUE),
  ('Lata Mangeshkar', 'lata-mangeshkar', 'Legendary Indian playback singer. The Nightingale of India.', TRUE),
  ('Kishore Kumar', 'kishore-kumar', 'Legendary Indian playback singer and actor. One of the greatest singers of Indian cinema.', TRUE),
  ('Mohammad Rafi', 'mohammad-rafi', 'Legendary Indian playback singer. One of the most versatile singers in Indian cinema.', TRUE),
  ('Mukesh', 'mukesh', 'Legendary Indian playback singer. Known for his soulful and melancholic voice.', TRUE),
  ('Asha Bhosle', 'asha-bhosle', 'Legendary Indian playback singer. Versatile vocalist with a career spanning decades.', TRUE),
  ('Manna Dey', 'manna-dey', 'Legendary Indian playback singer. Known for his classical-based singing.', TRUE),
  ('Geeta Dutt', 'geeta-dutt', 'Legendary Indian playback singer. Known for her melodious and soulful voice.', TRUE),
  ('Hemant Kumar', 'hemant-kumar', 'Legendary Indian playback singer and composer. Known for his melodious voice.', TRUE),
  ('Talat Mahmood', 'talat-mahmood', 'Legendary Indian playback singer. Known for his soulful and romantic voice.', TRUE),
  ('A.R. Rahman', 'ar-rahman', 'Indian composer, singer, and music producer. Academy Award winner. The Mozart of Madras.', TRUE),
  ('Sonu Nigam', 'sonu-nigam', 'Indian playback singer. One of the most versatile and popular modern singers.', TRUE),
  ('Kumar Sanu', 'kumar-sanu', 'Indian playback singer. King of romantic songs in the 1990s.', TRUE),
  ('Alka Yagnik', 'alka-yagnik', 'Indian playback singer. Leading female playback singer of the 1990s and 2000s.', TRUE),
  ('Shreya Ghoshal', 'shreya-ghoshal', 'Indian playback singer. One of the most popular and versatile contemporary singers.', TRUE),
  ('Udit Narayan', 'udit-narayan', 'Indian playback singer. Leading male playback singer of the 1990s.', TRUE),
  ('KK', 'kk', 'Indian playback singer. Known for his versatile voice and soulful renditions.', TRUE),
  ('Shaan', 'shaan', 'Indian playback singer. Known for his youthful and energetic voice.', TRUE),
  ('Mohit Chauhan', 'mohit-chauhan', 'Indian playback singer. Known for his soulful and soothing voice.', TRUE),
  ('Atif Aslam', 'atif-aslam', 'Pakistani playback singer. Popular across India and Pakistan for romantic songs.', TRUE),
  ('Neha Kakkar', 'neha-kakkar', 'Indian playback singer. Popular modern Bollywood voice.', TRUE),
  ('Badshah', 'badshah', 'Indian rapper and singer. Pioneer of commercial hip-hop in India.', TRUE),
  ('Nusrat Fateh Ali Khan', 'nusrat-fateh-ali-khan', 'Pakistani qawwali singer. The Shahenshah of Qawwali.', TRUE),
  ('Jagjit Singh', 'jagjit-singh', 'Indian ghazal singer. The Ghazal King.', TRUE),
  ('Hariharan', 'hariharan', 'Indian playback singer and ghazal singer. Known for his rich voice.', TRUE),
  ('Kavita Krishnamurthy', 'kavita-krishnamurthy', 'Indian playback singer. Known for her versatile classical and modern singing.', TRUE),
  ('Shankar Mahadevan', 'shankar-mahadevan', 'Indian playback singer and music composer. One third of Shankar-Ehsaan-Loy.', TRUE),
  ('Abhijeet Bhattacharya', 'abhijeet', 'Indian playback singer. Known for his romantic songs in the 1990s and 2000s.', TRUE),
  ('Anuradha Paudwal', 'anuradha-paudwal', 'Indian playback singer. Known for devotional and romantic songs.', TRUE),
  ('Ghulam Ali', 'ghulam-ali', 'Pakistani ghazal singer. Master of the Patiala gharana.', TRUE),
  ('Sunidhi Chauhan', 'sunidhi-chauhan', 'Indian playback singer. Known for her powerful and versatile voice.', TRUE)
ON CONFLICT (slug) DO NOTHING;

-- Songs
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Creep', 'creep-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Creep - Radiohead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Karma Police', 'karma-police-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'Am', 1997,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Karma Police - Radiohead

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Paranoid Android', 'paranoid-android-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Advanced', 'Alternative', 'C', 1997,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Paranoid Android - Radiohead

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('No Surprises', 'no-surprises-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'F', 1997,
  $song_content$<pre>F  Bb  C  Dm

[Verse]
F  Bb  C  Dm
No Surprises - Radiohead

[Chorus]
F  C  Bb  Dm
Play with feeling

[Outro]
F  Dm</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fake Plastic Trees', 'fake-plastic-trees-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'C', 1995,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Fake Plastic Trees - Radiohead

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('High and Dry', 'high-and-dry-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
High and Dry - Radiohead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Street Spirit', 'street-spirit-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'Am', 1995,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Street Spirit - Radiohead

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Exit Music', 'exit-music-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'Am', 1997,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Exit Music - Radiohead

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Idioteque', 'idioteque-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Electronic', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Idioteque - Radiohead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Knives Out', 'knives-out-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'Am', 2001,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Knives Out - Radiohead

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('London Calling', 'london-calling-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Intermediate', 'Punk', 'E', 1979,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
London Calling - The Clash

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Should I Stay or Should I Go', 'should-i-stay-or-should-i-go-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Beginner', 'Punk', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Should I Stay or Should I Go - The Clash

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rock the Casbah', 'rock-the-casbah-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Intermediate', 'Punk', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rock the Casbah - The Clash

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Train in Vain', 'train-in-vain-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Beginner', 'Punk', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Train in Vain - The Clash

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Fought the Law', 'i-fought-the-law-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Beginner', 'Punk', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Fought the Law - The Clash

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('White Riot', 'white-riot-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Intermediate', 'Punk', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
White Riot - The Clash

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Straight to Hell', 'straight-to-hell-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Intermediate', 'Punk', 'Am', 1982,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Straight to Hell - The Clash

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Police and Thieves', 'police-and-thieves-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Intermediate', 'Punk', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Police and Thieves - The Clash

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Complete Control', 'complete-control-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Intermediate', 'Punk', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Complete Control - The Clash

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Clash City Rockers', 'clash-city-rockers-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Intermediate', 'Punk', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Clash City Rockers - The Clash

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Paranoid', 'paranoid-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Intermediate', 'Heavy Metal', 'E', 1970,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Paranoid - Black Sabbath

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Iron Man', 'iron-man-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Intermediate', 'Heavy Metal', 'E', 1970,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Iron Man - Black Sabbath

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('War Pigs', 'war-pigs-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Advanced', 'Heavy Metal', 'E', 1970,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
War Pigs - Black Sabbath

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('N.I.B.', 'n-i-b-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Intermediate', 'Heavy Metal', 'E', 1970,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
N.I.B. - Black Sabbath

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Children of the Grave', 'children-of-the-grave-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Advanced', 'Heavy Metal', 'E', 1971,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Children of the Grave - Black Sabbath

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Heaven and Hell', 'heaven-and-hell-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Advanced', 'Heavy Metal', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Heaven and Hell - Black Sabbath

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fairies Wear Boots', 'fairies-wear-boots-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Intermediate', 'Heavy Metal', 'E', 1970,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Fairies Wear Boots - Black Sabbath

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Changes', 'changes-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Beginner', 'Heavy Metal', 'C', 1972,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
Changes - Black Sabbath

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sweet Leaf', 'sweet-leaf-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Intermediate', 'Heavy Metal', 'E', 1971,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Sweet Leaf - Black Sabbath

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Number of the Beast', 'the-number-of-the-beast-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Advanced', 'Heavy Metal', 'E', 1982,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
The Number of the Beast - Iron Maiden

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Run to the Hills', 'run-to-the-hills-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Advanced', 'Heavy Metal', 'E', 1982,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Run to the Hills - Iron Maiden

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fear of the Dark', 'fear-of-the-dark-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Advanced', 'Heavy Metal', 'Am', 1992,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Fear of the Dark - Iron Maiden

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hallowed Be Thy Name', 'hallowed-be-thy-name-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Advanced', 'Heavy Metal', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hallowed Be Thy Name - Iron Maiden

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Trooper', 'the-trooper-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Advanced', 'Heavy Metal', 'E', 1983,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
The Trooper - Iron Maiden

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Wasted Years', 'wasted-years-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Intermediate', 'Heavy Metal', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Wasted Years - Iron Maiden

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aces High', 'aces-high-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Advanced', 'Heavy Metal', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aces High - Iron Maiden

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('2 Minutes to Midnight', '2-minutes-to-midnight-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Advanced', 'Heavy Metal', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
2 Minutes to Midnight - Iron Maiden

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tom Sawyer', 'tom-sawyer-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Advanced', 'Progressive Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tom Sawyer - Rush

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Limelight', 'limelight-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Advanced', 'Progressive Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Limelight - Rush

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Spirit of Radio', 'spirit-of-radio-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Advanced', 'Progressive Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Spirit of Radio - Rush

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Subdivisions', 'subdivisions-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Advanced', 'Progressive Rock', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Subdivisions - Rush

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('YYZ', 'yyz-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Advanced', 'Instrumental', 'Am', 1981,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
YYZ - Rush

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Closer to the Heart', 'closer-to-the-heart-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Intermediate', 'Progressive Rock', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Closer to the Heart - Rush

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Freewill', 'freewill-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Advanced', 'Progressive Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Freewill - Rush

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fly by Night', 'fly-by-night-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Intermediate', 'Progressive Rock', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fly by Night - Rush

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Invisible Touch', 'invisible-touch-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Intermediate', 'Pop Rock', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Invisible Touch - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Land of Confusion', 'land-of-confusion-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Intermediate', 'Pop Rock', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Land of Confusion - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('That''s All', 'that-s-all-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Intermediate', 'Pop Rock', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
That's All - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mama', 'mama-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Intermediate', 'Progressive Rock', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mama - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Turn It On Again', 'turn-it-on-again-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Intermediate', 'Pop Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Turn It On Again - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('No Son of Mine', 'no-son-of-mine-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Intermediate', 'Pop Rock', 'G', 1991,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
No Son of Mine - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Can''t Dance', 'i-can-t-dance-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Intermediate', 'Pop Rock', 'G', 1991,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Can't Dance - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jesus He Knows Me', 'jesus-he-knows-me-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Intermediate', 'Pop Rock', 'G', 1991,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jesus He Knows Me - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Follow You Follow Me', 'follow-you-follow-me-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Beginner', 'Pop Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Follow You Follow Me - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Personal Jesus', 'personal-jesus-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Intermediate', 'Electronic', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Personal Jesus - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Enjoy the Silence', 'enjoy-the-silence-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Intermediate', 'Electronic', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Enjoy the Silence - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Just Can''t Get Enough', 'just-can-t-get-enough-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Beginner', 'Synth Pop', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Just Can't Get Enough - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Never Let Me Down Again', 'never-let-me-down-again-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Intermediate', 'Electronic', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Never Let Me Down Again - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Strangelove', 'strangelove-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Intermediate', 'Electronic', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Strangelove - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Policy of Truth', 'policy-of-truth-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Intermediate', 'Electronic', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Policy of Truth - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Feel You', 'i-feel-you-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Intermediate', 'Electronic', 'E', 1993,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
I Feel You - Depeche Mode

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Everything Counts', 'everything-counts-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Intermediate', 'Electronic', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Everything Counts - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('People Are People', 'people-are-people-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Intermediate', 'Electronic', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
People Are People - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Once in a Lifetime', 'once-in-a-lifetime-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Once in a Lifetime - Talking Heads

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Burning Down the House', 'burning-down-the-house-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Burning Down the House - Talking Heads

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Psycho Killer', 'psycho-killer-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Psycho Killer - Talking Heads

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('This Must Be the Place', 'this-must-be-the-place-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'C', 1983,
  $song_content$<pre>C  G  Am  F

[Verse]
C  G  Am  F
This Must Be the Place - Talking Heads

[Chorus]
C  Am  G  F
Play with feeling

[Outro]
C  F</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Road to Nowhere', 'road-to-nowhere-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Road to Nowhere - Talking Heads

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('And She Was', 'and-she-was-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
And She Was - Talking Heads

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Wild Wild Life', 'wild-wild-life-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Wild Wild Life - Talking Heads

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Take Me to the River', 'take-me-to-the-river-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Take Me to the River - Talking Heads

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('There Is a Light That Never Goes Out', 'there-is-a-light-that-never-goes-out-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
There Is a Light That Never Goes Out - The Smiths

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('How Soon Is Now', 'how-soon-is-now-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'Am', 1984,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
How Soon Is Now - The Smiths

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('This Charming Man', 'this-charming-man-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
This Charming Man - The Smiths

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Heaven Knows I''m Miserable Now', 'heaven-knows-i-m-miserable-now-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Heaven Knows I'm Miserable Now - The Smiths

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bigmouth Strikes Again', 'bigmouth-strikes-again-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bigmouth Strikes Again - The Smiths

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Panic', 'panic-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Panic - The Smiths

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Girlfriend in a Coma', 'girlfriend-in-a-coma-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Girlfriend in a Coma - The Smiths

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ask', 'ask-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ask - The Smiths

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mr. Blue Sky', 'mr-blue-sky-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mr. Blue Sky - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Livin'' Thing', 'livin-thing-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Livin' Thing - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Don''t Bring Me Down', 'don-t-bring-me-down-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Don't Bring Me Down - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Evil Woman', 'evil-woman-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Evil Woman - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Telephone Line', 'telephone-line-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Telephone Line - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sweet Talkin'' Woman', 'sweet-talkin-woman-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sweet Talkin' Woman - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Showdown', 'showdown-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1973,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Showdown - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Roll Over Beethoven', 'roll-over-beethoven-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1973,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Roll Over Beethoven - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Xanadu', 'xanadu-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Xanadu - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('All Over the World', 'all-over-the-world-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
All Over the World - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Logical Song', 'the-logical-song-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Intermediate', 'Progressive Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
The Logical Song - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Goodbye Stranger', 'goodbye-stranger-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Intermediate', 'Progressive Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Goodbye Stranger - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Take the Long Way Home', 'take-the-long-way-home-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Intermediate', 'Progressive Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Take the Long Way Home - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Breakfast in America', 'breakfast-in-america-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Intermediate', 'Progressive Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Breakfast in America - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Give a Little Bit', 'give-a-little-bit-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Beginner', 'Progressive Rock', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Give a Little Bit - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dreamer', 'dreamer-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Intermediate', 'Progressive Rock', 'G', 1974,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dreamer - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Crime of the Century', 'crime-of-the-century-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Intermediate', 'Progressive Rock', 'G', 1974,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Crime of the Century - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bloody Well Right', 'bloody-well-right-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Intermediate', 'Progressive Rock', 'G', 1974,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bloody Well Right - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Africa', 'africa-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Intermediate', 'Rock', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Africa - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hold the Line', 'hold-the-line-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Intermediate', 'Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hold the Line - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rosanna', 'rosanna-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Advanced', 'Rock', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rosanna - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I''ll Be Over You', 'i-ll-be-over-you-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Intermediate', 'Rock', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I'll Be Over You - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pamela', 'pamela-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Intermediate', 'Rock', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pamela - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Georgy Porgy', 'georgy-porgy-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Intermediate', 'Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Georgy Porgy - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('99', '99-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Intermediate', 'Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
99 - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Without Your Love', 'without-your-love-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Intermediate', 'Rock', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Without Your Love - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Want to Know What Love Is', 'i-want-to-know-what-love-is-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Beginner', 'Rock', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Want to Know What Love Is - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Cold as Ice', 'cold-as-ice-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Intermediate', 'Rock', 'Am', 1977,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Cold as Ice - Foreigner

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Feels Like the First Time', 'feels-like-the-first-time-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Intermediate', 'Rock', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Feels Like the First Time - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Juke Box Hero', 'juke-box-hero-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Intermediate', 'Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Juke Box Hero - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Waiting for a Girl Like You', 'waiting-for-a-girl-like-you-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Intermediate', 'Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Waiting for a Girl Like You - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hot Blooded', 'hot-blooded-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Intermediate', 'Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hot Blooded - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Double Vision', 'double-vision-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Intermediate', 'Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Double Vision - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Urgent', 'urgent-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Advanced', 'Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Urgent - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Head Games', 'head-games-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Advanced', 'Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Head Games - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Piece of My Heart', 'piece-of-my-heart-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Intermediate', 'Blues Rock', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Piece of My Heart - Janis Joplin

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Me and Bobby McGee', 'me-and-bobby-mcgee-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Beginner', 'Blues Rock', 'G', 1971,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Me and Bobby McGee - Janis Joplin

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Cry Baby', 'cry-baby-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Intermediate', 'Blues Rock', 'G', 1971,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Cry Baby - Janis Joplin

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Summertime', 'summertime-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Intermediate', 'Blues', 'Am', 1969,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Summertime - Janis Joplin

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Down on Me', 'down-on-me-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Intermediate', 'Blues Rock', 'G', 1967,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Down on Me - Janis Joplin

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ball and Chain', 'ball-and-chain-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Advanced', 'Blues', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ball and Chain - Janis Joplin

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mercedes Benz', 'mercedes-benz-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Beginner', 'Blues', 'G', 1971,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mercedes Benz - Janis Joplin

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Try', 'try-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Intermediate', 'Blues Rock', 'G', 1969,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Try - Janis Joplin

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Truckin''', 'truckin-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Intermediate', 'Psychedelic', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Truckin' - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sugar Magnolia', 'sugar-magnolia-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Intermediate', 'Psychedelic', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sugar Magnolia - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ripple', 'ripple-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Beginner', 'Folk Rock', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ripple - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Friend of the Devil', 'friend-of-the-devil-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Intermediate', 'Folk Rock', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Friend of the Devil - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Touch of Grey', 'touch-of-grey-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Intermediate', 'Rock', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Touch of Grey - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Uncle John''s Band', 'uncle-john-s-band-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Intermediate', 'Folk Rock', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Uncle John's Band - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Casey Jones', 'casey-jones-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Intermediate', 'Rock', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Casey Jones - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Box of Rain', 'box-of-rain-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Intermediate', 'Folk Rock', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Box of Rain - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('September', 'september-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'Funk', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
September - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Boogie Wonderland', 'boogie-wonderland-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'Funk', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Boogie Wonderland - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Let''s Groove', 'let-s-groove-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'Funk', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Let's Groove - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Shining Star', 'shining-star-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'Funk', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Shining Star - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('After the Love Has Gone', 'after-the-love-has-gone-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'R&B', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
After the Love Has Gone - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Reasons', 'reasons-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'R&B', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Reasons - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fantasy', 'fantasy-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'Funk', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fantasy - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sing a Song', 'sing-a-song-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'Funk', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sing a Song - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Got You', 'i-got-you-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Intermediate', 'Funk', 'G', 1965,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Got You - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Papa''s Got a Brand New Bag', 'papa-s-got-a-brand-new-bag-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Intermediate', 'Funk', 'G', 1965,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Papa's Got a Brand New Bag - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('It''s a Man''s World', 'it-s-a-man-s-world-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Intermediate', 'Soul', 'G', 1966,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
It's a Man's World - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Get Up Offa That Thing', 'get-up-offa-that-thing-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Intermediate', 'Funk', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Get Up Offa That Thing - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sex Machine', 'sex-machine-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Advanced', 'Funk', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sex Machine - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Super Bad', 'super-bad-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Advanced', 'Funk', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Super Bad - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Soul Power', 'soul-power-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Advanced', 'Funk', 'G', 1971,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Soul Power - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Payback', 'the-payback-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Advanced', 'Funk', 'G', 1973,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
The Payback - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Georgia on My Mind', 'georgia-on-my-mind-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Intermediate', 'Soul', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Georgia on My Mind - Ray Charles

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hit the Road Jack', 'hit-the-road-jack-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Beginner', 'R&B', 'Am', 1961,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Hit the Road Jack - Ray Charles

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('What''d I Say', 'what-d-i-say-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Intermediate', 'R&B', 'G', 1959,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
What'd I Say - Ray Charles

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Can''t Stop Loving You', 'i-can-t-stop-loving-you-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Beginner', 'Soul', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Can't Stop Loving You - Ray Charles

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Unchain My Heart', 'unchain-my-heart-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Intermediate', 'Soul', 'G', 1961,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Unchain My Heart - Ray Charles

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Don''t Know Me', 'you-don-t-know-me-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Intermediate', 'Soul', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Don't Know Me - Ray Charles

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hallelujah I Love Her So', 'hallelujah-i-love-her-so-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Intermediate', 'R&B', 'G', 1956,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hallelujah I Love Her So - Ray Charles

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mess Around', 'mess-around-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Intermediate', 'R&B', 'G', 1953,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mess Around - Ray Charles

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Like a Virgin', 'like-a-virgin-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Beginner', 'Pop', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Like a Virgin - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Material Girl', 'material-girl-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Material Girl - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Like a Prayer', 'like-a-prayer-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Like a Prayer - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Vogue', 'vogue-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'Am', 1990,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Vogue - Madonna

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Into the Groove', 'into-the-groove-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Into the Groove - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Papa Don''t Preach', 'papa-don-t-preach-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Papa Don't Preach - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Express Yourself', 'express-yourself-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Express Yourself - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Crazy for You', 'crazy-for-you-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Beginner', 'Pop', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Crazy for You - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('True Blue', 'true-blue-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
True Blue - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ray of Light', 'ray-of-light-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ray of Light - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dancing Queen', 'dancing-queen-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dancing Queen - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mamma Mia', 'mamma-mia-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Beginner', 'Pop', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mamma Mia - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Waterloo', 'waterloo-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1974,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Waterloo - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Take a Chance on Me', 'take-a-chance-on-me-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Take a Chance on Me - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Winner Takes It All', 'the-winner-takes-it-all-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
The Winner Takes It All - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('SOS', 'sos-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
SOS - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fernando', 'fernando-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fernando - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chiquitita', 'chiquitita-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chiquitita - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Super Trouper', 'super-trouper-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Super Trouper - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Knowing Me Knowing You', 'knowing-me-knowing-you-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Knowing Me Knowing You - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Stayin'' Alive', 'stayin-alive-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Disco', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Stayin' Alive - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('How Deep Is Your Love', 'how-deep-is-your-love-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Disco', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
How Deep Is Your Love - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Night Fever', 'night-fever-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Disco', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Night Fever - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('More Than a Woman', 'more-than-a-woman-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Disco', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
More Than a Woman - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jive Talkin''', 'jive-talkin-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Disco', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jive Talkin' - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Should Be Dancing', 'you-should-be-dancing-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Disco', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Should Be Dancing - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tragedy', 'tragedy-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Disco', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tragedy - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('To Love Somebody', 'to-love-somebody-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Pop', 'G', 1967,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
To Love Somebody - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Will Always Love You', 'i-will-always-love-you-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Advanced', 'Pop', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Will Always Love You - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Greatest Love of All', 'greatest-love-of-all-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Intermediate', 'Pop', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Greatest Love of All - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Wanna Dance with Somebody', 'i-wanna-dance-with-somebody-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Intermediate', 'Pop', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Wanna Dance with Somebody - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('How Will I Know', 'how-will-i-know-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Intermediate', 'Pop', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
How Will I Know - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saving All My Love for You', 'saving-all-my-love-for-you-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Intermediate', 'R&B', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saving All My Love for You - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('So Emotional', 'so-emotional-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Intermediate', 'Pop', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
So Emotional - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Where Do Broken Hearts Go', 'where-do-broken-hearts-go-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Intermediate', 'Pop', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Where Do Broken Hearts Go - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Didn''t We Almost Have It All', 'didn-t-we-almost-have-it-all-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Intermediate', 'Pop', 'G', 1987,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Didn't We Almost Have It All - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('We Belong Together', 'we-belong-together-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
We Belong Together - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hero', 'hero-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hero - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Without You', 'without-you-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Without You - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fantasy', 'fantasy-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fantasy - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Always Be My Baby', 'always-be-my-baby-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Always Be My Baby - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('One Sweet Day', 'one-sweet-day-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
One Sweet Day - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dreamlover', 'dreamlover-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dreamlover - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Emotions', 'emotions-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 1991,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Emotions - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Love Story', 'love-story-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Beginner', 'Pop', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Love Story - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Shake It Off', 'shake-it-off-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Intermediate', 'Pop', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Shake It Off - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Blank Space', 'blank-space-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Intermediate', 'Pop', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Blank Space - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Belong with Me', 'you-belong-with-me-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Beginner', 'Pop', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Belong with Me - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bad Blood', 'bad-blood-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Intermediate', 'Pop', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bad Blood - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('We Are Never Ever Getting Back Together', 'we-are-never-ever-getting-back-together-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Intermediate', 'Pop', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
We Are Never Ever Getting Back Together - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Knew You Were Trouble', 'i-knew-you-were-trouble-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Intermediate', 'Pop', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Knew You Were Trouble - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Teardrops on My Guitar', 'teardrops-on-my-guitar-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Beginner', 'Country Pop', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Teardrops on My Guitar - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Our Song', 'our-song-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Beginner', 'Country Pop', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Our Song - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fifteen', 'fifteen-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Beginner', 'Country Pop', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fifteen - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Want It That Way', 'i-want-it-that-way-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Want It That Way - Backstreet Boys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Everybody', 'everybody-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'Am', 1997,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Everybody - Backstreet Boys

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('As Long as You Love Me', 'as-long-as-you-love-me-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
As Long as You Love Me - Backstreet Boys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Quit Playing Games with My Heart', 'quit-playing-games-with-my-heart-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Quit Playing Games with My Heart - Backstreet Boys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('All I Have to Give', 'all-i-have-to-give-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
All I Have to Give - Backstreet Boys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Shape of My Heart', 'shape-of-my-heart-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Shape of My Heart - Backstreet Boys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Larger Than Life', 'larger-than-life-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Larger Than Life - Backstreet Boys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Show Me the Meaning of Being Lonely', 'show-me-the-meaning-of-being-lonely-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Show Me the Meaning of Being Lonely - Backstreet Boys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('...Baby One More Time', 'baby-one-more-time-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Beginner', 'Pop', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
...Baby One More Time - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Oops I Did It Again', 'oops-i-did-it-again-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Intermediate', 'Pop', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Oops I Did It Again - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Toxic', 'toxic-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Intermediate', 'Pop', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Toxic - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Circus', 'circus-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Intermediate', 'Pop', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Circus - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Womanizer', 'womanizer-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Intermediate', 'Pop', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Womanizer - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Stronger', 'stronger-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Intermediate', 'Pop', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Stronger - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lucky', 'lucky-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Intermediate', 'Pop', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lucky - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Piece of Me', 'piece-of-me-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Intermediate', 'Pop', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Piece of Me - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hungry Like the Wolf', 'hungry-like-the-wolf-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hungry Like the Wolf - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rio', 'rio-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rio - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Save a Prayer', 'save-a-prayer-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Save a Prayer - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ordinary World', 'ordinary-world-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ordinary World - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Reflex', 'the-reflex-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
The Reflex - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Come Undone', 'come-undone-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Come Undone - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Girls on Film', 'girls-on-film-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Girls on Film - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Wild Boys', 'wild-boys-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Wild Boys - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Everybody Wants to Rule the World', 'everybody-wants-to-rule-the-world-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Everybody Wants to Rule the World - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Shout', 'shout-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Shout - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mad World', 'mad-world-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mad World - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Head Over Heels', 'head-over-heels-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Head Over Heels - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Change', 'change-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Change - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Working Hour', 'the-working-hour-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
The Working Hour - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Advice for the Young at Heart', 'advice-for-the-young-at-heart-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Advice for the Young at Heart - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sowing the Seeds of Love', 'sowing-the-seeds-of-love-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sowing the Seeds of Love - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rehab', 'rehab-amy-winehouse', (SELECT id FROM artist WHERE slug = 'amy-winehouse'),
  'Intermediate', 'Soul', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rehab - Amy Winehouse

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Back to Black', 'back-to-black-amy-winehouse', (SELECT id FROM artist WHERE slug = 'amy-winehouse'),
  'Intermediate', 'Soul', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Back to Black - Amy Winehouse

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Valerie', 'valerie-amy-winehouse', (SELECT id FROM artist WHERE slug = 'amy-winehouse'),
  'Intermediate', 'Soul', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Valerie - Amy Winehouse

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Know I''m No Good', 'you-know-i-m-no-good-amy-winehouse', (SELECT id FROM artist WHERE slug = 'amy-winehouse'),
  'Intermediate', 'Soul', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Know I'm No Good - Amy Winehouse

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tears Dry on Their Own', 'tears-dry-on-their-own-amy-winehouse', (SELECT id FROM artist WHERE slug = 'amy-winehouse'),
  'Intermediate', 'Soul', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tears Dry on Their Own - Amy Winehouse

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Love Is a Losing Game', 'love-is-a-losing-game-amy-winehouse', (SELECT id FROM artist WHERE slug = 'amy-winehouse'),
  'Intermediate', 'Soul', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Love Is a Losing Game - Amy Winehouse

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Wake Up Alone', 'wake-up-alone-amy-winehouse', (SELECT id FROM artist WHERE slug = 'amy-winehouse'),
  'Intermediate', 'Soul', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Wake Up Alone - Amy Winehouse

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fallin''', 'fallin-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fallin' - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('If I Ain''t Got You', 'if-i-ain-t-got-you-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
If I Ain't Got You - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('No One', 'no-one-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
No One - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Empire State of Mind', 'empire-state-of-mind-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Empire State of Mind - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Girl on Fire', 'girl-on-fire-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Girl on Fire - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Don''t Know My Name', 'you-don-t-know-my-name-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Don't Know My Name - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Karma', 'karma-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Karma - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Diary', 'diary-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Diary - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Don''t Know Why', 'don-t-know-why-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Beginner', 'Jazz Pop', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Don't Know Why - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Come Away with Me', 'come-away-with-me-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Beginner', 'Jazz Pop', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Come Away with Me - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sunrise', 'sunrise-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Beginner', 'Jazz Pop', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sunrise - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Those Sweet Words', 'those-sweet-words-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Beginner', 'Jazz Pop', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Those Sweet Words - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Turn Me On', 'turn-me-on-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Intermediate', 'Jazz Pop', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Turn Me On - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I''ve Got to See You Again', 'i-ve-got-to-see-you-again-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Intermediate', 'Jazz Pop', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I've Got to See You Again - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Shoot the Moon', 'shoot-the-moon-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Beginner', 'Jazz Pop', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Shoot the Moon - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('What Am I to You', 'what-am-i-to-you-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Intermediate', 'Jazz Pop', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
What Am I to You - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Just Give Me a Reason', 'just-give-me-a-reason-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Just Give Me a Reason - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('So What', 'so-what-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop Rock', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
So What - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Get the Party Started', 'get-the-party-started-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Get the Party Started - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('U + Ur Hand', 'u-ur-hand-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop Rock', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
U + Ur Hand - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Who Knew', 'who-knew-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop Rock', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Who Knew - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Raise Your Glass', 'raise-your-glass-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Raise Your Glass - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Try', 'try-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Try - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fuckin'' Perfect', 'fuckin-perfect-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fuckin' Perfect - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Complicated', 'complicated-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Beginner', 'Pop Punk', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Complicated - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sk8er Boi', 'sk8er-boi-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Intermediate', 'Pop Punk', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sk8er Boi - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I''m with You', 'i-m-with-you-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Intermediate', 'Pop Rock', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I'm with You - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('My Happy Ending', 'my-happy-ending-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Intermediate', 'Pop Punk', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
My Happy Ending - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Girlfriend', 'girlfriend-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Intermediate', 'Pop Punk', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Girlfriend - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('When You''re Gone', 'when-you-re-gone-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Intermediate', 'Pop Rock', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
When You're Gone - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hello Kitty', 'hello-kitty-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Intermediate', 'Pop', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hello Kitty - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('What the Hell', 'what-the-hell-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Intermediate', 'Pop Punk', 'G', 2011,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
What the Hell - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Since U Been Gone', 'since-u-been-gone-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop Rock', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Since U Been Gone - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Because of You', 'because-of-you-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Because of You - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Stronger', 'stronger-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop', 'G', 2011,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Stronger - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('My Life Would Suck Without You', 'my-life-would-suck-without-you-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop Rock', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
My Life Would Suck Without You - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Behind These Hazel Eyes', 'behind-these-hazel-eyes-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Behind These Hazel Eyes - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Miss Independent', 'miss-independent-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Miss Independent - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Breakaway', 'breakaway-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Breakaway - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Already Gone', 'already-gone-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Already Gone - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Where Is My Mind', 'where-is-my-mind-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Where Is My Mind - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Here Comes Your Man', 'here-comes-your-man-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Here Comes Your Man - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Debaser', 'debaser-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Debaser - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Monkey Gone to Heaven', 'monkey-gone-to-heaven-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Monkey Gone to Heaven - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hey', 'hey-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hey - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gouge Away', 'gouge-away-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gouge Away - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Wave of Mutilation', 'wave-of-mutilation-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Wave of Mutilation - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bone Machine', 'bone-machine-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bone Machine - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jaba Samjhanchhu', 'jaba-samjhanchhu-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jaba Samjhanchhu - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sajhbhayeko Sajha', 'sajhbhayeko-sajha-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sajhbhayeko Sajha - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timilai', 'timilai-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timilai - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sansarma', 'sansarma-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sansarma - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bhitra', 'bhitra-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bhitra - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kasaile', 'kasaile-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kasaile - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Meri Maaya', 'meri-maaya-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Meri Maaya - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dherai Dhanyabaad', 'dherai-dhanyabaad-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dherai Dhanyabaad - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nachahechu', 'nachahechu-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Nachahechu - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mutuma', 'mutuma-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mutuma - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mann', 'mann-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mann - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pirati', 'pirati-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pirati - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timilai Herda', 'timilai-herda-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timilai Herda - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bhanai', 'bhanai-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bhanai - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sapana', 'sapana-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sapana - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sadhai', 'sadhai-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sadhai - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rato Gham', 'rato-gham-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rato Gham - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lahurey', 'lahurey-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lahurey - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saili', 'saili-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saili - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maili', 'maili-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maili - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dherai Maya', 'dherai-maya-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dherai Maya - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Thiti', 'thiti-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Thiti - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bihani', 'bihani-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bihani - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Parbati', 'parbati-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Parbati - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ramailo', 'ramailo-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk Pop', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ramailo - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mero Desh', 'mero-desh-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mero Desh - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gaun', 'gaun-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gaun - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aama', 'aama-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aama - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pardeshi', 'pardeshi-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk Pop', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pardeshi - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bansuri', 'bansuri-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bansuri - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nepali', 'nepali-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Nepali - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ful', 'ful-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ful - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kaha Timi', 'kaha-timi-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kaha Timi - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maya Bascha', 'maya-bascha-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maya Bascha - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timro Lagi', 'timro-lagi-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timro Lagi - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jindagi', 'jindagi-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jindagi - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sapana Jhai', 'sapana-jhai-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sapana Jhai - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kina', 'kina-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kina - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Muskura', 'muskura-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Muskura - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saathi', 'saathi-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saathi - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Phool Ko Thunga', 'phool-ko-thunga-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Phool Ko Thunga - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kantipur', 'kantipur-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kantipur - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ritu', 'ritu-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ritu - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Udasi', 'udasi-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Udasi - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Priye', 'priye-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Priye - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mayako', 'mayako-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mayako - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nadi', 'nadi-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Nadi - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Badal', 'badal-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Badal - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Laija Timi', 'laija-timi-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Laija Timi - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mero Jindagi', 'mero-jindagi-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mero Jindagi - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timilai', 'timilai-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timilai - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja', 'aaja-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sapanama', 'sapanama-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sapanama - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Himalaya', 'himalaya-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Himalaya - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Parbat', 'parbat-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Parbat - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Feri', 'feri-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Feri - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Samjhana', 'samjhana-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Samjhana - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chadai', 'chadai-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chadai - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mero Desh', 'mero-desh-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mero Desh - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sagar Jasto', 'sagar-jasto-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sagar Jasto - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Manchey', 'manchey-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Manchey - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jivan', 'jivan-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jivan - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aakash', 'aakash-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aakash - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dhahan', 'dhahan-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dhahan - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bishwas', 'bishwas-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bishwas - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rato', 'rato-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rato - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aama Ko Maya', 'aama-ko-maya-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aama Ko Maya - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gaun Ghar', 'gaun-ghar-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gaun Ghar - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chino', 'chino-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chino - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Desh', 'desh-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Desh - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Samaya', 'samaya-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Samaya - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bato', 'bato-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bato - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maya', 'maya-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maya - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pardesh', 'pardesh-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pardesh - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timi', 'timi-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timi - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bato', 'bato-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bato - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ratri', 'ratri-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ratri - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pani', 'pani-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pani - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ghar', 'ghar-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ghar - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sagar', 'sagar-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sagar - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hawa', 'hawa-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hawa - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mann', 'mann-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mann - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aago', 'aago-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aago - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Murkha', 'murkha-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Murkha - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saman', 'saman-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saman - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kalam', 'kalam-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kalam - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aawaj', 'aawaj-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aawaj - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bhid', 'bhid-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bhid - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sachai', 'sachai-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sachai - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bichar', 'bichar-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bichar - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chhori', 'chhori-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chhori - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Naches', 'naches-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Naches - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Damphu', 'damphu-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Damphu - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maya', 'maya-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maya - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rato', 'rato-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rato - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lahurey', 'lahurey-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lahurey - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Selomaya', 'selomaya-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Selomaya - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Desh', 'desh-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Desh - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aija Mere', 'aija-mere-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aija Mere - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Suna', 'suna-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Suna - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Himal', 'himal-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Himal - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Koshi', 'koshi-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Koshi - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gaunle', 'gaunle-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gaunle - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pahad', 'pahad-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pahad - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mandir', 'mandir-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mandir - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Puja', 'puja-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Puja - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mero Sansar', 'mero-sansar-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mero Sansar - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timro Lagi', 'timro-lagi-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timro Lagi - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bishwas', 'bishwas-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bishwas - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sapana', 'sapana-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sapana - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Naya', 'naya-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Naya - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aama', 'aama-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aama - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pirati', 'pirati-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pirati - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maya', 'maya-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maya - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saathi', 'saathi-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saathi - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bihani', 'bihani-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bihani - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Samjhana', 'samjhana-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Samjhana - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chadai', 'chadai-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chadai - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mann', 'mann-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mann - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sansar', 'sansar-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sansar - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rato', 'rato-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rato - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sagar', 'sagar-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sagar - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maaya', 'maaya-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maaya - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja', 'aaja-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timilai', 'timilai-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timilai - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jindagi', 'jindagi-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jindagi - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Muskura', 'muskura-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Muskura - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sapana', 'sapana-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sapana - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saathi', 'saathi-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saathi - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Naya', 'naya-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Naya - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chino', 'chino-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chino - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aama', 'aama-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aama - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Desh', 'desh-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Desh - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gaun', 'gaun-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gaun - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Parbat', 'parbat-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Parbat - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nadi', 'nadi-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Nadi - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maya', 'maya-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maya - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bato', 'bato-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bato - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maya Bascha', 'maya-bascha-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maya Bascha - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timro Lagi', 'timro-lagi-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timro Lagi - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jindagi', 'jindagi-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jindagi - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saathi', 'saathi-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saathi - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sansar', 'sansar-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sansar - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Samjhana', 'samjhana-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Samjhana - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ghar', 'ghar-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ghar - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bato', 'bato-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bato - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Resham', 'resham-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Resham - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Phool', 'phool-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Phool - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maya', 'maya-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maya - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sagarmatha', 'sagarmatha-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sagarmatha - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Himal', 'himal-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Himal - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pahad', 'pahad-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pahad - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ghar', 'ghar-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ghar - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Desh', 'desh-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Desh - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mero Gaun', 'mero-gaun-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mero Gaun - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pahad Ko', 'pahad-ko-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pahad Ko - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chino', 'chino-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chino - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aama', 'aama-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aama - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Phool', 'phool-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Phool - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nadi', 'nadi-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Nadi - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bansuri', 'bansuri-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bansuri - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maya', 'maya-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maya - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lag Ja Gale', 'lag-ja-gale-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Ghazal', 'G', 1964,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lag Ja Gale - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja Re Pardesi', 'aaja-re-pardesi-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Classical', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja Re Pardesi - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pyar Kiya To Darna Kya', 'pyar-kiya-to-darna-kya-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Classical', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pyar Kiya To Darna Kya - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaj Phir Jeene Ki Tamanna Hai', 'aaj-phir-jeene-ki-tamanna-hai-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Classical', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaj Phir Jeene Ki Tamanna Hai - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rangeela Re', 'rangeela-re-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Classical', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rangeela Re - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('O Sathi Re', 'o-sathi-re-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Classical', 'G', 1963,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
O Sathi Re - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bahon Mein Chale Aao', 'bahon-mein-chale-aao-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Romantic', 'G', 1966,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bahon Mein Chale Aao - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mile Sur Mera Tumhara', 'mile-sur-mera-tumhara-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Beginner', 'Patriotic', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mile Sur Mera Tumhara - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil To Pagal Hai', 'dil-to-pagal-hai-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Romantic', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil To Pagal Hai - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ek Do Teen', 'ek-do-teen-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Classical', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ek Do Teen - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Khwabon Mein', 'mere-khwabon-mein-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Romantic', 'G', 1969,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Khwabon Mein - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jab Pyar Kisise Hota Hai', 'jab-pyar-kisise-hota-hai-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Romantic', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jab Pyar Kisise Hota Hai - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Roop Tera Mastana', 'roop-tera-mastana-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Romantic', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Roop Tera Mastana - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Sapno Ki Rani', 'mere-sapno-ki-rani-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Romantic', 'G', 1969,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Sapno Ki Rani - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Dosti', 'yeh-dosti-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Friendship', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Dosti - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Zindagi Ek Safar', 'zindagi-ek-safar-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Philosophical', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Zindagi Ek Safar - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hum Bewafa', 'hum-bewafa-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Romantic', 'G', 1973,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hum Bewafa - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('O Mere Dil Ke Chain', 'o-mere-dil-ke-chain-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Romantic', 'G', 1972,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
O Mere Dil Ke Chain - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chingari Koi Bhadke', 'chingari-koi-bhadke-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Romantic', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chingari Koi Bhadke - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Dil Mein', 'mere-dil-mein-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Romantic', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Dil Mein - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Humein Tumse Pyaar Kitna', 'humein-tumse-pyaar-kitna-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Romantic', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Humein Tumse Pyaar Kitna - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Koi Humdum Na Rahe', 'koi-humdum-na-rahe-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Sad', 'G', 1969,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Koi Humdum Na Rahe - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pal Pal Dil Ke Paas', 'pal-pal-dil-ke-paas-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Romantic', 'G', 1973,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pal Pal Dil Ke Paas - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bada Natkhat Hai', 'bada-natkhat-hai-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Playful', 'G', 1969,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bada Natkhat Hai - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chaudhvin Ka Chand', 'chaudhvin-ka-chand-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Romantic', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chaudhvin Ka Chand - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Reshmi Zulfen', 'yeh-reshmi-zulfen-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Romantic', 'G', 1967,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Reshmi Zulfen - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Ke Jharoke Mein', 'dil-ke-jharoke-mein-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Romantic', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Ke Jharoke Mein - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kya Hua Tera Wada', 'kya-hua-tera-wada-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Sad', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kya Hua Tera Wada - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('O Haseena Zulfon Wali', 'o-haseena-zulfon-wali-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Romantic', 'G', 1966,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
O Haseena Zulfon Wali - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Babu Samjho Ishaare', 'babu-samjho-ishaare-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Playful', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Babu Samjho Ishaare - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tum Mujhe Yun Bhula Na Paoge', 'tum-mujhe-yun-bhula-na-paoge-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Sad', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tum Mujhe Yun Bhula Na Paoge - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Mehboob Tujhe', 'mere-mehboob-tujhe-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Romantic', 'G', 1963,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Mehboob Tujhe - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Baharon Phool Barsao', 'baharon-phool-barsao-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Celebratory', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Baharon Phool Barsao - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaj Mausam Bada Beimaan Hai', 'aaj-mausam-bada-beimaan-hai-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Romantic', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaj Mausam Bada Beimaan Hai - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Likhne Wale Ne', 'likhne-wale-ne-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Philosophical', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Likhne Wale Ne - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Suraj Ki Garmi', 'suraj-ki-garmi-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Romantic', 'G', 1967,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Suraj Ki Garmi - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Jalta Hai To Jalne De', 'dil-jalta-hai-to-jalne-de-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Sad', 'G', 1955,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Jalta Hai To Jalne De - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kisi Ki Muskurahaton Se', 'kisi-ki-muskurahaton-se-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Philosophical', 'G', 1969,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kisi Ki Muskurahaton Se - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Main Pal Do Pal Ka Shayar Hoon', 'main-pal-do-pal-ka-shayar-hoon-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Philosophical', 'G', 1971,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Main Pal Do Pal Ka Shayar Hoon - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chandan Sa Badan', 'chandan-sa-badan-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Romantic', 'G', 1972,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chandan Sa Badan - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sajan Re Jhooth Mat Bolo', 'sajan-re-jhooth-mat-bolo-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Romantic', 'G', 1969,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sajan Re Jhooth Mat Bolo - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dost Dost Na Raha', 'dost-dost-na-raha-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Sad', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dost Dost Na Raha - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mujhe Teri Mohabbat Ka', 'mujhe-teri-mohabbat-ka-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Romantic', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mujhe Teri Mohabbat Ka - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kahin Door Jab Din Dhal Jaaye', 'kahin-door-jab-din-dhal-jaaye-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Philosophical', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kahin Door Jab Din Dhal Jaaye - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ek Pyar Ka Naghma Hai', 'ek-pyar-ka-naghma-hai-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Romantic', 'G', 1971,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ek Pyar Ka Naghma Hai - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Main Tera Pyar Saagar Hoon', 'main-tera-pyar-saagar-hoon-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Romantic', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Main Tera Pyar Saagar Hoon - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jaiye Aap Kahan Jayenge', 'jaiye-aap-kahan-jayenge-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Romantic', 'G', 1966,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jaiye Aap Kahan Jayenge - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Piya Tu Ab To Aaja', 'piya-tu-ab-to-aaja-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Romantic', 'G', 1971,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Piya Tu Ab To Aaja - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dum Maro Dum', 'dum-maro-dum-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Psychedelic', 'G', 1971,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dum Maro Dum - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('In Aankhon Ki Masti', 'in-aankhon-ki-masti-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Romantic', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
In Aankhon Ki Masti - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Morni Baga Ma', 'morni-baga-ma-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Folk', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Morni Baga Ma - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chura Liya Hai Tumne', 'chura-liya-hai-tumne-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Romantic', 'G', 1973,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chura Liya Hai Tumne - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Mera Dil', 'yeh-mera-dil-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Playful', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Mera Dil - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Samne Wali Khidki Mein', 'mere-samne-wali-khidki-mein-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Romantic', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Samne Wali Khidki Mein - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja Piya Hazir Hoon', 'aaja-piya-hazir-hoon-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Classical', 'G', 1972,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja Piya Hazir Hoon - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jab Se Hum Tere', 'jab-se-hum-tere-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Romantic', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jab Se Hum Tere - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chhookar Mere Mann Ko', 'chhookar-mere-mann-ko-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Romantic', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chhookar Mere Mann Ko - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Jawani Hadh Kar De', 'yeh-jawani-hadh-kar-de-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Dance', 'G', 1972,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Jawani Hadh Kar De - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('O Haseena Zulfon Wali', 'o-haseena-zulfon-wali-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Romantic', 'G', 1966,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
O Haseena Zulfon Wali - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Laga Chunari Mein Daag', 'laga-chunari-mein-daag-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Classical', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Laga Chunari Mein Daag - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ek Chatur Naar', 'ek-chatur-naar-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Classical', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ek Chatur Naar - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pyar Hua Iqrar Hua', 'pyar-hua-iqrar-hua-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Romantic', 'G', 1956,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pyar Hua Iqrar Hua - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kasto Maza Hai', 'kasto-maza-hai-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Romantic', 'G', 1969,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kasto Maza Hai - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Duniya Yeh Mehfil', 'yeh-duniya-yeh-mehfil-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Philosophical', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Duniya Yeh Mehfil - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tum Gagan Ke Chandrama', 'tum-gagan-ke-chandrama-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Romantic', 'G', 1961,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tum Gagan Ke Chandrama - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Zindagi Kaisi Hai Paheli', 'zindagi-kaisi-hai-paheli-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Philosophical', 'G', 1972,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Zindagi Kaisi Hai Paheli - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sur Na Saje Kya', 'sur-na-saje-kya-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Classical', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sur Na Saje Kya - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ae Malik Tere Bande Hum', 'ae-malik-tere-bande-hum-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Devotional', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ae Malik Tere Bande Hum - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Waqt Ne Kiya', 'waqt-ne-kiya-geeta-dutt', (SELECT id FROM artist WHERE slug = 'geeta-dutt'),
  'Intermediate', 'Sad', 'G', 1959,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Waqt Ne Kiya - Geeta Dutt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mausam Hai Aashiqana', 'mausam-hai-aashiqana-geeta-dutt', (SELECT id FROM artist WHERE slug = 'geeta-dutt'),
  'Intermediate', 'Romantic', 'G', 1958,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mausam Hai Aashiqana - Geeta Dutt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ja Ja Ja Bewafa', 'ja-ja-ja-bewafa-geeta-dutt', (SELECT id FROM artist WHERE slug = 'geeta-dutt'),
  'Intermediate', 'Sad', 'G', 1965,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ja Ja Ja Bewafa - Geeta Dutt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Thandi Thandi Hawa', 'thandi-thandi-hawa-geeta-dutt', (SELECT id FROM artist WHERE slug = 'geeta-dutt'),
  'Intermediate', 'Romantic', 'G', 1961,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Thandi Thandi Hawa - Geeta Dutt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hamari Yaad Aayegi', 'hamari-yaad-aayegi-geeta-dutt', (SELECT id FROM artist WHERE slug = 'geeta-dutt'),
  'Intermediate', 'Sad', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hamari Yaad Aayegi - Geeta Dutt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaj Sajan Mohe', 'aaj-sajan-mohe-geeta-dutt', (SELECT id FROM artist WHERE slug = 'geeta-dutt'),
  'Intermediate', 'Romantic', 'G', 1958,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaj Sajan Mohe - Geeta Dutt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Babuji Dheere Chalna', 'babuji-dheere-chalna-geeta-dutt', (SELECT id FROM artist WHERE slug = 'geeta-dutt'),
  'Intermediate', 'Philosophical', 'G', 1954,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Babuji Dheere Chalna - Geeta Dutt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Jeevan Mein', 'mere-jeevan-mein-geeta-dutt', (SELECT id FROM artist WHERE slug = 'geeta-dutt'),
  'Intermediate', 'Romantic', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Jeevan Mein - Geeta Dutt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tum Pukar Lo', 'tum-pukar-lo-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Romantic', 'G', 1958,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tum Pukar Lo - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Raat Bheegi Bheegi', 'yeh-raat-bheegi-bheegi-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Romantic', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Raat Bheegi Bheegi - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Na Jaane Kyun', 'na-jaane-kyun-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Romantic', 'G', 1959,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Na Jaane Kyun - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mujhe Dard Ko', 'mujhe-dard-ko-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Sad', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mujhe Dard Ko - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Beete Hue Din', 'beete-hue-din-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Philosophical', 'G', 1961,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Beete Hue Din - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jalte Hain Jiske Liye', 'jalte-hain-jiske-liye-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Sad', 'G', 1957,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jalte Hain Jiske Liye - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Insan Ki Aulad Hai', 'insan-ki-aulad-hai-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Philosophical', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Insan Ki Aulad Hai - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chalo Dildar Chalo', 'chalo-dildar-chalo-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Romantic', 'G', 1957,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chalo Dildar Chalo - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tumhi Ne Mujhko', 'tumhi-ne-mujhko-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Romantic', 'G', 1959,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tumhi Ne Mujhko - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jalte Hain Jiske Liye', 'jalte-hain-jiske-liye-talat-mahmood', (SELECT id FROM artist WHERE slug = 'talat-mahmood'),
  'Intermediate', 'Sad', 'G', 1957,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jalte Hain Jiske Liye - Talat Mahmood

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Phir Wohi Sham', 'phir-wohi-sham-talat-mahmood', (SELECT id FROM artist WHERE slug = 'talat-mahmood'),
  'Intermediate', 'Romantic', 'G', 1965,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Phir Wohi Sham - Talat Mahmood

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ae Dil Mujhe Aisi Jagah', 'ae-dil-mujhe-aisi-jagah-talat-mahmood', (SELECT id FROM artist WHERE slug = 'talat-mahmood'),
  'Intermediate', 'Romantic', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ae Dil Mujhe Aisi Jagah - Talat Mahmood

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maine Shart Pe Jaan', 'maine-shart-pe-jaan-talat-mahmood', (SELECT id FROM artist WHERE slug = 'talat-mahmood'),
  'Intermediate', 'Romantic', 'G', 1959,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maine Shart Pe Jaan - Talat Mahmood

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pyar Mein Sadqe', 'pyar-mein-sadqe-talat-mahmood', (SELECT id FROM artist WHERE slug = 'talat-mahmood'),
  'Intermediate', 'Romantic', 'G', 1958,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pyar Mein Sadqe - Talat Mahmood

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bachpan Ke Din', 'bachpan-ke-din-talat-mahmood', (SELECT id FROM artist WHERE slug = 'talat-mahmood'),
  'Intermediate', 'Nostalgic', 'G', 1960,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bachpan Ke Din - Talat Mahmood

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sham-E-Gham Ki Kasam', 'sham-e-gham-ki-kasam-talat-mahmood', (SELECT id FROM artist WHERE slug = 'talat-mahmood'),
  'Intermediate', 'Sad', 'G', 1961,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sham-E-Gham Ki Kasam - Talat Mahmood

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hai Duniya Mein', 'hai-duniya-mein-talat-mahmood', (SELECT id FROM artist WHERE slug = 'talat-mahmood'),
  'Intermediate', 'Philosophical', 'G', 1959,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hai Duniya Mein - Talat Mahmood

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jai Ho', 'jai-ho-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Patriotic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jai Ho - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tumhi Dekho Na', 'tumhi-dekho-na-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tumhi Dekho Na - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mitwa', 'mitwa-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Romantic', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mitwa - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maa Tujhhe Salaam', 'maa-tujhhe-salaam-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Patriotic', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maa Tujhhe Salaam - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Se Re', 'dil-se-re-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Romantic', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Se Re - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Satrangi Re', 'satrangi-re-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Romantic', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Satrangi Re - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rang De Basanti', 'rang-de-basanti-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Patriotic', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rang De Basanti - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kabhi Kabhi Aditi', 'kabhi-kabhi-aditi-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kabhi Kabhi Aditi - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chaiyya Chaiyya', 'chaiyya-chaiyya-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Dance', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chaiyya Chaiyya - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Vande Mataram', 'vande-mataram-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Patriotic', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Vande Mataram - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('O Saya', 'o-saya-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Fusion', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
O Saya - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maahi Ve', 'maahi-ve-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Romantic', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maahi Ve - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kal Ho Naa Ho', 'kal-ho-naa-ho-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Sad', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kal Ho Naa Ho - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saathiya', 'saathiya-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Romantic', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saathiya - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Woh Lamhe', 'woh-lamhe-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Sad', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Woh Lamhe - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Ne Yeh Kaha', 'dil-ne-yeh-kaha-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Romantic', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Ne Yeh Kaha - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mohabbatein', 'mohabbatein-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Romantic', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mohabbatein - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Main Agar Saamne', 'main-agar-saamne-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Romantic', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Main Agar Saamne - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jeena Sirf Merre Liye', 'jeena-sirf-merre-liye-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Romantic', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jeena Sirf Merre Liye - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Abhi Mujh Mein Kahin', 'abhi-mujh-mein-kahin-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Sad', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Abhi Mujh Mein Kahin - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tumse Milna', 'tumse-milna-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Romantic', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tumse Milna - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chanda Ki Zindagi', 'chanda-ki-zindagi-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Philosophical', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chanda Ki Zindagi - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sanam Mere Sanam', 'sanam-mere-sanam-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Romantic', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sanam Mere Sanam - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Do Dil', 'do-dil-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Romantic', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Do Dil - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maine Pyar Kiya', 'maine-pyar-kiya-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maine Pyar Kiya - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Deewana Bin Sajna Ke', 'dil-deewana-bin-sajna-ke-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Deewana Bin Sajna Ke - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jaati Hoon Main', 'jaati-hoon-main-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jaati Hoon Main - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ek Ladki Ko Dekha', 'ek-ladki-ko-dekha-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ek Ladki Ko Dekha - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pehli Baar Mile Hain', 'pehli-baar-mile-hain-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pehli Baar Mile Hain - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tujhe Dekha To', 'tujhe-dekha-to-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tujhe Dekha To - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Main Duniya Bhula Doonga', 'main-duniya-bhula-doonga-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Main Duniya Bhula Doonga - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Ka Kya Karein', 'dil-ka-kya-karein-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Sad', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Ka Kya Karein - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sochenge Tumhe Pyar', 'sochenge-tumhe-pyar-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sochenge Tumhe Pyar - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hum Toh Dil Se Haar', 'hum-toh-dil-se-haar-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hum Toh Dil Se Haar - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mera Chand Mujhe Aaya Hai', 'mera-chand-mujhe-aaya-hai-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1991,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mera Chand Mujhe Aaya Hai - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('O Priya Priya', 'o-priya-priya-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
O Priya Priya - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Hai Chhota Sa', 'dil-hai-chhota-sa-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Hai Chhota Sa - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Taal Se Taal Mila', 'taal-se-taal-mila-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Taal Se Taal Mila - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja Piya', 'aaja-piya-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja Piya - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kuchh Kuchh Hota Hai', 'kuchh-kuchh-hota-hai-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kuchh Kuchh Hota Hai - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dilwale Dulhania Le Jayenge', 'dilwale-dulhania-le-jayenge-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dilwale Dulhania Le Jayenge - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Raja Ko Rani Se', 'raja-ko-rani-se-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Raja Ko Rani Se - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pardes', 'pardes-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pardes - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Jawani Hadh Kar De', 'yeh-jawani-hadh-kar-de-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Dance', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Jawani Hadh Kar De - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Mehboob Mere Sanam', 'mere-mehboob-mere-sanam-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Mehboob Mere Sanam - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aankhon Mein Tera Hi Chehra', 'aankhon-mein-tera-hi-chehra-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aankhon Mein Tera Hi Chehra - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tu Mile Dil Khile', 'tu-mile-dil-khile-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tu Mile Dil Khile - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kehti Hai Dil Ki Lagi', 'kehti-hai-dil-ki-lagi-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kehti Hai Dil Ki Lagi - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bairi Piya', 'bairi-piya-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Romantic', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bairi Piya - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jaadu Hai Nasha Hai', 'jaadu-hai-nasha-hai-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Romantic', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jaadu Hai Nasha Hai - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dola Re Dola', 'dola-re-dola-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Classical', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dola Re Dola - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Agar Tum Mil Jao', 'agar-tum-mil-jao-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Sad', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Agar Tum Mil Jao - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Piyu Bole', 'piyu-bole-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Romantic', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Piyu Bole - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saans', 'saans-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saans - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Teri Meri', 'teri-meri-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Romantic', 'G', 2011,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Teri Meri - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chikni Chameli', 'chikni-chameli-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Dance', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chikni Chameli - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sun Raha Hai', 'sun-raha-hai-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Sad', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sun Raha Hai - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Deewani Mastani', 'deewani-mastani-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Romantic', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Deewani Mastani - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ghoomar', 'ghoomar-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Classical', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ghoomar - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Dholna', 'mere-dholna-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Sad', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Dholna - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pehla Nasha', 'pehla-nasha-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Romantic', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pehla Nasha - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tu Cheez Badi Hai', 'tu-cheez-badi-hai-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Dance', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tu Cheez Badi Hai - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Rang Mein', 'mere-rang-mein-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Romantic', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Rang Mein - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chand Taare', 'chand-taare-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Romantic', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chand Taare - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil To Pagal Hai', 'dil-to-pagal-hai-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Romantic', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil To Pagal Hai - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bole Chudiyan', 'bole-chudiyan-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Celebratory', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bole Chudiyan - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Humko Sirf Tumse', 'humko-sirf-tumse-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Romantic', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Humko Sirf Tumse - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mujhe Maaf Karna', 'mujhe-maaf-karna-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Sad', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mujhe Maaf Karna - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Dil Deewana', 'yeh-dil-deewana-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Romantic', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Dil Deewana - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Ne Yeh Kaha', 'dil-ne-yeh-kaha-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Romantic', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Ne Yeh Kaha - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sajna Sajna', 'sajna-sajna-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Romantic', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sajna Sajna - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mohabbat Hai', 'mohabbat-hai-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Romantic', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mohabbat Hai - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pal', 'pal-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pal - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tadap Tadap', 'tadap-tadap-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Sad', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tadap Tadap - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aap Ki Khatir', 'aap-ki-khatir-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aap Ki Khatir - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Ibaadat', 'dil-ibaadat-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Ibaadat - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Zara Sa', 'zara-sa-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Zara Sa - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Beete Lamhein', 'beete-lamhein-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Sad', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Beete Lamhein - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('O Meri Jaan', 'o-meri-jaan-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
O Meri Jaan - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sach Keh Raha Hai', 'sach-keh-raha-hai-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sach Keh Raha Hai - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yaaron', 'yaaron-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Friendship', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yaaron - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Kyun Yeh Mera', 'dil-kyun-yeh-mera-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Kyun Yeh Mera - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mujhe Tum Nazar Se', 'mujhe-tum-nazar-se-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mujhe Tum Nazar Se - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tu Jo Mila', 'tu-jo-mila-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tu Jo Mila - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chand Sifarish', 'chand-sifarish-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Romantic', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chand Sifarish - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jhootha Hi Sahi', 'jhootha-hi-sahi-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Romantic', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jhootha Hi Sahi - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dus Bahane', 'dus-bahane-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Dance', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dus Bahane - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Woh Pehli Baar', 'woh-pehli-baar-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Romantic', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Woh Pehli Baar - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maine Jaana Na', 'maine-jaana-na-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Romantic', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maine Jaana Na - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jab Se Tere Naina', 'jab-se-tere-naina-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Romantic', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jab Se Tere Naina - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nikamma Kiya', 'nikamma-kiya-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Romantic', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Nikamma Kiya - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Layi Vi Na Gayi', 'layi-vi-na-gayi-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Dance', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Layi Vi Na Gayi - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tanha Dil', 'tanha-dil-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Sad', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tanha Dil - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sajna Ji', 'sajna-ji-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Romantic', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sajna Ji - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tum Se Hi', 'tum-se-hi-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tum Se Hi - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pehli Baar', 'pehli-baar-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Romantic', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pehli Baar - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jo Bhi Main', 'jo-bhi-main-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Romantic', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jo Bhi Main - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sadda Haq', 'sadda-haq-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Patriotic', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sadda Haq - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Phir Se Ud Chala', 'phir-se-ud-chala-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Inspirational', 'G', 2011,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Phir Se Ud Chala - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Barfi', 'barfi-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Romantic', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Barfi - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Matargashti', 'matargashti-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Playful', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Matargashti - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kahin Na Kahin', 'kahin-na-kahin-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Romantic', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kahin Na Kahin - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Paisa Ye Paisa', 'paisa-ye-paisa-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Playful', 'G', 2011,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Paisa Ye Paisa - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Akkad Bakkad', 'akkad-bakkad-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Playful', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Akkad Bakkad - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tere Bin', 'tere-bin-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tere Bin - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pehli Nazar Mein', 'pehli-nazar-mein-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Romantic', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pehli Nazar Mein - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Woh Lamhey', 'woh-lamhey-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Woh Lamhey - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jeene Laga Hoon', 'jeene-laga-hoon-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Romantic', 'G', 2011,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jeene Laga Hoon - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Piya O Re Piya', 'piya-o-re-piya-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Romantic', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Piya O Re Piya - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Meri Na Sune', 'dil-meri-na-sune-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Sad', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Meri Na Sune - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mushkoora', 'mushkoora-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Romantic', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mushkoora - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Be Intehaan', 'be-intehaan-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Be Intehaan - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Toota Jo Kabhi Taara', 'toota-jo-kabhi-taara-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Sad', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Toota Jo Kabhi Taara - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rabba', 'rabba-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Sad', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rabba - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aadat', 'aadat-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Sad', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aadat - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hona Tha Pyar', 'hona-tha-pyar-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Romantic', 'G', 2011,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hona Tha Pyar - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sunny Sunny', 'sunny-sunny-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Dance', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sunny Sunny - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chhote Chhote Peg', 'chhote-chhote-peg-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Dance', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chhote Chhote Peg - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Oh Humsafar', 'oh-humsafar-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Romantic', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Oh Humsafar - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gilehriyaan', 'gilehriyaan-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Dance', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gilehriyaan - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tu Hi Yaar Mera', 'tu-hi-yaar-mera-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Romantic', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tu Hi Yaar Mera - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('O Saki Saki', 'o-saki-saki-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Dance', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
O Saki Saki - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Todeya', 'dil-todeya-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Dance', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Todeya - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kala Chashma', 'kala-chashma-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Dance', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kala Chashma - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mile Ho Tum', 'mile-ho-tum-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Romantic', 'G', 2014,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mile Ho Tum - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bebo', 'bebo-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Dance', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bebo - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Main Tumhara', 'main-tumhara-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Romantic', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Main Tumhara - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Coca Cola', 'coca-cola-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Dance', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Coca Cola - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('DJ Waley Babu', 'dj-waley-babu-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Hip Hop', 'G', 2015,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
DJ Waley Babu - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mercy', 'mercy-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Hip Hop', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mercy - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kala Chashma', 'kala-chashma-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Hip Hop', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kala Chashma - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saturday Saturday', 'saturday-saturday-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Dance', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saturday Saturday - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Abhi Toh Party Shuru Hui Hai', 'abhi-toh-party-shuru-hui-hai-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Dance', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Abhi Toh Party Shuru Hui Hai - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Paani Paani', 'paani-paani-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Dance', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Paani Paani - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Genda Phool', 'genda-phool-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Dance', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Genda Phool - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Proper Patola', 'proper-patola-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Dance', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Proper Patola - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saari Aakh', 'saari-aakh-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Hip Hop', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saari Aakh - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sheher', 'sheher-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Hip Hop', 'G', 2016,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sheher - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('B.A.S.E.', 'b-a-s-e-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Hip Hop', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
B.A.S.E. - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Makhna', 'makhna-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Dance', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Makhna - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Allah Hoo', 'allah-hoo-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Allah Hoo - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tumhe Dillagi', 'tumhe-dillagi-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1991,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tumhe Dillagi - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mast Nazron Se', 'mast-nazron-se-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mast Nazron Se - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Haray Nu', 'dil-haray-nu-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Haray Nu - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sanson Ki Mala', 'sanson-ki-mala-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sanson Ki Mala - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Piya Re Piya Re', 'piya-re-piya-re-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Piya Re Piya Re - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mera Piya Ghar Aaya', 'mera-piya-ghar-aaya-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1991,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mera Piya Ghar Aaya - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Afreen Afreen', 'afreen-afreen-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Afreen Afreen - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kinna Sohna', 'kinna-sohna-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kinna Sohna - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rabba Sacheya', 'rabba-sacheya-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rabba Sacheya - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tere Bin Nahin', 'tere-bin-nahin-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tere Bin Nahin - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Jo Halka Halka', 'yeh-jo-halka-halka-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1991,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Jo Halka Halka - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tum Itna Jo Muskura Rahe Ho', 'tum-itna-jo-muskura-rahe-ho-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tum Itna Jo Muskura Rahe Ho - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hoshwalon Ko Khabar Kya', 'hoshwalon-ko-khabar-kya-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hoshwalon Ko Khabar Kya - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jhuki Jhuki Si Nazar', 'jhuki-jhuki-si-nazar-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jhuki Jhuki Si Nazar - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tera Chehra', 'tera-chehra-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tera Chehra - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saathiya Tune Kya Kiya', 'saathiya-tune-kya-kiya-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saathiya Tune Kya Kiya - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil To Pagal Hai', 'dil-to-pagal-hai-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil To Pagal Hai - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chitthi Na Koi Sandes', 'chitthi-na-koi-sandes-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chitthi Na Koi Sandes - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maine Shayar To Nahin', 'maine-shayar-to-nahin-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maine Shayar To Nahin - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Badi Nazuk Hai', 'badi-nazuk-hai-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Badi Nazuk Hai - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Woh Kagaz Ki Kashti', 'woh-kagaz-ki-kashti-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Woh Kagaz Ki Kashti - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ajeeb Dastan', 'ajeeb-dastan-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ajeeb Dastan - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kal Chaudhvin Ki Raat', 'kal-chaudhvin-ki-raat-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kal Chaudhvin Ki Raat - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Roobaroo', 'roobaroo-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Ghazal', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Roobaroo - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Dushman', 'mere-dushman-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Ghazal', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Dushman - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Ka Kya', 'dil-ka-kya-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Ghazal', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Ka Kya - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tu Hi Re', 'tu-hi-re-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Romantic', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tu Hi Re - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kabhi Alvida Naa Kehna', 'kabhi-alvida-naa-kehna-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Romantic', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kabhi Alvida Naa Kehna - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tum Gaye', 'tum-gaye-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Sad', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tum Gaye - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja Piya', 'aaja-piya-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Romantic', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja Piya - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chhupana Bhi Nahi Aata', 'chhupana-bhi-nahi-aata-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Romantic', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chhupana Bhi Nahi Aata - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jiya Jale', 'jiya-jale-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Romantic', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jiya Jale - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bhar De Jholi', 'bhar-de-jholi-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Devotional', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bhar De Jholi - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kaisi Hai Yeh', 'kaisi-hai-yeh-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Romantic', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kaisi Hai Yeh - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Allah Jaane', 'allah-jaane-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Romantic', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Allah Jaane - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mera Piya Ghar Aaya', 'mera-piya-ghar-aaya-kavita-krishnamurthy', (SELECT id FROM artist WHERE slug = 'kavita-krishnamurthy'),
  'Intermediate', 'Romantic', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mera Piya Ghar Aaya - Kavita Krishnamurthy

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dholna', 'dholna-kavita-krishnamurthy', (SELECT id FROM artist WHERE slug = 'kavita-krishnamurthy'),
  'Intermediate', 'Classical', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dholna - Kavita Krishnamurthy

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bairan Piya', 'bairan-piya-kavita-krishnamurthy', (SELECT id FROM artist WHERE slug = 'kavita-krishnamurthy'),
  'Intermediate', 'Romantic', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bairan Piya - Kavita Krishnamurthy

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chanda Se Hogi', 'chanda-se-hogi-kavita-krishnamurthy', (SELECT id FROM artist WHERE slug = 'kavita-krishnamurthy'),
  'Intermediate', 'Romantic', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chanda Se Hogi - Kavita Krishnamurthy

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hum To Dil Se Haar', 'hum-to-dil-se-haar-kavita-krishnamurthy', (SELECT id FROM artist WHERE slug = 'kavita-krishnamurthy'),
  'Intermediate', 'Romantic', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hum To Dil Se Haar - Kavita Krishnamurthy

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pyar Ke Liye', 'pyar-ke-liye-kavita-krishnamurthy', (SELECT id FROM artist WHERE slug = 'kavita-krishnamurthy'),
  'Intermediate', 'Romantic', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pyar Ke Liye - Kavita Krishnamurthy

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hamari Shaadi Mein', 'hamari-shaadi-mein-kavita-krishnamurthy', (SELECT id FROM artist WHERE slug = 'kavita-krishnamurthy'),
  'Intermediate', 'Celebratory', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hamari Shaadi Mein - Kavita Krishnamurthy

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aane Wala Pal', 'aane-wala-pal-kavita-krishnamurthy', (SELECT id FROM artist WHERE slug = 'kavita-krishnamurthy'),
  'Intermediate', 'Philosophical', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aane Wala Pal - Kavita Krishnamurthy

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mitwa', 'mitwa-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Romantic', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mitwa - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Breathless', 'breathless-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Experimental', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Breathless - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maahi Ve', 'maahi-ve-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Romantic', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maahi Ve - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Woh Jab Yaad Aaye', 'woh-jab-yaad-aaye-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Sad', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Woh Jab Yaad Aaye - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Is Pal', 'is-pal-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Romantic', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Is Pal - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Koi Kahe Kehta Rahe', 'koi-kahe-kehta-rahe-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Romantic', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Koi Kahe Kehta Rahe - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Tara', 'yeh-tara-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Romantic', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Tara - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ek Pal Ka Yeh Jeevan', 'ek-pal-ka-yeh-jeevan-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Philosophical', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ek Pal Ka Yeh Jeevan - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Chahta Hai', 'dil-chahta-hai-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Romantic', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Chahta Hai - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kal Ho Na Ho', 'kal-ho-na-ho-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Sad', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kal Ho Na Ho - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Main Yahaan Hoon', 'main-yahaan-hoon-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Philosophical', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Main Yahaan Hoon - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Janam Samjha Karo', 'janam-samjha-karo-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Romantic', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Janam Samjha Karo - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mast Mast', 'mast-mast-abhijeet', (SELECT id FROM artist WHERE slug = 'abhijeet'),
  'Intermediate', 'Romantic', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mast Mast - Abhijeet Bhattacharya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Main Koi Aisa Geet', 'main-koi-aisa-geet-abhijeet', (SELECT id FROM artist WHERE slug = 'abhijeet'),
  'Intermediate', 'Romantic', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Main Koi Aisa Geet - Abhijeet Bhattacharya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tumse Milne Ko Dil', 'tumse-milne-ko-dil-abhijeet', (SELECT id FROM artist WHERE slug = 'abhijeet'),
  'Intermediate', 'Romantic', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tumse Milne Ko Dil - Abhijeet Bhattacharya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Ne Yeh Kaha', 'dil-ne-yeh-kaha-abhijeet', (SELECT id FROM artist WHERE slug = 'abhijeet'),
  'Intermediate', 'Romantic', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Ne Yeh Kaha - Abhijeet Bhattacharya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aati Kya Khandala', 'aati-kya-khandala-abhijeet', (SELECT id FROM artist WHERE slug = 'abhijeet'),
  'Intermediate', 'Playful', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aati Kya Khandala - Abhijeet Bhattacharya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ban Ban Ban', 'ban-ban-ban-abhijeet', (SELECT id FROM artist WHERE slug = 'abhijeet'),
  'Intermediate', 'Dance', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ban Ban Ban - Abhijeet Bhattacharya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chori Chori Jab', 'chori-chori-jab-abhijeet', (SELECT id FROM artist WHERE slug = 'abhijeet'),
  'Intermediate', 'Romantic', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chori Chori Jab - Abhijeet Bhattacharya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mujhe Pyaar Hua', 'mujhe-pyaar-hua-abhijeet', (SELECT id FROM artist WHERE slug = 'abhijeet'),
  'Intermediate', 'Romantic', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mujhe Pyaar Hua - Abhijeet Bhattacharya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Hai Deewana', 'dil-hai-deewana-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Romantic', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Hai Deewana - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ek Do Teen', 'ek-do-teen-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Dance', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ek Do Teen - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Rang Mein', 'mere-rang-mein-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Romantic', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Rang Mein - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja Re Mere Khwabon Mein', 'aaja-re-mere-khwabon-mein-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Romantic', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja Re Mere Khwabon Mein - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saat Samundar', 'saat-samundar-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Romantic', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saat Samundar - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tu Hi Mera Chand', 'tu-hi-mera-chand-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Romantic', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tu Hi Mera Chand - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aankhen Khuli', 'aankhen-khuli-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Romantic', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aankhen Khuli - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pyar Ka Devta', 'pyar-ka-devta-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Romantic', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pyar Ka Devta - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jhula Bahon Ka', 'jhula-bahon-ka-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Romantic', 'G', 1993,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jhula Bahon Ka - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chupke Chupke Raat Din', 'chupke-chupke-raat-din-ghulam-ali', (SELECT id FROM artist WHERE slug = 'ghulam-ali'),
  'Intermediate', 'Ghazal', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chupke Chupke Raat Din - Ghulam Ali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hungama Hai Kyon Barpa', 'hungama-hai-kyon-barpa-ghulam-ali', (SELECT id FROM artist WHERE slug = 'ghulam-ali'),
  'Intermediate', 'Ghazal', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hungama Hai Kyon Barpa - Ghulam Ali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Mein Tujhe Bithakar', 'dil-mein-tujhe-bithakar-ghulam-ali', (SELECT id FROM artist WHERE slug = 'ghulam-ali'),
  'Intermediate', 'Ghazal', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Mein Tujhe Bithakar - Ghulam Ali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaj Mere Dil Mein', 'aaj-mere-dil-mein-ghulam-ali', (SELECT id FROM artist WHERE slug = 'ghulam-ali'),
  'Intermediate', 'Ghazal', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaj Mere Dil Mein - Ghulam Ali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ishq Mein', 'ishq-mein-ghulam-ali', (SELECT id FROM artist WHERE slug = 'ghulam-ali'),
  'Intermediate', 'Ghazal', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ishq Mein - Ghulam Ali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pyar Ka Pehla Khat', 'pyar-ka-pehla-khat-ghulam-ali', (SELECT id FROM artist WHERE slug = 'ghulam-ali'),
  'Intermediate', 'Ghazal', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pyar Ka Pehla Khat - Ghulam Ali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tere Pyar Mein', 'tere-pyar-mein-ghulam-ali', (SELECT id FROM artist WHERE slug = 'ghulam-ali'),
  'Intermediate', 'Ghazal', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tere Pyar Mein - Ghulam Ali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Dil Mein Hai Tu', 'mere-dil-mein-hai-tu-ghulam-ali', (SELECT id FROM artist WHERE slug = 'ghulam-ali'),
  'Intermediate', 'Ghazal', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Dil Mein Hai Tu - Ghulam Ali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sheila Ki Jawani', 'sheila-ki-jawani-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Dance', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sheila Ki Jawani - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dance Pe Chance', 'dance-pe-chance-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Dance', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dance Pe Chance - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Beedi', 'beedi-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Dance', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Beedi - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja Nachle', 'aaja-nachle-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Dance', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja Nachle - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sajna Ve Sajna', 'sajna-ve-sajna-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Romantic', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sajna Ve Sajna - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Haath Mein', 'mere-haath-mein-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Romantic', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Haath Mein - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kaisi Hai Yeh', 'kaisi-hai-yeh-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Romantic', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kaisi Hai Yeh - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chhaliya', 'chhaliya-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Dance', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chhaliya - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Desi Girl', 'desi-girl-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Dance', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Desi Girl - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Halki Halki', 'halki-halki-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Romantic', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Halki Halki - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kukkad', 'kukkad-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Dance', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kukkad - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mast Mast', 'mast-mast-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Dance', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mast Mast - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
-- Additional songs
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Let Down', 'let-down-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Let Down - Radiohead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lucky', 'lucky-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lucky - Radiohead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('There There', 'there-there-radiohead', (SELECT id FROM artist WHERE slug = 'radiohead'),
  'Intermediate', 'Alternative', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
There There - Radiohead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Stay Free', 'stay-free-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Intermediate', 'Punk', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Stay Free - The Clash

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tommy Gun', 'tommy-gun-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Intermediate', 'Punk', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tommy Gun - The Clash

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Guns of Brixton', 'guns-of-brixton-the-clash', (SELECT id FROM artist WHERE slug = 'the-clash'),
  'Intermediate', 'Punk', 'Am', 1979,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Guns of Brixton - The Clash

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Into the Void', 'into-the-void-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Advanced', 'Heavy Metal', 'E', 1971,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Into the Void - Black Sabbath

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Snowblind', 'snowblind-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Advanced', 'Heavy Metal', 'E', 1972,
  $song_content$<pre>E  A  B  C#m

[Verse]
E  A  B  C#m
Snowblind - Black Sabbath

[Chorus]
E  B  A  C#m
Play with feeling

[Outro]
E  C#m</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sabbath Bloody Sabbath', 'sabbath-bloody-sabbath-black-sabbath', (SELECT id FROM artist WHERE slug = 'black-sabbath'),
  'Advanced', 'Heavy Metal', 'G', 1973,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sabbath Bloody Sabbath - Black Sabbath

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Flight of Icarus', 'flight-of-icarus-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Advanced', 'Heavy Metal', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Flight of Icarus - Iron Maiden

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Can I Play with Madness', 'can-i-play-with-madness-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Advanced', 'Heavy Metal', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Can I Play with Madness - Iron Maiden

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Phantom of the Opera', 'phantom-of-the-opera-iron-maiden', (SELECT id FROM artist WHERE slug = 'iron-maiden'),
  'Advanced', 'Heavy Metal', 'Am', 1980,
  $song_content$<pre>Am  G  F  E7

[Verse]
Am  G  F  E7
Phantom of the Opera - Iron Maiden

[Chorus]
Am  F  G  E7
Play with feeling

[Outro]
Am  E7</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Red Barchetta', 'red-barchetta-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Advanced', 'Progressive Rock', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Red Barchetta - Rush

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Xanadu', 'xanadu-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Advanced', 'Progressive Rock', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Xanadu - Rush

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('La Villa Strangiato', 'la-villa-strangiato-rush', (SELECT id FROM artist WHERE slug = 'rush'),
  'Advanced', 'Instrumental', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
La Villa Strangiato - Rush

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Firth of Fifth', 'firth-of-fifth-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Advanced', 'Progressive Rock', 'G', 1973,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Firth of Fifth - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Supper''s Ready', 'supper-s-ready-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Advanced', 'Progressive Rock', 'G', 1972,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Supper's Ready - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dancing with the Moonlit Knight', 'dancing-with-the-moonlit-knight-genesis', (SELECT id FROM artist WHERE slug = 'genesis'),
  'Advanced', 'Progressive Rock', 'G', 1973,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dancing with the Moonlit Knight - Genesis

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Stripped', 'stripped-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Intermediate', 'Electronic', 'G', 1986,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Stripped - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Master and Servant', 'master-and-servant-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Intermediate', 'Electronic', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Master and Servant - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Somebody', 'somebody-depeche-mode', (SELECT id FROM artist WHERE slug = 'depeche-mode'),
  'Beginner', 'Electronic', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Somebody - Depeche Mode

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Life During Wartime', 'life-during-wartime-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Life During Wartime - Talking Heads

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Crosseyed and Painless', 'crosseyed-and-painless-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'G', 1980,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Crosseyed and Painless - Talking Heads

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Take Me to the River', 'take-me-to-the-river-talking-heads', (SELECT id FROM artist WHERE slug = 'talking-heads'),
  'Intermediate', 'New Wave', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Take Me to the River - Talking Heads

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hand in Glove', 'hand-in-glove-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hand in Glove - The Smiths

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Still Ill', 'still-ill-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Still Ill - The Smiths

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Barbarism Begins at Home', 'barbarism-begins-at-home-the-smiths', (SELECT id FROM artist WHERE slug = 'the-smiths'),
  'Intermediate', 'Indie', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Barbarism Begins at Home - The Smiths

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Strange Magic', 'strange-magic-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Strange Magic - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Last Train to London', 'last-train-to-london-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Last Train to London - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Rockaria!', 'rockaria-elo', (SELECT id FROM artist WHERE slug = 'elo'),
  'Intermediate', 'Rock', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Rockaria! - Electric Light Orchestra

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fool''s Overture', 'fool-s-overture-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Advanced', 'Progressive Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fool's Overture - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hide in Your Shell', 'hide-in-your-shell-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Intermediate', 'Progressive Rock', 'G', 1974,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hide in Your Shell - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('School', 'school-supertramp', (SELECT id FROM artist WHERE slug = 'supertramp'),
  'Advanced', 'Progressive Rock', 'G', 1974,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
School - Supertramp

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Make Believe', 'make-believe-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Intermediate', 'Rock', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Make Believe - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I''ll Supply the Love', 'i-ll-supply-the-love-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Intermediate', 'Rock', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I'll Supply the Love - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Child''s Anthem', 'child-s-anthem-toto', (SELECT id FROM artist WHERE slug = 'toto'),
  'Advanced', 'Instrumental', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Child's Anthem - Toto

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('That Was Yesterday', 'that-was-yesterday-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Intermediate', 'Rock', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
That Was Yesterday - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Long Long Way from Home', 'long-long-way-from-home-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Intermediate', 'Rock', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Long Long Way from Home - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Head Games', 'head-games-foreigner', (SELECT id FROM artist WHERE slug = 'foreigner'),
  'Advanced', 'Rock', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Head Games - Foreigner

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Move Over', 'move-over-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Intermediate', 'Blues Rock', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Move Over - Janis Joplin

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Turtle Blues', 'turtle-blues-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Advanced', 'Blues', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Turtle Blues - Janis Joplin

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Work Me Lord', 'work-me-lord-janis-joplin', (SELECT id FROM artist WHERE slug = 'janis-joplin'),
  'Advanced', 'Blues', 'G', 1969,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Work Me Lord - Janis Joplin

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('China Cat Sunflower', 'china-cat-sunflower-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Intermediate', 'Psychedelic', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
China Cat Sunflower - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Know You Rider', 'i-know-you-rider-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Intermediate', 'Folk Rock', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Know You Rider - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bertha', 'bertha-grateful-dead', (SELECT id FROM artist WHERE slug = 'grateful-dead'),
  'Intermediate', 'Rock', 'G', 1971,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bertha - The Grateful Dead

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Can''t Hide Love', 'can-t-hide-love-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'R&B', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Can't Hide Love - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('That''s the Way of the World', 'that-s-the-way-of-the-world-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'R&B', 'G', 1975,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
That's the Way of the World - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jupiter', 'jupiter-earth-wind-fire', (SELECT id FROM artist WHERE slug = 'earth-wind-fire'),
  'Intermediate', 'Funk', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jupiter - Earth, Wind & Fire

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Please Please Please', 'please-please-please-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Intermediate', 'Soul', 'G', 1956,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Please Please Please - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Try Me', 'try-me-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Intermediate', 'Soul', 'G', 1958,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Try Me - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Night Train', 'night-train-james-brown', (SELECT id FROM artist WHERE slug = 'james-brown'),
  'Intermediate', 'R&B', 'G', 1961,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Night Train - James Brown

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Let the Good Times Roll', 'let-the-good-times-roll-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Intermediate', 'R&B', 'G', 1959,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Let the Good Times Roll - Ray Charles

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Night Time Is the Right Time', 'night-time-is-the-right-time-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Intermediate', 'R&B', 'G', 1959,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Night Time Is the Right Time - Ray Charles

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Got a Woman', 'i-got-a-woman-ray-charles', (SELECT id FROM artist WHERE slug = 'ray-charles'),
  'Intermediate', 'R&B', 'G', 1954,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Got a Woman - Ray Charles

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Holiday', 'holiday-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Holiday - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lucky Star', 'lucky-star-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lucky Star - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Borderline', 'borderline-madonna', (SELECT id FROM artist WHERE slug = 'madonna'),
  'Intermediate', 'Pop', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Borderline - Madonna

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Name of the Game', 'the-name-of-the-game-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1977,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
The Name of the Game - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Money Money Money', 'money-money-money-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1976,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Money Money Money - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Honey Honey', 'honey-honey-abba', (SELECT id FROM artist WHERE slug = 'abba'),
  'Intermediate', 'Pop', 'G', 1974,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Honey Honey - ABBA

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Words', 'words-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Pop', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Words - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Started a Joke', 'i-started-a-joke-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Pop', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Started a Joke - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Massachusetts', 'massachusetts-bee-gees', (SELECT id FROM artist WHERE slug = 'bee-gees'),
  'Intermediate', 'Pop', 'G', 1967,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Massachusetts - The Bee Gees

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I''m Your Baby Tonight', 'i-m-your-baby-tonight-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Intermediate', 'Pop', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I'm Your Baby Tonight - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('All the Man That I Need', 'all-the-man-that-i-need-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Intermediate', 'Pop', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
All the Man That I Need - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Exhale', 'exhale-whitney-houston', (SELECT id FROM artist WHERE slug = 'whitney-houston'),
  'Intermediate', 'R&B', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Exhale - Whitney Houston

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Honey', 'honey-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Honey - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('I Still Believe', 'i-still-believe-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
I Still Believe - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Touch My Body', 'touch-my-body-mariah-carey', (SELECT id FROM artist WHERE slug = 'mariah-carey'),
  'Intermediate', 'Pop', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Touch My Body - Mariah Carey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tim McGraw', 'tim-mcgraw-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Beginner', 'Country Pop', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tim McGraw - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Picture to Burn', 'picture-to-burn-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Intermediate', 'Country Pop', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Picture to Burn - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Should''ve Said No', 'should-ve-said-no-taylor-swift', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
  'Intermediate', 'Country Pop', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Should've Said No - Taylor Swift

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Get Down', 'get-down-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Get Down - Backstreet Boys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('We''ve Got It Goin'' On', 'we-ve-got-it-goin-on-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
We've Got It Goin' On - Backstreet Boys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Any Other Way', 'any-other-way-backstreet-boys', (SELECT id FROM artist WHERE slug = 'backstreet-boys'),
  'Intermediate', 'Pop', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Any Other Way - Backstreet Boys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('From the Bottom of My Broken Heart', 'from-the-bottom-of-my-broken-heart-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Intermediate', 'Pop', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
From the Bottom of My Broken Heart - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sometimes', 'sometimes-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Intermediate', 'Pop', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sometimes - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Born to Make You Happy', 'born-to-make-you-happy-britney-spears', (SELECT id FROM artist WHERE slug = 'britney-spears'),
  'Intermediate', 'Pop', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Born to Make You Happy - Britney Spears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Planet Earth', 'planet-earth-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1981,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Planet Earth - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('New Moon on Monday', 'new-moon-on-monday-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1983,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
New Moon on Monday - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('A View to a Kill', 'a-view-to-a-kill-duran-duran', (SELECT id FROM artist WHERE slug = 'duran-duran'),
  'Intermediate', 'New Wave', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
A View to a Kill - Duran Duran

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pale Shelter', 'pale-shelter-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1982,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pale Shelter - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mothers Talk', 'mothers-talk-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mothers Talk - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Woman in Chains', 'woman-in-chains-tears-for-fears', (SELECT id FROM artist WHERE slug = 'tears-for-fears'),
  'Intermediate', 'New Wave', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Woman in Chains - Tears for Fears

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Fuck Me Pumps', 'fuck-me-pumps-amy-winehouse', (SELECT id FROM artist WHERE slug = 'amy-winehouse'),
  'Intermediate', 'Soul', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Fuck Me Pumps - Amy Winehouse

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Help Yourself', 'help-yourself-amy-winehouse', (SELECT id FROM artist WHERE slug = 'amy-winehouse'),
  'Intermediate', 'Soul', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Help Yourself - Amy Winehouse

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('In My Bed', 'in-my-bed-amy-winehouse', (SELECT id FROM artist WHERE slug = 'amy-winehouse'),
  'Intermediate', 'Soul', 'G', 2006,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
In My Bed - Amy Winehouse

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('How Come You Don''t Call Me', 'how-come-you-don-t-call-me-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
How Come You Don't Call Me - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Un-thinkable', 'un-thinkable-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Un-thinkable - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Try Sleeping with a Broken Heart', 'try-sleeping-with-a-broken-heart-alicia-keys', (SELECT id FROM artist WHERE slug = 'alicia-keys'),
  'Intermediate', 'R&B', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Try Sleeping with a Broken Heart - Alicia Keys

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Seven Years', 'seven-years-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Intermediate', 'Jazz Pop', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Seven Years - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('The Nearness of You', 'the-nearness-of-you-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Beginner', 'Jazz Pop', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
The Nearness of You - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Cold Cold Heart', 'cold-cold-heart-norah-jones', (SELECT id FROM artist WHERE slug = 'norah-jones'),
  'Beginner', 'Jazz Pop', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Cold Cold Heart - Norah Jones

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Family Portrait', 'family-portrait-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Family Portrait - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Don''t Let Me Get Me', 'don-t-let-me-get-me-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop Rock', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Don't Let Me Get Me - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Most Girls', 'most-girls-pink', (SELECT id FROM artist WHERE slug = 'pink'),
  'Intermediate', 'Pop', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Most Girls - P!nk

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Losing Grip', 'losing-grip-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Advanced', 'Pop Punk', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Losing Grip - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nobody''s Home', 'nobody-s-home-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Intermediate', 'Pop Rock', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Nobody's Home - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('He Wasn''t', 'he-wasn-t-avril-lavigne', (SELECT id FROM artist WHERE slug = 'avril-lavigne'),
  'Intermediate', 'Pop Punk', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
He Wasn't - Avril Lavigne

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Low', 'low-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop Rock', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Low - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Walk Away', 'walk-away-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop Rock', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Walk Away - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Never Again', 'never-again-kelly-clarkson', (SELECT id FROM artist WHERE slug = 'kelly-clarkson'),
  'Intermediate', 'Pop Rock', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Never Again - Kelly Clarkson

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gigantic', 'gigantic-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1988,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gigantic - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Velouria', 'velouria-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Velouria - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Here Comes Your Man', 'here-comes-your-man-pixies', (SELECT id FROM artist WHERE slug = 'pixies'),
  'Intermediate', 'Alternative', 'G', 1989,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Here Comes Your Man - Pixies

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sapanama', 'sapanama-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sapanama - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maya', 'maya-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maya - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Phool', 'phool-shreya-sotang', (SELECT id FROM artist WHERE slug = 'shreya-sotang'),
  'Intermediate', 'Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Phool - Shreya Sotang

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bishwas', 'bishwas-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bishwas - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Samjhana', 'samjhana-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Samjhana - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jindagi', 'jindagi-melina-rai', (SELECT id FROM artist WHERE slug = 'melina-rai'),
  'Intermediate', 'Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jindagi - Melina Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Basanta', 'basanta-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Basanta - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saili', 'saili-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saili - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja', 'aaja-saurabh-adhikari', (SELECT id FROM artist WHERE slug = 'saurabh-adhikari'),
  'Intermediate', 'Folk Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja - Saurabh Adhikari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bansuri', 'bansuri-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bansuri - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aakh', 'aakh-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aakh - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tara', 'tara-rajina-rimal', (SELECT id FROM artist WHERE slug = 'rajina-rimal'),
  'Intermediate', 'Folk', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tara - Rajina Rimal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Muskurahat', 'muskurahat-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Muskurahat - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dherai', 'dherai-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dherai - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bihani', 'bihani-anju-panta', (SELECT id FROM artist WHERE slug = 'anju-panta'),
  'Intermediate', 'Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bihani - Anju Panta

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timi', 'timi-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timi - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saili', 'saili-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saili - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gaun', 'gaun-kunti-moktan', (SELECT id FROM artist WHERE slug = 'kunti-moktan'),
  'Intermediate', 'Folk', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gaun - Kunti Moktan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timi Nai', 'timi-nai-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timi Nai - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maya Ko', 'maya-ko-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maya Ko - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bato', 'bato-nima-rumba', (SELECT id FROM artist WHERE slug = 'nima-rumba'),
  'Intermediate', 'Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bato - Nima Rumba

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timi Ra Ma', 'timi-ra-ma-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timi Ra Ma - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aashish', 'aashish-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aashish - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mero', 'mero-rajesh-payal-rai', (SELECT id FROM artist WHERE slug = 'rajesh-payal-rai'),
  'Intermediate', 'Pop Rock', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mero - Rajesh Payal Rai

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Chautari', 'chautari-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Chautari - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dhaka', 'dhaka-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dhaka - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Topi', 'topi-phattiman-rajbhandari', (SELECT id FROM artist WHERE slug = 'phattiman-rajbhandari'),
  'Intermediate', 'Folk', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Topi - Phattiman Rajbhandari

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aankha', 'aankha-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aankha - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Phool Ko', 'phool-ko-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Phool Ko - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Himal', 'himal-rohit-john-chettri', (SELECT id FROM artist WHERE slug = 'rohit-john-chettri'),
  'Intermediate', 'Folk Rock', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Himal - Rohit John Chettri

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Andolan', 'andolan-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Andolan - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Samanata', 'samanata-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Samanata - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ekta', 'ekta-underground-tropa', (SELECT id FROM artist WHERE slug = 'underground-tropa'),
  'Intermediate', 'Reggae', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ekta - Underground Tropa

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Damphu Bajau', 'damphu-bajau-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Damphu Bajau - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nache', 'nache-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Nache - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tamang', 'tamang-raju-lama', (SELECT id FROM artist WHERE slug = 'raju-lama'),
  'Intermediate', 'Tamang Selo', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tamang - Raju Lama

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pokhara', 'pokhara-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pokhara - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Parbat', 'parbat-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Parbat - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tilicho', 'tilicho-ram-chandra-kafle', (SELECT id FROM artist WHERE slug = 'ram-chandra-kafle'),
  'Intermediate', 'Folk', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tilicho - Ram Chandra Kafle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hami', 'hami-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2011,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hami - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nayika', 'nayika-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Nayika - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pratibha', 'pratibha-the-black-cats', (SELECT id FROM artist WHERE slug = 'the-black-cats'),
  'Intermediate', 'Pop', 'G', 2013,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pratibha - The Black Cats

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Phool Ko', 'phool-ko-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Phool Ko - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aankha', 'aankha-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aankha - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timro', 'timro-swor-samrat', (SELECT id FROM artist WHERE slug = 'swor-samrat'),
  'Intermediate', 'Pop Rock', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timro - Swor Samrat

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Phool', 'phool-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Phool - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Timro Aankha', 'timro-aankha-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Timro Aankha - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mero Mann', 'mero-mann-trishala-gurung', (SELECT id FROM artist WHERE slug = 'trishala-gurung'),
  'Intermediate', 'Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mero Mann - Trishala Gurung

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pahad', 'pahad-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pahad - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Koshi', 'koshi-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Koshi - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pokhara', 'pokhara-sushma-shakya', (SELECT id FROM artist WHERE slug = 'sushma-shakya'),
  'Intermediate', 'Folk', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pokhara - Sushma Shakya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Muskura', 'muskura-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Muskura - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Anubhav', 'anubhav-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Anubhav - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sambandha', 'sambandha-kiran-pradhan', (SELECT id FROM artist WHERE slug = 'kiran-pradhan'),
  'Intermediate', 'Folk Pop', 'G', 2022,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sambandha - Kiran Pradhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Nepali', 'nepali-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Nepali - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gaunle', 'gaunle-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gaunle - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pahadi', 'pahadi-bijay-bdr-rana', (SELECT id FROM artist WHERE slug = 'bijay-bdr-rana'),
  'Intermediate', 'Folk', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pahadi - Bijay Bdr. Rana

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aakash', 'aakash-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aakash - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Parbati', 'parbati-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2020,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Parbati - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Badal', 'badal-candrabali', (SELECT id FROM artist WHERE slug = 'candrabali'),
  'Intermediate', 'Folk', 'G', 2021,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Badal - Candrabali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sala Main', 'sala-main-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Romantic', 'G', 1965,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sala Main - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aap Ki Nazron Ne', 'aap-ki-nazron-ne-lata-mangeshkar', (SELECT id FROM artist WHERE slug = 'lata-mangeshkar'),
  'Intermediate', 'Romantic', 'G', 1964,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aap Ki Nazron Ne - Lata Mangeshkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ek Haseena Thi', 'ek-haseena-thi-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Romantic', 'G', 1971,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ek Haseena Thi - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ami Je Tomar', 'ami-je-tomar-kishore-kumar', (SELECT id FROM artist WHERE slug = 'kishore-kumar'),
  'Intermediate', 'Romantic', 'G', 1974,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ami Je Tomar - Kishore Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jaanam Jaanam', 'jaanam-jaanam-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Romantic', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jaanam Jaanam - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Mehboob Qayamat Hogi', 'mere-mehboob-qayamat-hogi-mohammad-rafi', (SELECT id FROM artist WHERE slug = 'mohammad-rafi'),
  'Intermediate', 'Romantic', 'G', 1965,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Mehboob Qayamat Hogi - Mohammad Rafi

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Suhani Chandni', 'suhani-chandni-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Romantic', 'G', 1970,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Suhani Chandni - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hariyala Haryala', 'hariyala-haryala-mukesh', (SELECT id FROM artist WHERE slug = 'mukesh'),
  'Intermediate', 'Romantic', 'G', 1972,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hariyala Haryala - Mukesh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Bahut Door', 'bahut-door-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Romantic', 'G', 1978,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Bahut Door - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Ko Maine', 'dil-ko-maine-asha-bhosle', (SELECT id FROM artist WHERE slug = 'asha-bhosle'),
  'Intermediate', 'Romantic', 'G', 1979,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Ko Maine - Asha Bhosle

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aye Malik', 'aye-malik-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Devotional', 'G', 1968,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aye Malik - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tu Pyar Ka Sagar', 'tu-pyar-ka-sagar-manna-dey', (SELECT id FROM artist WHERE slug = 'manna-dey'),
  'Intermediate', 'Romantic', 'G', 1969,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tu Pyar Ka Sagar - Manna Dey

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Suno Suno', 'suno-suno-geeta-dutt', (SELECT id FROM artist WHERE slug = 'geeta-dutt'),
  'Intermediate', 'Romantic', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Suno Suno - Geeta Dutt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Deewana Mujhko', 'deewana-mujhko-geeta-dutt', (SELECT id FROM artist WHERE slug = 'geeta-dutt'),
  'Intermediate', 'Romantic', 'G', 1963,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Deewana Mujhko - Geeta Dutt

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Gunguna Rahe Hain', 'gunguna-rahe-hain-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Romantic', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Gunguna Rahe Hain - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jhanak Jhanak', 'jhanak-jhanak-hemant-kumar', (SELECT id FROM artist WHERE slug = 'hemant-kumar'),
  'Intermediate', 'Romantic', 'G', 1964,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jhanak Jhanak - Hemant Kumar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mili Khak Mein', 'mili-khak-mein-talat-mahmood', (SELECT id FROM artist WHERE slug = 'talat-mahmood'),
  'Intermediate', 'Sad', 'G', 1962,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mili Khak Mein - Talat Mahmood

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mausam Hai Matwala', 'mausam-hai-matwala-talat-mahmood', (SELECT id FROM artist WHERE slug = 'talat-mahmood'),
  'Intermediate', 'Romantic', 'G', 1963,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mausam Hai Matwala - Talat Mahmood

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ennavale', 'ennavale-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Romantic', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ennavale - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mozart of Madras', 'mozart-of-madras-ar-rahman', (SELECT id FROM artist WHERE slug = 'ar-rahman'),
  'Intermediate', 'Instrumental', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mozart of Madras - A.R. Rahman

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('You Are My Soniya', 'you-are-my-soniya-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Romantic', 'G', 2003,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
You Are My Soniya - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja Nahin', 'aaja-nahin-sonu-nigam', (SELECT id FROM artist WHERE slug = 'sonu-nigam'),
  'Intermediate', 'Sad', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja Nahin - Sonu Nigam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mujhe Pyar', 'mujhe-pyar-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Romantic', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mujhe Pyar - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tanha Dil', 'tanha-dil-kumar-sanu', (SELECT id FROM artist WHERE slug = 'kumar-sanu'),
  'Intermediate', 'Sad', 'G', 1996,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tanha Dil - Kumar Sanu

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('O Priya Priya', 'o-priya-priya-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
O Priya Priya - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Darr', 'dil-darr-alka-yagnik', (SELECT id FROM artist WHERE slug = 'alka-yagnik'),
  'Intermediate', 'Romantic', 'G', 1997,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Darr - Alka Yagnik

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Dholna', 'mere-dholna-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Classical', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Dholna - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Barso Re', 'barso-re-shreya-ghoshal', (SELECT id FROM artist WHERE slug = 'shreya-ghoshal'),
  'Intermediate', 'Romantic', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Barso Re - Shreya Ghoshal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Masti Masti', 'masti-masti-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Romantic', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Masti Masti - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kabhi Khushi Kabhie Gham', 'kabhi-khushi-kabhie-gham-udit-narayan', (SELECT id FROM artist WHERE slug = 'udit-narayan'),
  'Intermediate', 'Celebratory', 'G', 2001,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kabhi Khushi Kabhie Gham - Udit Narayan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Tu Hi Meri Zindagi', 'tu-hi-meri-zindagi-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Tu Hi Meri Zindagi - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aasman Ke', 'aasman-ke-kk', (SELECT id FROM artist WHERE slug = 'kk'),
  'Intermediate', 'Romantic', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aasman Ke - KK

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mausam', 'mausam-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mausam - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Shakalaka Baby', 'shakalaka-baby-shaan', (SELECT id FROM artist WHERE slug = 'shaan'),
  'Intermediate', 'Dance', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Shakalaka Baby - Shaan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saans', 'saans-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Romantic', 'G', 2011,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saans - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dooriyan', 'dooriyan-mohit-chauhan', (SELECT id FROM artist WHERE slug = 'mohit-chauhan'),
  'Intermediate', 'Sad', 'G', 2012,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dooriyan - Mohit Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Kuchh Is Tarah', 'kuchh-is-tarah-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Romantic', 'G', 2009,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Kuchh Is Tarah - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Jannat', 'jannat-atif-aslam', (SELECT id FROM artist WHERE slug = 'atif-aslam'),
  'Intermediate', 'Romantic', 'G', 2010,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Jannat - Atif Aslam

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dheere Dheere', 'dheere-dheere-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Romantic', 'G', 2017,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dheere Dheere - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Hashtag', 'hashtag-neha-kakkar', (SELECT id FROM artist WHERE slug = 'neha-kakkar'),
  'Intermediate', 'Dance', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Hashtag - Neha Kakkar

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Move Your Body', 'move-your-body-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Hip Hop', 'G', 2018,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Move Your Body - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Sheher Ki Ladki', 'sheher-ki-ladki-badshah', (SELECT id FROM artist WHERE slug = 'badshah'),
  'Intermediate', 'Hip Hop', 'G', 2019,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Sheher Ki Ladki - Badshah

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Haiderium', 'haiderium-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1990,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Haiderium - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mujhe Qabul', 'mujhe-qabul-nusrat-fateh-ali-khan', (SELECT id FROM artist WHERE slug = 'nusrat-fateh-ali-khan'),
  'Intermediate', 'Qawwali', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mujhe Qabul - Nusrat Fateh Ali Khan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Ahista Ahista', 'ahista-ahista-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1992,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Ahista Ahista - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Yeh Dil', 'yeh-dil-jagjit-singh', (SELECT id FROM artist WHERE slug = 'jagjit-singh'),
  'Intermediate', 'Ghazal', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Yeh Dil - Jagjit Singh

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Pyaar Ka Sama', 'pyaar-ka-sama-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Romantic', 'G', 2005,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Pyaar Ka Sama - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Humdum', 'humdum-hariharan', (SELECT id FROM artist WHERE slug = 'hariharan'),
  'Intermediate', 'Romantic', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Humdum - Hariharan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Lagi Lagi', 'lagi-lagi-kavita-krishnamurthy', (SELECT id FROM artist WHERE slug = 'kavita-krishnamurthy'),
  'Intermediate', 'Romantic', 'G', 1998,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Lagi Lagi - Kavita Krishnamurthy

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Saajan More', 'saajan-more-kavita-krishnamurthy', (SELECT id FROM artist WHERE slug = 'kavita-krishnamurthy'),
  'Intermediate', 'Romantic', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Saajan More - Kavita Krishnamurthy

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Chahta Hai Reprise', 'dil-chahta-hai-reprise-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Romantic', 'G', 2002,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Chahta Hai Reprise - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Junoon', 'junoon-shankar-mahadevan', (SELECT id FROM artist WHERE slug = 'shankar-mahadevan'),
  'Intermediate', 'Romantic', 'G', 2004,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Junoon - Shankar Mahadevan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Hai Ke Manta Nahin', 'dil-hai-ke-manta-nahin-abhijeet', (SELECT id FROM artist WHERE slug = 'abhijeet'),
  'Intermediate', 'Romantic', 'G', 1999,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Hai Ke Manta Nahin - Abhijeet Bhattacharya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maine Dil Tujhko Diya', 'maine-dil-tujhko-diya-abhijeet', (SELECT id FROM artist WHERE slug = 'abhijeet'),
  'Intermediate', 'Romantic', 'G', 2000,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maine Dil Tujhko Diya - Abhijeet Bhattacharya

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Maine Chun Liya', 'maine-chun-liya-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Romantic', 'G', 1994,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Maine Chun Liya - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dil Hai Deewana Reprise', 'dil-hai-deewana-reprise-anuradha-paudwal', (SELECT id FROM artist WHERE slug = 'anuradha-paudwal'),
  'Intermediate', 'Romantic', 'G', 1995,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dil Hai Deewana Reprise - Anuradha Paudwal

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mere Dil Mein Hai Tu', 'mere-dil-mein-hai-tu-ghulam-ali', (SELECT id FROM artist WHERE slug = 'ghulam-ali'),
  'Intermediate', 'Ghazal', 'G', 1984,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mere Dil Mein Hai Tu - Ghulam Ali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Dard Se', 'dard-se-ghulam-ali', (SELECT id FROM artist WHERE slug = 'ghulam-ali'),
  'Intermediate', 'Ghazal', 'G', 1985,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Dard Se - Ghulam Ali

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Aaja Ve Mahi', 'aaja-ve-mahi-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Dance', 'G', 2007,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Aaja Ve Mahi - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")
VALUES ('Mehboob Mere', 'mehboob-mere-sunidhi-chauhan', (SELECT id FROM artist WHERE slug = 'sunidhi-chauhan'),
  'Intermediate', 'Romantic', 'G', 2008,
  $song_content$<pre>G  D  Em  C

[Verse]
G  D  Em  C
Mehboob Mere - Sunidhi Chauhan

[Chorus]
G  Em  D  C
Play with feeling

[Outro]
G  C</pre>$song_content$,
  TRUE)
ON CONFLICT (slug) DO NOTHING;

COMMIT;
