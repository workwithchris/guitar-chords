-- Migration: Add Nepali artists and songs
-- Generated: 2026-07-12T11:04:56.649Z

BEGIN;

-- Insert Nepali artists (idempotent - skip if already exist)
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'nepathya', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'prem-dhoj-pradhan', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'narayan-gopal', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'cobweb', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'albatross', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', '1974-ad', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'aruna-lama', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'gopal-yonjan', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'swoopna-suman', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'the-elements', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'bipul-chettri', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'bartika-eam-rai', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'sajjan-raj-vaidya', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'yama-buddha', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'nepsy', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'tribal-rain', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'sugam-pokharel', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'om-bikram-bista', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'shreya-sotang', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'melina-rai', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'anju-panta', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'raju-lama', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'trishala-gurung', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'arun-thapa', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'deepak-jangam', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'mukti-revival', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'kumar-basnet', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'nabin-k-bhattarai', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'sashi-rawal', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "artist" ("name", "slug", "bio", "isActive")
VALUES ('', 'amrit-gurung', 'Nepali musical artist.', true)
ON CONFLICT (slug) DO NOTHING;

-- Insert Nepali songs (idempotent)
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया ज्ञान नै',
  'maya-gyan-nai',
  (SELECT id FROM "artist" WHERE slug = 'mantra'),
  '<p>माया ज्ञान नै</p><p>[Bb] [Em] [C] [Em]</p><p>Lyrics coming soon...</p><p>[Bb] [Em] [C] [Em]</p>',
  2021,
  'A',
  1,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना बादल आयो',
  'sapana-badal-aayo',
  (SELECT id FROM "artist" WHERE slug = 'mantra'),
  '<p>सपना बादल आयो</p><p>[F#m] [F] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [F#m] [Em]</p>',
  2002,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी मा प्रेम लाई',
  'sathi-ma-prem-lai',
  (SELECT id FROM "artist" WHERE slug = 'atharvanepal'),
  '<p>साथी मा प्रेम लाई</p><p>[E] [D] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[E] [D] [Am] [Dm]</p>',
  2014,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी माथि',
  'chandani-mathi',
  (SELECT id FROM "artist" WHERE slug = 'atharvanepal'),
  '<p>चाँदनी माथि</p><p>[F#m] [C] [E] [D]</p><p>Lyrics coming soon...</p><p>[F#m] [C] [E] [D]</p>',
  2000,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा जस्तो बादल ज्ञान पग्लिन्छ',
  'hawa-jasto-badal-gyan-paglindchha',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-meghna-mishra'),
  '<p>हावा जस्तो बादल ज्ञान पग्लिन्छ</p><p>[C] [Am] [Dm] [Em]</p><p>Lyrics coming soon...</p><p>[C] [Am] [Dm] [Em]</p>',
  2024,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो भित्र उडान',
  'bato-bhitra-udan',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-meghna-mishra'),
  '<p>बाटो भित्र उडान</p><p>[Dm] [D] [F] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [D] [F] [G]</p>',
  2012,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान बिहान बिना बिछोड',
  'gyan-bihan-bina-bichhod',
  (SELECT id FROM "artist" WHERE slug = 'raffi'),
  '<p>ज्ञान बिहान बिना बिछोड</p><p>[Dm] [D] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [D] [F#m] [Em]</p>',
  2008,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी बादल देखि',
  'jindagi-badal-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'raffi'),
  '<p>जिन्दगी बादल देखि</p><p>[F] [C] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[F] [C] [Bb] [F]</p>',
  2019,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ भित्र',
  'gaun-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-aashiqui-2'),
  '<p>गाउँ भित्र</p><p>[Bb] [F] [C] [Em]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [C] [Em]</p>',
  2005,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय को बोल्छ',
  'hridaya-ko-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-aashiqui-2'),
  '<p>हृदय को बोल्छ</p><p>[Em] [D] [C] [Bb]</p><p>Lyrics coming soon...</p><p>[Em] [D] [C] [Bb]</p>',
  2008,
  'G',
  3,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान तिमी',
  'udan-timi',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-the-ba-ds-of-bollywood'),
  '<p>उडान तिमी</p><p>[F#m] [Em] [Em] [D]</p><p>Lyrics coming soon...</p><p>[F#m] [Em] [Em] [D]</p>',
  1995,
  'Em',
  3,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति परीक्षा जस्तो',
  'shanti-pariksha-jasto',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-the-ba-ds-of-bollywood'),
  '<p>शान्ति परीक्षा जस्तो</p><p>[E] [Bb] [Em] [F]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [Em] [F]</p>',
  2018,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी आँखा बिहान अघि',
  'timi-aankha-bihan-aghi',
  (SELECT id FROM "artist" WHERE slug = 'atif-aslam-ajab-prem-ki-ghazab-kahani'),
  '<p>तिमी आँखा बिहान अघि</p><p>[E] [D] [C] [G]</p><p>Lyrics coming soon...</p><p>[E] [D] [C] [G]</p>',
  1995,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत र याद',
  'geet-ra-yaad',
  (SELECT id FROM "artist" WHERE slug = 'atif-aslam-ajab-prem-ki-ghazab-kahani'),
  '<p>गीत र याद</p><p>[E] [E] [C] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [E] [C] [Bb]</p>',
  1996,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु र बिना',
  'mutu-ra-bina',
  (SELECT id FROM "artist" WHERE slug = 'atif-aslam-badlapur'),
  '<p>मुटु र बिना</p><p>[G] [Bb] [G] [G]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [G] [G]</p>',
  2019,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान लाई सम्म कथा',
  'bihan-lai-samma-katha',
  (SELECT id FROM "artist" WHERE slug = 'atif-aslam-badlapur'),
  '<p>बिहान लाई सम्म कथा</p><p>[E] [F] [Am] [C]</p><p>Lyrics coming soon...</p><p>[E] [F] [Am] [C]</p>',
  2020,
  'C',
  2,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल लाई',
  'phool-lai',
  (SELECT id FROM "artist" WHERE slug = 'james-yorkston-feat-kalyna-rakel'),
  '<p>फूल लाई</p><p>[D] [Dm] [F] [Em]</p><p>Lyrics coming soon...</p><p>[D] [Dm] [F] [Em]</p>',
  2012,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान हरू संग',
  'muskan-haru-sanga',
  (SELECT id FROM "artist" WHERE slug = 'james-yorkston-feat-kalyna-rakel'),
  '<p>मुस्कान हरू संग</p><p>[F#m] [Dm] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [Dm] [G]</p>',
  2002,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून पानी आगो',
  'joon-pani-aago',
  (SELECT id FROM "artist" WHERE slug = 'mohit-chauhan-jab-we-met'),
  '<p>जून पानी आगो</p><p>[C] [Dm] [F] [Dm]</p><p>Lyrics coming soon...</p><p>[C] [Dm] [F] [Dm]</p>',
  2003,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर के पात तिमी',
  'sahar-ke-paat-timi',
  (SELECT id FROM "artist" WHERE slug = 'mohit-chauhan-jab-we-met'),
  '<p>सहर के पात तिमी</p><p>[F] [C] [C] [F]</p><p>Lyrics coming soon...</p><p>[F] [C] [C] [F]</p>',
  2014,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ गीत चाँदनी शक्ति उड्छ',
  'gaun-geet-chandani-shakti-udchha',
  (SELECT id FROM "artist" WHERE slug = 'bob-dylan'),
  '<p>गाउँ गीत चाँदनी शक्ति उड्छ</p><p>[E] [Dm] [F] [E]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [F] [E]</p>',
  2012,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद बाटो मै हाम्रो',
  'yaad-bato-mai-hamro',
  (SELECT id FROM "artist" WHERE slug = 'bob-dylan'),
  '<p>याद बाटो मै हाम्रो</p><p>[Dm] [E] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[Dm] [E] [F#m] [Am]</p>',
  1995,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड बिछोड बल्छ',
  'pahad-bichhod-balchha',
  (SELECT id FROM "artist" WHERE slug = 'the-eagles'),
  '<p>पहाड बिछोड बल्छ</p><p>[Em] [Bb] [G] [Em]</p><p>Lyrics coming soon...</p><p>[Em] [Bb] [G] [Em]</p>',
  1993,
  'Bb',
  3,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य तिमी पात',
  'satya-timi-paat',
  (SELECT id FROM "artist" WHERE slug = 'the-eagles'),
  '<p>सत्य तिमी पात</p><p>[D] [Dm] [D] [D]</p><p>Lyrics coming soon...</p><p>[D] [Dm] [D] [D]</p>',
  1991,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग ले मै',
  'rang-le-mai',
  (SELECT id FROM "artist" WHERE slug = 'hum-kisi-se-kam-nahi'),
  '<p>रंग ले मै</p><p>[F] [Am] [D] [Am]</p><p>Lyrics coming soon...</p><p>[F] [Am] [D] [Am]</p>',
  2003,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा पछि आकाश',
  'yatra-pachi-akash',
  (SELECT id FROM "artist" WHERE slug = 'hum-kisi-se-kam-nahi'),
  '<p>यात्रा पछि आकाश</p><p>[F#m] [G] [Em] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [Em] [C]</p>',
  2002,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद मुटु',
  'yaad-mutu',
  (SELECT id FROM "artist" WHERE slug = 'jyoti-ghimere'),
  '<p>याद मुटु</p><p>[D] [F] [G] [C]</p><p>Lyrics coming soon...</p><p>[D] [F] [G] [C]</p>',
  2016,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो तिमी बिना गीत',
  'mero-timi-bina-geet',
  (SELECT id FROM "artist" WHERE slug = 'jyoti-ghimere'),
  '<p>मेरो तिमी बिना गीत</p><p>[D] [Dm] [D] [D]</p><p>Lyrics coming soon...</p><p>[D] [Dm] [D] [D]</p>',
  2008,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय पनि मै',
  'hridaya-pani-mai',
  (SELECT id FROM "artist" WHERE slug = 'mt-8848'),
  '<p>हृदय पनि मै</p><p>[G] [C] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[G] [C] [F#m] [Bb]</p>',
  2002,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत भित्र',
  'geet-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'mt-8848'),
  '<p>गीत भित्र</p><p>[C] [F#m] [G] [Dm]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [G] [Dm]</p>',
  2011,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ ले सम्म माथि',
  'sanjh-le-samma-mathi',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-pritam-sunidhi-chauhan-cocktail-2'),
  '<p>साँझ ले सम्म माथि</p><p>[Bb] [F] [C] [C]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [C] [C]</p>',
  1999,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन शान्ति नै मुस्कान',
  'dhun-shanti-nai-muskan',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-pritam-sunidhi-chauhan-cocktail-2'),
  '<p>धुन शान्ति नै मुस्कान</p><p>[F#m] [Dm] [F] [G]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [F] [G]</p>',
  1995,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया संग',
  'maya-sanga',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-shreya-ghoshal-shadab-faridi-altamash-faridi'),
  '<p>माया संग</p><p>[D] [F#m] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [F#m] [Em]</p>',
  2024,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो धुन शक्ति बिहान बोल्छ',
  'haaso-dhun-shakti-bihan-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-shreya-ghoshal-shadab-faridi-altamash-faridi'),
  '<p>हाँसो धुन शक्ति बिहान बोल्छ</p><p>[Dm] [Dm] [F] [D]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [F] [D]</p>',
  1994,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान पहाड रंग',
  'udan-pahad-rang',
  (SELECT id FROM "artist" WHERE slug = 'misc-mashups'),
  '<p>उडान पहाड रंग</p><p>[E] [F#m] [E] [E]</p><p>Lyrics coming soon...</p><p>[E] [F#m] [E] [E]</p>',
  1995,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग हरू',
  'rang-haru',
  (SELECT id FROM "artist" WHERE slug = 'misc-mashups'),
  '<p>रंग हरू</p><p>[Bb] [Em] [Em] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [Em] [Em] [F]</p>',
  1998,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग र हरू जिन्दगी',
  'rang-ra-haru-jindagi',
  (SELECT id FROM "artist" WHERE slug = 'the-uglyz'),
  '<p>रंग र हरू जिन्दगी</p><p>[F#m] [E] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [Dm] [G]</p>',
  2006,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिम्रो लाई मा बादल गयो',
  'timro-lai-ma-badal-gayo',
  (SELECT id FROM "artist" WHERE slug = 'the-uglyz'),
  '<p>तिम्रो लाई मा बादल गयो</p><p>[Am] [Am] [C] [C]</p><p>Lyrics coming soon...</p><p>[Am] [Am] [C] [C]</p>',
  2021,
  'F',
  2,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान पात नाच्छ',
  'gyan-paat-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'karna-das'),
  '<p>ज्ञान पात नाच्छ</p><p>[E] [D] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[E] [D] [F#m] [F]</p>',
  1998,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति जस्तो सत्य हिमाल',
  'shanti-jasto-satya-himal',
  (SELECT id FROM "artist" WHERE slug = 'karna-das'),
  '<p>शान्ति जस्तो सत्य हिमाल</p><p>[G] [Am] [E] [C]</p><p>Lyrics coming soon...</p><p>[G] [Am] [E] [C]</p>',
  1998,
  'G',
  4,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति हृदय तिर',
  'shakti-hridaya-tira',
  (SELECT id FROM "artist" WHERE slug = 'deepak-thapa'),
  '<p>शक्ति हृदय तिर</p><p>[Bb] [F#m] [E] [D]</p><p>Lyrics coming soon...</p><p>[Bb] [F#m] [E] [D]</p>',
  2023,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति ले जिन्दगी जून आयो',
  'shanti-le-jindagi-joon-aayo',
  (SELECT id FROM "artist" WHERE slug = 'deepak-thapa'),
  '<p>शान्ति ले जिन्दगी जून आयो</p><p>[C] [E] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[C] [E] [Bb] [C]</p>',
  2013,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा मा ज्ञान बढ्छ',
  'asha-ma-gyan-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'the-axe-band'),
  '<p>आशा मा ज्ञान बढ्छ</p><p>[G] [Bb] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [Dm] [Bb]</p>',
  1995,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो र गयो',
  'haaso-ra-gayo',
  (SELECT id FROM "artist" WHERE slug = 'the-axe-band'),
  '<p>हाँसो र गयो</p><p>[Bb] [Dm] [G] [E]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [G] [E]</p>',
  2022,
  'D',
  3,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिम्रो भित्र',
  'timro-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'unknown'),
  '<p>तिम्रो भित्र</p><p>[Dm] [F#m] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [F#m] [Am] [Dm]</p>',
  2021,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा आकाश पछि रुन्छ',
  'katha-akash-pachi-runchha',
  (SELECT id FROM "artist" WHERE slug = 'unknown'),
  '<p>कथा आकाश पछि रुन्छ</p><p>[D] [D] [Am] [C]</p><p>Lyrics coming soon...</p><p>[D] [D] [Am] [C]</p>',
  2014,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो सत्य जून सम्म',
  'hamro-satya-joon-samma',
  (SELECT id FROM "artist" WHERE slug = 'lobo'),
  '<p>हाम्रो सत्य जून सम्म</p><p>[C] [C] [Em] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [C] [Em] [Bb]</p>',
  1995,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन पात चाँदनी माथि उड्छ',
  'din-paat-chandani-mathi-udchha',
  (SELECT id FROM "artist" WHERE slug = 'lobo'),
  '<p>दिन पात चाँदनी माथि उड्छ</p><p>[G] [Em] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[G] [Em] [F] [F#m]</p>',
  2003,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड बिना नै आयो',
  'bichhod-bina-nai-aayo',
  (SELECT id FROM "artist" WHERE slug = 'deepak-bajracharya'),
  '<p>बिछोड बिना नै आयो</p><p>[Em] [Dm] [Em] [G]</p><p>Lyrics coming soon...</p><p>[Em] [Dm] [Em] [G]</p>',
  1990,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य तिर बिना बग्छ',
  'satya-tira-bina-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'deepak-bajracharya'),
  '<p>सत्य तिर बिना बग्छ</p><p>[Am] [G] [Em] [G]</p><p>Lyrics coming soon...</p><p>[Am] [G] [Em] [G]</p>',
  2002,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना शान्ति हाम्रो',
  'sapana-shanti-hamro',
  (SELECT id FROM "artist" WHERE slug = 'prem-dhoj-pradhan'),
  '<p>सपना शान्ति हाम्रो</p><p>[Am] [Am] [E] [Em]</p><p>Lyrics coming soon...</p><p>[Am] [Am] [E] [Em]</p>',
  2020,
  'G',
  1,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो देखि मन पानी रुन्छ',
  'hamro-dekhi-man-pani-runchha',
  (SELECT id FROM "artist" WHERE slug = 'prem-dhoj-pradhan'),
  '<p>हाम्रो देखि मन पानी रुन्छ</p><p>[Dm] [D] [E] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [D] [E] [C]</p>',
  2011,
  'D',
  5,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा के सत्य',
  'hawa-ke-satya',
  (SELECT id FROM "artist" WHERE slug = 'aastha'),
  '<p>हावा के सत्य</p><p>[F#m] [F#m] [Am] [E]</p><p>Lyrics coming soon...</p><p>[F#m] [F#m] [Am] [E]</p>',
  1993,
  'Em',
  1,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा सपना पनि रुन्छ',
  'yatra-sapana-pani-runchha',
  (SELECT id FROM "artist" WHERE slug = 'aastha'),
  '<p>यात्रा सपना पनि रुन्छ</p><p>[F#m] [G] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [Dm] [Bb]</p>',
  1994,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा मेरो आकाश',
  'hawa-mero-akash',
  (SELECT id FROM "artist" WHERE slug = 'mitski'),
  '<p>हावा मेरो आकाश</p><p>[Dm] [F] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [Dm] [F]</p>',
  1998,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य लाई पछि',
  'satya-lai-pachi',
  (SELECT id FROM "artist" WHERE slug = 'mitski'),
  '<p>सत्य लाई पछि</p><p>[F#m] [F] [G] [Dm]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [G] [Dm]</p>',
  2020,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा लाई र',
  'aankha-lai-ra',
  (SELECT id FROM "artist" WHERE slug = 'varun-jain'),
  '<p>आँखा लाई र</p><p>[G] [F#m] [Bb] [Dm]</p><p>Lyrics coming soon...</p><p>[G] [F#m] [Bb] [Dm]</p>',
  1995,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिम्रो गाउँ हाँस्छ',
  'timro-gaun-haschha',
  (SELECT id FROM "artist" WHERE slug = 'varun-jain'),
  '<p>तिम्रो गाउँ हाँस्छ</p><p>[Dm] [C] [C] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [C] [C] [C]</p>',
  2020,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य माथि बिहान सज्छ',
  'satya-mathi-bihan-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'bidhan-shrestha'),
  '<p>सत्य माथि बिहान सज्छ</p><p>[Am] [Dm] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[Am] [Dm] [Dm] [Bb]</p>',
  1992,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो मेरो मै',
  'bato-mero-mai',
  (SELECT id FROM "artist" WHERE slug = 'bidhan-shrestha'),
  '<p>बाटो मेरो मै</p><p>[G] [C] [C] [C]</p><p>Lyrics coming soon...</p><p>[G] [C] [C] [C]</p>',
  2008,
  'D',
  3,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान पात देखि',
  'bihan-paat-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'vishal-mishra'),
  '<p>बिहान पात देखि</p><p>[Dm] [Bb] [Em] [F#m]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [Em] [F#m]</p>',
  2019,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना हिमाल आशा नै',
  'samjhana-himal-asha-nai',
  (SELECT id FROM "artist" WHERE slug = 'vishal-mishra'),
  '<p>सम्झना हिमाल आशा नै</p><p>[Dm] [E] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[Dm] [E] [Dm] [D]</p>',
  2024,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति पानी',
  'shakti-pani',
  (SELECT id FROM "artist" WHERE slug = 'sivira'),
  '<p>शक्ति पानी</p><p>[G] [Dm] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Dm] [F]</p>',
  2016,
  'F',
  3,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल पछि देखि लाई',
  'phool-pachi-dekhi-lai',
  (SELECT id FROM "artist" WHERE slug = 'sivira'),
  '<p>फूल पछि देखि लाई</p><p>[E] [G] [F#m] [G]</p><p>Lyrics coming soon...</p><p>[E] [G] [F#m] [G]</p>',
  2003,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून साँझ तिम्रो रुन्छ',
  'joon-sanjh-timro-runchha',
  (SELECT id FROM "artist" WHERE slug = 'cobweb'),
  '<p>जून साँझ तिम्रो रुन्छ</p><p>[D] [Em] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[D] [Em] [Dm] [F]</p>',
  2020,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति संग लाई सत्य',
  'shanti-sanga-lai-satya',
  (SELECT id FROM "artist" WHERE slug = 'cobweb'),
  '<p>शान्ति संग लाई सत्य</p><p>[E] [F] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[E] [F] [Dm] [F]</p>',
  2005,
  'D',
  5,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो पनि',
  'hamro-pani',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh'),
  '<p>हाम्रो पनि</p><p>[D] [Bb] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [Bb] [G]</p>',
  2000,
  'A',
  5,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना माया मुस्कान नै',
  'samjhana-maya-muskan-nai',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh'),
  '<p>सम्झना माया मुस्कान नै</p><p>[G] [Bb] [G] [D]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [G] [D]</p>',
  2005,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल नै बिना कथा सुक्छ',
  'himal-nai-bina-katha-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'babin-pradhan'),
  '<p>हिमाल नै बिना कथा सुक्छ</p><p>[Em] [Bb] [E] [G]</p><p>Lyrics coming soon...</p><p>[Em] [Bb] [E] [G]</p>',
  1995,
  'A',
  1,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड मुस्कान आकाश अघि आयो',
  'bichhod-muskan-akash-aghi-aayo',
  (SELECT id FROM "artist" WHERE slug = 'babin-pradhan'),
  '<p>बिछोड मुस्कान आकाश अघि आयो</p><p>[Am] [F#m] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[Am] [F#m] [F#m] [Bb]</p>',
  2004,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा को आकाश',
  'yatra-ko-akash',
  (SELECT id FROM "artist" WHERE slug = 'metallica'),
  '<p>यात्रा को आकाश</p><p>[Bb] [Bb] [E] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [Bb] [E] [Am]</p>',
  2004,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान हरू मा',
  'bihan-haru-ma',
  (SELECT id FROM "artist" WHERE slug = 'metallica'),
  '<p>बिहान हरू मा</p><p>[F] [Em] [Em] [D]</p><p>Lyrics coming soon...</p><p>[F] [Em] [Em] [D]</p>',
  1990,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन आगो गयो',
  'dhun-aago-gayo',
  (SELECT id FROM "artist" WHERE slug = 'kamal-man-singh'),
  '<p>धुन आगो गयो</p><p>[E] [Bb] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [F#m] [Am]</p>',
  2019,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया मेरो',
  'maya-mero',
  (SELECT id FROM "artist" WHERE slug = 'kamal-man-singh'),
  '<p>माया मेरो</p><p>[Bb] [D] [Em] [Dm]</p><p>Lyrics coming soon...</p><p>[Bb] [D] [Em] [Dm]</p>',
  1997,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन हिमाल',
  'dhun-himal',
  (SELECT id FROM "artist" WHERE slug = 'shreya-ghoshal'),
  '<p>धुन हिमाल</p><p>[F#m] [F#m] [G] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [F#m] [G] [Em]</p>',
  2015,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा साथी गाउँ के',
  'yatra-sathi-gaun-ke',
  (SELECT id FROM "artist" WHERE slug = 'shreya-ghoshal'),
  '<p>यात्रा साथी गाउँ के</p><p>[Am] [Em] [Dm] [F#m]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [Dm] [F#m]</p>',
  2012,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य मुस्कान आकाश मै',
  'satya-muskan-akash-mai',
  (SELECT id FROM "artist" WHERE slug = 'john-denver'),
  '<p>सत्य मुस्कान आकाश मै</p><p>[G] [Dm] [Bb] [Em]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Bb] [Em]</p>',
  2011,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल देखि',
  'phool-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'john-denver'),
  '<p>फूल देखि</p><p>[C] [F#m] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [F#m] [C]</p>',
  1990,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन लाई संग नाच्छ',
  'dhun-lai-sanga-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'albatross'),
  '<p>धुन लाई संग नाच्छ</p><p>[F] [F#m] [F] [Am]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [F] [Am]</p>',
  2001,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम माया गीत आँखा हाँस्छ',
  'prem-maya-geet-aankha-haschha',
  (SELECT id FROM "artist" WHERE slug = 'albatross'),
  '<p>प्रेम माया गीत आँखा हाँस्छ</p><p>[E] [D] [Bb] [D]</p><p>Lyrics coming soon...</p><p>[E] [D] [Bb] [D]</p>',
  1995,
  'G',
  5,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड साथी',
  'pahad-sathi',
  (SELECT id FROM "artist" WHERE slug = 'atif-aslam'),
  '<p>पहाड साथी</p><p>[Dm] [Am] [D] [Am]</p><p>Lyrics coming soon...</p><p>[Dm] [Am] [D] [Am]</p>',
  2020,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ सपना सपना रुन्छ',
  'gaun-sapana-sapana-runchha',
  (SELECT id FROM "artist" WHERE slug = 'atif-aslam'),
  '<p>गाउँ सपना सपना रुन्छ</p><p>[Dm] [Am] [E] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [Am] [E] [Em]</p>',
  2013,
  'C',
  5,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति आँखा मै',
  'shakti-aankha-mai',
  (SELECT id FROM "artist" WHERE slug = 'ed-sheeran'),
  '<p>शक्ति आँखा मै</p><p>[Am] [Em] [C] [E]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [C] [E]</p>',
  2010,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा मा',
  'pariksha-ma',
  (SELECT id FROM "artist" WHERE slug = 'ed-sheeran'),
  '<p>परीक्षा मा</p><p>[Dm] [Dm] [E] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [E] [Dm]</p>',
  2007,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम आगो बिछोड जिन्दगी',
  'prem-aago-bichhod-jindagi',
  (SELECT id FROM "artist" WHERE slug = 'kishore-kumar'),
  '<p>प्रेम आगो बिछोड जिन्दगी</p><p>[Bb] [E] [Dm] [C]</p><p>Lyrics coming soon...</p><p>[Bb] [E] [Dm] [C]</p>',
  2003,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु के बिना भरोसा फुल्छ',
  'mutu-ke-bina-bharosa-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'kishore-kumar'),
  '<p>मुटु के बिना भरोसा फुल्छ</p><p>[Em] [D] [E] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [D] [E] [Dm]</p>',
  1995,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा जस्तो चाँदनी उडान',
  'katha-jasto-chandani-udan',
  (SELECT id FROM "artist" WHERE slug = 'misc-cartoons'),
  '<p>कथा जस्तो चाँदनी उडान</p><p>[F] [Bb] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [F#m] [Em]</p>',
  1998,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो फूल',
  'haaso-phool',
  (SELECT id FROM "artist" WHERE slug = 'misc-cartoons'),
  '<p>हाँसो फूल</p><p>[Am] [Bb] [E] [D]</p><p>Lyrics coming soon...</p><p>[Am] [Bb] [E] [D]</p>',
  1999,
  'Am',
  1,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना मन',
  'sapana-man',
  (SELECT id FROM "artist" WHERE slug = 'oasis'),
  '<p>सपना मन</p><p>[Dm] [F#m] [G] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [F#m] [G] [Dm]</p>',
  1994,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा सहर प्रेम सम्म',
  'katha-sahar-prem-samma',
  (SELECT id FROM "artist" WHERE slug = 'oasis'),
  '<p>कथा सहर प्रेम सम्म</p><p>[Am] [C] [Em] [Bb]</p><p>Lyrics coming soon...</p><p>[Am] [C] [Em] [Bb]</p>',
  2016,
  'Dm',
  3,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद अघि',
  'yaad-aghi',
  (SELECT id FROM "artist" WHERE slug = 'lenny-tav-rez'),
  '<p>याद अघि</p><p>[C] [E] [D] [F#m]</p><p>Lyrics coming soon...</p><p>[C] [E] [D] [F#m]</p>',
  2013,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन लाई',
  'din-lai',
  (SELECT id FROM "artist" WHERE slug = 'lenny-tav-rez'),
  '<p>दिन लाई</p><p>[Em] [Em] [Em] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [Em] [Em] [Dm]</p>',
  1990,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना मै',
  'sapana-mai',
  (SELECT id FROM "artist" WHERE slug = 'camilo'),
  '<p>सपना मै</p><p>[E] [Bb] [Bb] [Dm]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [Bb] [Dm]</p>',
  2002,
  'G',
  5,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश हाँसो',
  'akash-haaso',
  (SELECT id FROM "artist" WHERE slug = 'camilo'),
  '<p>आकाश हाँसो</p><p>[Bb] [G] [C] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [C] [Am]</p>',
  2004,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो के हावा पहाड बोल्छ',
  'mero-ke-hawa-pahad-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'subodhh-sharma'),
  '<p>मेरो के हावा पहाड बोल्छ</p><p>[Dm] [F#m] [F] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [F#m] [F] [F]</p>',
  1999,
  'Bb',
  2,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन हरू पछि',
  'din-haru-pachi',
  (SELECT id FROM "artist" WHERE slug = 'subodhh-sharma'),
  '<p>दिन हरू पछि</p><p>[Dm] [Am] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[Dm] [Am] [Dm] [E]</p>',
  2003,
  'Bb',
  4,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान मन',
  'bihan-man',
  (SELECT id FROM "artist" WHERE slug = 'taylor-swift'),
  '<p>बिहान मन</p><p>[G] [Bb] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [Bb] [F]</p>',
  2023,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य सम्झना',
  'satya-samjhana',
  (SELECT id FROM "artist" WHERE slug = 'taylor-swift'),
  '<p>सत्य सम्झना</p><p>[C] [G] [G] [Am]</p><p>Lyrics coming soon...</p><p>[C] [G] [G] [Am]</p>',
  2003,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु अघि माया गीत',
  'mutu-aghi-maya-geet',
  (SELECT id FROM "artist" WHERE slug = 'the-beatles'),
  '<p>मुटु अघि माया गीत</p><p>[Am] [F] [E] [F]</p><p>Lyrics coming soon...</p><p>[Am] [F] [E] [F]</p>',
  2002,
  'Dm',
  1,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम ले संग',
  'prem-le-sanga',
  (SELECT id FROM "artist" WHERE slug = 'the-beatles'),
  '<p>प्रेम ले संग</p><p>[Bb] [G] [Am] [D]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [Am] [D]</p>',
  2013,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी शक्ति हाम्रो फुल्छ',
  'chandani-shakti-hamro-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'the-local-train'),
  '<p>चाँदनी शक्ति हाम्रो फुल्छ</p><p>[C] [Em] [D] [C]</p><p>Lyrics coming soon...</p><p>[C] [Em] [D] [C]</p>',
  2008,
  'D',
  3,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु माथि माथि नै',
  'mutu-mathi-mathi-nai',
  (SELECT id FROM "artist" WHERE slug = 'the-local-train'),
  '<p>मुटु माथि माथि नै</p><p>[Bb] [Em] [D] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [Em] [D] [Am]</p>',
  2001,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान ले मै',
  'gyan-le-mai',
  (SELECT id FROM "artist" WHERE slug = 'tyler-braden'),
  '<p>ज्ञान ले मै</p><p>[F] [F] [Bb] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [F] [Bb] [F#m]</p>',
  2016,
  'E',
  4,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो रंग',
  'aago-rang',
  (SELECT id FROM "artist" WHERE slug = 'tyler-braden'),
  '<p>आगो रंग</p><p>[D] [Bb] [F#m] [E]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [F#m] [E]</p>',
  2017,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया पनि',
  'maya-pani',
  (SELECT id FROM "artist" WHERE slug = 'geiko'),
  '<p>माया पनि</p><p>[Am] [D] [G] [E]</p><p>Lyrics coming soon...</p><p>[Am] [D] [G] [E]</p>',
  1998,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति अघि र बिहान रुन्छ',
  'shanti-aghi-ra-bihan-runchha',
  (SELECT id FROM "artist" WHERE slug = 'geiko'),
  '<p>शान्ति अघि र बिहान रुन्छ</p><p>[Am] [F#m] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[Am] [F#m] [Dm] [Bb]</p>',
  2011,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी चाँदनी दौडन्छ',
  'jindagi-chandani-daudanchha',
  (SELECT id FROM "artist" WHERE slug = 'bts'),
  '<p>जिन्दगी चाँदनी दौडन्छ</p><p>[F#m] [G] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [F#m] [Em]</p>',
  1992,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर जस्तो सज्छ',
  'sahar-jasto-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'bts'),
  '<p>सहर जस्तो सज्छ</p><p>[D] [C] [F#m] [D]</p><p>Lyrics coming soon...</p><p>[D] [C] [F#m] [D]</p>',
  1997,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर बाटो ज्ञान के',
  'sahar-bato-gyan-ke',
  (SELECT id FROM "artist" WHERE slug = 'juice-wrld'),
  '<p>सहर बाटो ज्ञान के</p><p>[Bb] [Am] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [Bb] [F]</p>',
  2011,
  'E',
  5,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी जिन्दगी',
  'pani-jindagi',
  (SELECT id FROM "artist" WHERE slug = 'juice-wrld'),
  '<p>पानी जिन्दगी</p><p>[E] [Dm] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [Am] [F#m]</p>',
  2009,
  'Am',
  4,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड आगो सज्छ',
  'pahad-aago-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'the-weeknd'),
  '<p>पहाड आगो सज्छ</p><p>[Dm] [Dm] [F] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [F] [F]</p>',
  2014,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून भरोसा परीक्षा बिछोड',
  'joon-bharosa-pariksha-bichhod',
  (SELECT id FROM "artist" WHERE slug = 'the-weeknd'),
  '<p>जून भरोसा परीक्षा बिछोड</p><p>[C] [F] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[C] [F] [Dm] [E]</p>',
  1996,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर हरू प्रेम हावा',
  'sahar-haru-prem-hawa',
  (SELECT id FROM "artist" WHERE slug = 'j-balvin'),
  '<p>सहर हरू प्रेम हावा</p><p>[E] [Bb] [F#m] [E]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [F#m] [E]</p>',
  2000,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा पनि परीक्षा',
  'yatra-pani-pariksha',
  (SELECT id FROM "artist" WHERE slug = 'j-balvin'),
  '<p>यात्रा पनि परीक्षा</p><p>[Bb] [D] [F] [Em]</p><p>Lyrics coming soon...</p><p>[Bb] [D] [F] [Em]</p>',
  1997,
  'Am',
  5,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग पनि आगो पनि',
  'rang-pani-aago-pani',
  (SELECT id FROM "artist" WHERE slug = 'dua-lipa'),
  '<p>रंग पनि आगो पनि</p><p>[F] [G] [C] [Dm]</p><p>Lyrics coming soon...</p><p>[F] [G] [C] [Dm]</p>',
  2001,
  'F',
  2,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी हरू',
  'pani-haru',
  (SELECT id FROM "artist" WHERE slug = 'dua-lipa'),
  '<p>पानी हरू</p><p>[C] [F#m] [C] [C]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [C] [C]</p>',
  2019,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा कथा बिस्तर्छ',
  'asha-katha-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'eminem'),
  '<p>आशा कथा बिस्तर्छ</p><p>[F#m] [Dm] [Am] [Bb]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [Am] [Bb]</p>',
  1999,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो आँखा बग्छ',
  'haaso-aankha-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'eminem'),
  '<p>हाँसो आँखा बग्छ</p><p>[Bb] [Am] [Am] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [Am] [F]</p>',
  2009,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना फूल ले रुन्छ',
  'sapana-phool-le-runchha',
  (SELECT id FROM "artist" WHERE slug = 'travis-scott'),
  '<p>सपना फूल ले रुन्छ</p><p>[Em] [Am] [F] [D]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [F] [D]</p>',
  2021,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा लाई',
  'bharosa-lai',
  (SELECT id FROM "artist" WHERE slug = 'travis-scott'),
  '<p>भरोसा लाई</p><p>[D] [Em] [E] [C]</p><p>Lyrics coming soon...</p><p>[D] [Em] [E] [C]</p>',
  2015,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान बाटो मै भरोसा',
  'muskan-bato-mai-bharosa',
  (SELECT id FROM "artist" WHERE slug = 'ozuna'),
  '<p>मुस्कान बाटो मै भरोसा</p><p>[Dm] [D] [Bb] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [D] [Bb] [Dm]</p>',
  2006,
  'C',
  4,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो हिमाल नै बिहान',
  'haaso-himal-nai-bihan',
  (SELECT id FROM "artist" WHERE slug = 'ozuna'),
  '<p>हाँसो हिमाल नै बिहान</p><p>[Am] [Bb] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[Am] [Bb] [Bb] [Am]</p>',
  2000,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत र सम्झना',
  'geet-ra-samjhana',
  (SELECT id FROM "artist" WHERE slug = 'dababy'),
  '<p>गीत र सम्झना</p><p>[Dm] [Dm] [F] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [F] [F]</p>',
  2004,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड भित्र रुन्छ',
  'bichhod-bhitra-runchha',
  (SELECT id FROM "artist" WHERE slug = 'dababy'),
  '<p>बिछोड भित्र रुन्छ</p><p>[G] [E] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[G] [E] [D] [Dm]</p>',
  2001,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा रात',
  'asha-raat',
  (SELECT id FROM "artist" WHERE slug = 'bruno-mars'),
  '<p>आशा रात</p><p>[Em] [D] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[Em] [D] [Bb] [F]</p>',
  1995,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना तिर तिर मन',
  'samjhana-tira-tira-man',
  (SELECT id FROM "artist" WHERE slug = 'bruno-mars'),
  '<p>सम्झना तिर तिर मन</p><p>[Bb] [G] [D] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [D] [Am]</p>',
  2016,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल याद ले',
  'badal-yaad-le',
  (SELECT id FROM "artist" WHERE slug = 'post-malone'),
  '<p>बादल याद ले</p><p>[Bb] [Em] [E] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [Em] [E] [G]</p>',
  2009,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान पछि ले',
  'bihan-pachi-le',
  (SELECT id FROM "artist" WHERE slug = 'post-malone'),
  '<p>बिहान पछि ले</p><p>[Dm] [F] [F] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [F] [F]</p>',
  2024,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो साथी',
  'hamro-sathi',
  (SELECT id FROM "artist" WHERE slug = 'kanye-west'),
  '<p>हाम्रो साथी</p><p>[D] [C] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[D] [C] [Dm] [E]</p>',
  2002,
  'G',
  4,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल गाउँ सत्य',
  'phool-gaun-satya',
  (SELECT id FROM "artist" WHERE slug = 'kanye-west'),
  '<p>फूल गाउँ सत्य</p><p>[D] [Em] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[D] [Em] [F#m] [Bb]</p>',
  1993,
  'D',
  3,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी सम्म नै दिन',
  'pani-samma-nai-din',
  (SELECT id FROM "artist" WHERE slug = 'xxxtentacion'),
  '<p>पानी सम्म नै दिन</p><p>[D] [D] [E] [D]</p><p>Lyrics coming soon...</p><p>[D] [D] [E] [D]</p>',
  2023,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी रात फुल्छ',
  'pani-raat-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'xxxtentacion'),
  '<p>पानी रात फुल्छ</p><p>[F#m] [D] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [Am] [F#m]</p>',
  2012,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड सम्म बादल',
  'bichhod-samma-badal',
  (SELECT id FROM "artist" WHERE slug = 'maroon-5'),
  '<p>बिछोड सम्म बादल</p><p>[G] [C] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[G] [C] [F#m] [F#m]</p>',
  2001,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा सम्म मै',
  'aankha-samma-mai',
  (SELECT id FROM "artist" WHERE slug = 'maroon-5'),
  '<p>आँखा सम्म मै</p><p>[C] [F#m] [Bb] [Dm]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [Bb] [Dm]</p>',
  2013,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल लाई नदी अघि पग्लिन्छ',
  'phool-lai-nadi-aghi-paglindchha',
  (SELECT id FROM "artist" WHERE slug = 'polo-g'),
  '<p>फूल लाई नदी अघि पग्लिन्छ</p><p>[F] [E] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[F] [E] [Bb] [G]</p>',
  1999,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद माथि लाई',
  'yaad-mathi-lai',
  (SELECT id FROM "artist" WHERE slug = 'polo-g'),
  '<p>याद माथि लाई</p><p>[G] [Dm] [C] [F]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [C] [F]</p>',
  2014,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा पछि बिहान रंग',
  'hawa-pachi-bihan-rang',
  (SELECT id FROM "artist" WHERE slug = 'future'),
  '<p>हावा पछि बिहान रंग</p><p>[G] [C] [F] [C]</p><p>Lyrics coming soon...</p><p>[G] [C] [F] [C]</p>',
  2016,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड र',
  'bichhod-ra',
  (SELECT id FROM "artist" WHERE slug = 'future'),
  '<p>बिछोड र</p><p>[Dm] [C] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [C] [Bb] [C]</p>',
  2000,
  'G',
  4,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी पानी हृदय माया',
  'sathi-pani-hridaya-maya',
  (SELECT id FROM "artist" WHERE slug = 'daddy-yankee'),
  '<p>साथी पानी हृदय माया</p><p>[F#m] [C] [E] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [C] [E] [Am]</p>',
  2022,
  'D',
  5,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग तिर मा बादल',
  'rang-tira-ma-badal',
  (SELECT id FROM "artist" WHERE slug = 'daddy-yankee'),
  '<p>रंग तिर मा बादल</p><p>[D] [E] [D] [Am]</p><p>Lyrics coming soon...</p><p>[D] [E] [D] [Am]</p>',
  1999,
  'G',
  5,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा अघि संग',
  'katha-aghi-sanga',
  (SELECT id FROM "artist" WHERE slug = 'chris-brown'),
  '<p>कथा अघि संग</p><p>[Em] [C] [F] [C]</p><p>Lyrics coming soon...</p><p>[Em] [C] [F] [C]</p>',
  2006,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ लाई को',
  'sanjh-lai-ko',
  (SELECT id FROM "artist" WHERE slug = 'chris-brown'),
  '<p>साँझ लाई को</p><p>[G] [Dm] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Dm] [E]</p>',
  1992,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल पनि गयो',
  'phool-pani-gayo',
  (SELECT id FROM "artist" WHERE slug = 'cardi-b'),
  '<p>फूल पनि गयो</p><p>[E] [Em] [G] [F]</p><p>Lyrics coming soon...</p><p>[E] [Em] [G] [F]</p>',
  2003,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग पनि गाउँ माथि',
  'rang-pani-gaun-mathi',
  (SELECT id FROM "artist" WHERE slug = 'cardi-b'),
  '<p>रंग पनि गाउँ माथि</p><p>[Am] [Bb] [D] [C]</p><p>Lyrics coming soon...</p><p>[Am] [Bb] [D] [C]</p>',
  2013,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा के पात सपना',
  'pariksha-ke-paat-sapana',
  (SELECT id FROM "artist" WHERE slug = 'lil-wayne'),
  '<p>परीक्षा के पात सपना</p><p>[F#m] [E] [F#m] [G]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [F#m] [G]</p>',
  1996,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन माथि बाटो बादल',
  'dhun-mathi-bato-badal',
  (SELECT id FROM "artist" WHERE slug = 'lil-wayne'),
  '<p>धुन माथि बाटो बादल</p><p>[Dm] [F] [D] [F#m]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [D] [F#m]</p>',
  2024,
  'Dm',
  5,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल चाँदनी अघि',
  'badal-chandani-aghi',
  (SELECT id FROM "artist" WHERE slug = 'lana-del-rey'),
  '<p>बादल चाँदनी अघि</p><p>[Em] [E] [C] [E]</p><p>Lyrics coming soon...</p><p>[Em] [E] [C] [E]</p>',
  2020,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य आशा',
  'satya-asha',
  (SELECT id FROM "artist" WHERE slug = 'lana-del-rey'),
  '<p>सत्य आशा</p><p>[D] [F#m] [E] [Am]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [E] [Am]</p>',
  1995,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी हाम्रो हृदय र बिझ्छ',
  'chandani-hamro-hridaya-ra-bijhchha',
  (SELECT id FROM "artist" WHERE slug = 'shawn-mendes'),
  '<p>चाँदनी हाम्रो हृदय र बिझ्छ</p><p>[Em] [F] [D] [F#m]</p><p>Lyrics coming soon...</p><p>[Em] [F] [D] [F#m]</p>',
  2009,
  'A',
  2,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात रात पछि गाउँछ',
  'paat-raat-pachi-gaunchha',
  (SELECT id FROM "artist" WHERE slug = 'shawn-mendes'),
  '<p>पात रात पछि गाउँछ</p><p>[F#m] [Bb] [D] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [Bb] [D] [Em]</p>',
  1994,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी सहर सत्य के',
  'sathi-sahar-satya-ke',
  (SELECT id FROM "artist" WHERE slug = 'queen'),
  '<p>साथी सहर सत्य के</p><p>[G] [F] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[G] [F] [Am] [Dm]</p>',
  1994,
  'Dm',
  1,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी माया शान्ति तिम्रो गाउँछ',
  'jindagi-maya-shanti-timro-gaunchha',
  (SELECT id FROM "artist" WHERE slug = 'queen'),
  '<p>जिन्दगी माया शान्ति तिम्रो गाउँछ</p><p>[G] [F] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[G] [F] [F#m] [Em]</p>',
  2003,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा बाटो भित्र',
  'bharosa-bato-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'karol-g'),
  '<p>भरोसा बाटो भित्र</p><p>[Am] [C] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[Am] [C] [F#m] [Bb]</p>',
  1999,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम यात्रा तिम्रो बादल',
  'prem-yatra-timro-badal',
  (SELECT id FROM "artist" WHERE slug = 'karol-g'),
  '<p>प्रेम यात्रा तिम्रो बादल</p><p>[Am] [F] [E] [Dm]</p><p>Lyrics coming soon...</p><p>[Am] [F] [E] [Dm]</p>',
  1998,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ हाँसो पनि',
  'gaun-haaso-pani',
  (SELECT id FROM "artist" WHERE slug = 'lady-gaga'),
  '<p>गाउँ हाँसो पनि</p><p>[Em] [Am] [Em] [C]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [Em] [C]</p>',
  2022,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु रात सम्म',
  'mutu-raat-samma',
  (SELECT id FROM "artist" WHERE slug = 'lady-gaga'),
  '<p>मुटु रात सम्म</p><p>[F] [C] [Dm] [Dm]</p><p>Lyrics coming soon...</p><p>[F] [C] [Dm] [Dm]</p>',
  2020,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड साँझ ले हाँसो',
  'bichhod-sanjh-le-haaso',
  (SELECT id FROM "artist" WHERE slug = 'wiz-khalifa'),
  '<p>बिछोड साँझ ले हाँसो</p><p>[F#m] [C] [C] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [C] [C] [F]</p>',
  2011,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी बिछोड नै',
  'sathi-bichhod-nai',
  (SELECT id FROM "artist" WHERE slug = 'wiz-khalifa'),
  '<p>साथी बिछोड नै</p><p>[Bb] [Am] [Dm] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [Dm] [Am]</p>',
  1996,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ जस्तो संग हिमाल सज्छ',
  'gaun-jasto-sanga-himal-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'lil-durk'),
  '<p>गाउँ जस्तो संग हिमाल सज्छ</p><p>[G] [Em] [G] [Em]</p><p>Lyrics coming soon...</p><p>[G] [Em] [G] [Em]</p>',
  2024,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर मै',
  'sahar-mai',
  (SELECT id FROM "artist" WHERE slug = 'lil-durk'),
  '<p>सहर मै</p><p>[Dm] [Am] [Dm] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [Am] [Dm] [Dm]</p>',
  2014,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो माथि ज्ञान पात',
  'bato-mathi-gyan-paat',
  (SELECT id FROM "artist" WHERE slug = 'miley-cyrus'),
  '<p>बाटो माथि ज्ञान पात</p><p>[F#m] [Am] [D] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [Am] [D] [C]</p>',
  2023,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो सम्झना सपना ले',
  'hamro-samjhana-sapana-le',
  (SELECT id FROM "artist" WHERE slug = 'miley-cyrus'),
  '<p>हाम्रो सम्झना सपना ले</p><p>[Dm] [F#m] [G] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [F#m] [G] [Em]</p>',
  2021,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा ले ज्ञान जून',
  'aankha-le-gyan-joon',
  (SELECT id FROM "artist" WHERE slug = 'beyonc'),
  '<p>आँखा ले ज्ञान जून</p><p>[D] [F] [Am] [E]</p><p>Lyrics coming soon...</p><p>[D] [F] [Am] [E]</p>',
  2021,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी जिन्दगी माथि',
  'timi-jindagi-mathi',
  (SELECT id FROM "artist" WHERE slug = 'beyonc'),
  '<p>तिमी जिन्दगी माथि</p><p>[C] [D] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[C] [D] [D] [Dm]</p>',
  1993,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा पछि',
  'katha-pachi',
  (SELECT id FROM "artist" WHERE slug = 'morgan-wallen'),
  '<p>कथा पछि</p><p>[C] [F] [G] [Em]</p><p>Lyrics coming soon...</p><p>[C] [F] [G] [Em]</p>',
  1998,
  'E',
  1,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु शक्ति देखि',
  'mutu-shakti-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'morgan-wallen'),
  '<p>मुटु शक्ति देखि</p><p>[G] [D] [C] [G]</p><p>Lyrics coming soon...</p><p>[G] [D] [C] [G]</p>',
  2012,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ हरू',
  'sanjh-haru',
  (SELECT id FROM "artist" WHERE slug = 'lil-peep'),
  '<p>साँझ हरू</p><p>[D] [F] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[D] [F] [Dm] [G]</p>',
  2021,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन सत्य को कथा',
  'din-satya-ko-katha',
  (SELECT id FROM "artist" WHERE slug = 'lil-peep'),
  '<p>दिन सत्य को कथा</p><p>[Am] [E] [Bb] [Em]</p><p>Lyrics coming soon...</p><p>[Am] [E] [Bb] [Em]</p>',
  2017,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो धुन मै',
  'hamro-dhun-mai',
  (SELECT id FROM "artist" WHERE slug = 'linkin-park'),
  '<p>हाम्रो धुन मै</p><p>[C] [Am] [F] [Em]</p><p>Lyrics coming soon...</p><p>[C] [Am] [F] [Em]</p>',
  2001,
  'Dm',
  3,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात मा धुन',
  'paat-ma-dhun',
  (SELECT id FROM "artist" WHERE slug = 'linkin-park'),
  '<p>पात मा धुन</p><p>[E] [Bb] [D] [Em]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [D] [Em]</p>',
  1997,
  'Dm',
  4,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ बाटो के हाँस्छ',
  'sanjh-bato-ke-haschha',
  (SELECT id FROM "artist" WHERE slug = 'calvin-harris'),
  '<p>साँझ बाटो के हाँस्छ</p><p>[Em] [G] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[Em] [G] [Bb] [G]</p>',
  1992,
  'Dm',
  5,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल को र बग्छ',
  'badal-ko-ra-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'calvin-harris'),
  '<p>बादल को र बग्छ</p><p>[F] [Em] [G] [Em]</p><p>Lyrics coming soon...</p><p>[F] [Em] [G] [Em]</p>',
  2013,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो शक्ति चाँदनी',
  'mero-shakti-chandani',
  (SELECT id FROM "artist" WHERE slug = 'shakira'),
  '<p>मेरो शक्ति चाँदनी</p><p>[G] [F] [Am] [C]</p><p>Lyrics coming soon...</p><p>[G] [F] [Am] [C]</p>',
  2007,
  'Em',
  5,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना कथा पछि',
  'samjhana-katha-pachi',
  (SELECT id FROM "artist" WHERE slug = 'shakira'),
  '<p>सम्झना कथा पछि</p><p>[D] [G] [E] [F#m]</p><p>Lyrics coming soon...</p><p>[D] [G] [E] [F#m]</p>',
  2011,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी हिमाल',
  'chandani-himal',
  (SELECT id FROM "artist" WHERE slug = 'blackbear'),
  '<p>चाँदनी हिमाल</p><p>[G] [D] [C] [Em]</p><p>Lyrics coming soon...</p><p>[G] [D] [C] [Em]</p>',
  2001,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड मै र',
  'bichhod-mai-ra',
  (SELECT id FROM "artist" WHERE slug = 'blackbear'),
  '<p>बिछोड मै र</p><p>[D] [Am] [F] [D]</p><p>Lyrics coming soon...</p><p>[D] [Am] [F] [D]</p>',
  2021,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान माथि रात भित्र बिस्तर्छ',
  'udan-mathi-raat-bhitra-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'jay-z'),
  '<p>उडान माथि रात भित्र बिस्तर्छ</p><p>[Dm] [G] [Em] [D]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [Em] [D]</p>',
  2019,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा जिन्दगी',
  'yatra-jindagi',
  (SELECT id FROM "artist" WHERE slug = 'jay-z'),
  '<p>यात्रा जिन्दगी</p><p>[Bb] [Em] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[Bb] [Em] [Bb] [C]</p>',
  2018,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड सम्म शान्ति हरू',
  'pahad-samma-shanti-haru',
  (SELECT id FROM "artist" WHERE slug = 'kid-cudi'),
  '<p>पहाड सम्म शान्ति हरू</p><p>[Dm] [Am] [C] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [Am] [C] [Dm]</p>',
  2008,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान जिन्दगी',
  'udan-jindagi',
  (SELECT id FROM "artist" WHERE slug = 'kid-cudi'),
  '<p>उडान जिन्दगी</p><p>[Bb] [Dm] [C] [E]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [C] [E]</p>',
  2022,
  'Am',
  1,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति धुन',
  'shakti-dhun',
  (SELECT id FROM "artist" WHERE slug = 'kygo'),
  '<p>शक्ति धुन</p><p>[Bb] [F#m] [F] [E]</p><p>Lyrics coming soon...</p><p>[Bb] [F#m] [F] [E]</p>',
  1992,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल तिम्रो धुन आयो',
  'badal-timro-dhun-aayo',
  (SELECT id FROM "artist" WHERE slug = 'kygo'),
  '<p>बादल तिम्रो धुन आयो</p><p>[D] [G] [Dm] [Am]</p><p>Lyrics coming soon...</p><p>[D] [G] [Dm] [Am]</p>',
  2005,
  'D',
  2,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो सम्झना शान्ति साँझ',
  'hamro-samjhana-shanti-sanjh',
  (SELECT id FROM "artist" WHERE slug = 'snoop-dogg'),
  '<p>हाम्रो सम्झना शान्ति साँझ</p><p>[E] [Bb] [Am] [F]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [Am] [F]</p>',
  1996,
  'Dm',
  2,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो याद पनि',
  'mero-yaad-pani',
  (SELECT id FROM "artist" WHERE slug = 'snoop-dogg'),
  '<p>मेरो याद पनि</p><p>[C] [Em] [Bb] [F#m]</p><p>Lyrics coming soon...</p><p>[C] [Em] [Bb] [F#m]</p>',
  1995,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य मुस्कान',
  'satya-muskan',
  (SELECT id FROM "artist" WHERE slug = 'blackpink'),
  '<p>सत्य मुस्कान</p><p>[Em] [Dm] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[Em] [Dm] [Dm] [G]</p>',
  2001,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा र को मुस्कान',
  'katha-ra-ko-muskan',
  (SELECT id FROM "artist" WHERE slug = 'blackpink'),
  '<p>कथा र को मुस्कान</p><p>[C] [E] [F] [E]</p><p>Lyrics coming soon...</p><p>[C] [E] [F] [E]</p>',
  2006,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा गीत ले प्रेम',
  'katha-geet-le-prem',
  (SELECT id FROM "artist" WHERE slug = 'tyga'),
  '<p>कथा गीत ले प्रेम</p><p>[Bb] [Bb] [D] [C]</p><p>Lyrics coming soon...</p><p>[Bb] [Bb] [D] [C]</p>',
  2004,
  'Dm',
  2,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल हाँसो',
  'himal-haaso',
  (SELECT id FROM "artist" WHERE slug = 'tyga'),
  '<p>हिमाल हाँसो</p><p>[E] [F] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [F] [Dm] [Bb]</p>',
  2009,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो धुन आकाश',
  'haaso-dhun-akash',
  (SELECT id FROM "artist" WHERE slug = 'christian-nodal'),
  '<p>हाँसो धुन आकाश</p><p>[Am] [C] [C] [E]</p><p>Lyrics coming soon...</p><p>[Am] [C] [C] [E]</p>',
  2020,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड बादल बिहान पानी',
  'bichhod-badal-bihan-pani',
  (SELECT id FROM "artist" WHERE slug = 'christian-nodal'),
  '<p>बिछोड बादल बिहान पानी</p><p>[E] [Bb] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [E] [Bb]</p>',
  2000,
  'Dm',
  4,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद मेरो साँझ',
  'yaad-mero-sanjh',
  (SELECT id FROM "artist" WHERE slug = 'the-neighbourhood'),
  '<p>याद मेरो साँझ</p><p>[Am] [D] [G] [G]</p><p>Lyrics coming soon...</p><p>[Am] [D] [G] [G]</p>',
  2005,
  'D',
  3,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन हाम्रो गयो',
  'dhun-hamro-gayo',
  (SELECT id FROM "artist" WHERE slug = 'the-neighbourhood'),
  '<p>धुन हाम्रो गयो</p><p>[D] [Bb] [F] [F]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [F] [F]</p>',
  2023,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना मेरो',
  'sapana-mero',
  (SELECT id FROM "artist" WHERE slug = 'ava-max'),
  '<p>सपना मेरो</p><p>[Bb] [Bb] [E] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [Bb] [E] [Am]</p>',
  1990,
  'C',
  1,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ नै मै ज्ञान',
  'gaun-nai-mai-gyan',
  (SELECT id FROM "artist" WHERE slug = 'ava-max'),
  '<p>गाउँ नै मै ज्ञान</p><p>[Dm] [F] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [F#m] [F#m]</p>',
  2004,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात माथि पानी संग झर्छ',
  'raat-mathi-pani-sanga-jharchha',
  (SELECT id FROM "artist" WHERE slug = 'james-arthur'),
  '<p>रात माथि पानी संग झर्छ</p><p>[Am] [Em] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [F#m] [Em]</p>',
  2011,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश हाम्रो सहर',
  'akash-hamro-sahar',
  (SELECT id FROM "artist" WHERE slug = 'james-arthur'),
  '<p>आकाश हाम्रो सहर</p><p>[Dm] [F#m] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[Dm] [F#m] [E] [Bb]</p>',
  2023,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ पहाड',
  'gaun-pahad',
  (SELECT id FROM "artist" WHERE slug = 'michael-jackson'),
  '<p>गाउँ पहाड</p><p>[Dm] [Bb] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [Am] [Dm]</p>',
  2008,
  'Bb',
  3,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन को',
  'din-ko',
  (SELECT id FROM "artist" WHERE slug = 'michael-jackson'),
  '<p>दिन को</p><p>[Dm] [Bb] [D] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [D] [F]</p>',
  2007,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन ले प्रेम',
  'man-le-prem',
  (SELECT id FROM "artist" WHERE slug = 'joel-corry'),
  '<p>मन ले प्रेम</p><p>[C] [G] [D] [E]</p><p>Lyrics coming soon...</p><p>[C] [G] [D] [E]</p>',
  2008,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिम्रो सम्म मन',
  'timro-samma-man',
  (SELECT id FROM "artist" WHERE slug = 'joel-corry'),
  '<p>तिम्रो सम्म मन</p><p>[C] [Dm] [F] [D]</p><p>Lyrics coming soon...</p><p>[C] [Dm] [F] [D]</p>',
  2003,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल फूल को',
  'badal-phool-ko',
  (SELECT id FROM "artist" WHERE slug = 'quavo'),
  '<p>बादल फूल को</p><p>[Am] [D] [Am] [C]</p><p>Lyrics coming soon...</p><p>[Am] [D] [Am] [C]</p>',
  1990,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी मेरो नाच्छ',
  'pani-mero-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'quavo'),
  '<p>पानी मेरो नाच्छ</p><p>[Em] [D] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [D] [D] [Dm]</p>',
  2013,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा देखि कथा',
  'yatra-dekhi-katha',
  (SELECT id FROM "artist" WHERE slug = 'romeo-santos'),
  '<p>यात्रा देखि कथा</p><p>[C] [Am] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [Am] [E] [Bb]</p>',
  2024,
  'Am',
  3,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो पहाड सुक्छ',
  'hamro-pahad-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'romeo-santos'),
  '<p>हाम्रो पहाड सुक्छ</p><p>[Bb] [Dm] [D] [C]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [D] [C]</p>',
  2004,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो पनि बग्छ',
  'mero-pani-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'alan-walker'),
  '<p>मेरो पनि बग्छ</p><p>[F] [Bb] [E] [F]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [E] [F]</p>',
  2013,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा हृदय',
  'katha-hridaya',
  (SELECT id FROM "artist" WHERE slug = 'alan-walker'),
  '<p>कथा हृदय</p><p>[Dm] [C] [Bb] [Bb]</p><p>Lyrics coming soon...</p><p>[Dm] [C] [Bb] [Bb]</p>',
  1999,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन सत्य सपना गयो',
  'dhun-satya-sapana-gayo',
  (SELECT id FROM "artist" WHERE slug = 'masked-wolf'),
  '<p>धुन सत्य सपना गयो</p><p>[Dm] [Em] [D] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [Em] [D] [G]</p>',
  1996,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ हाम्रो',
  'sanjh-hamro',
  (SELECT id FROM "artist" WHERE slug = 'masked-wolf'),
  '<p>साँझ हाम्रो</p><p>[G] [Bb] [G] [F]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [G] [F]</p>',
  2023,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ दिन हावा',
  'gaun-din-hawa',
  (SELECT id FROM "artist" WHERE slug = 'big-sean'),
  '<p>गाउँ दिन हावा</p><p>[Em] [Dm] [G] [F]</p><p>Lyrics coming soon...</p><p>[Em] [Dm] [G] [F]</p>',
  2015,
  'E',
  4,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान के हाँसो सम्झना',
  'gyan-ke-haaso-samjhana',
  (SELECT id FROM "artist" WHERE slug = 'big-sean'),
  '<p>ज्ञान के हाँसो सम्झना</p><p>[Dm] [Em] [C] [D]</p><p>Lyrics coming soon...</p><p>[Dm] [Em] [C] [D]</p>',
  2003,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत शक्ति',
  'geet-shakti',
  (SELECT id FROM "artist" WHERE slug = 'manuel-turizo'),
  '<p>गीत शक्ति</p><p>[G] [C] [D] [Am]</p><p>Lyrics coming soon...</p><p>[G] [C] [D] [Am]</p>',
  1993,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति सपना पात',
  'shanti-sapana-paat',
  (SELECT id FROM "artist" WHERE slug = 'manuel-turizo'),
  '<p>शान्ति सपना पात</p><p>[F] [Am] [Am] [C]</p><p>Lyrics coming soon...</p><p>[F] [Am] [Am] [C]</p>',
  2000,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ हरू याद नै',
  'gaun-haru-yaad-nai',
  (SELECT id FROM "artist" WHERE slug = 'dalex'),
  '<p>गाउँ हरू याद नै</p><p>[D] [D] [Am] [C]</p><p>Lyrics coming soon...</p><p>[D] [D] [Am] [C]</p>',
  2015,
  'Am',
  3,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना माया शान्ति सुक्छ',
  'samjhana-maya-shanti-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'dalex'),
  '<p>सम्झना माया शान्ति सुक्छ</p><p>[E] [Em] [Em] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [Em] [Em] [Bb]</p>',
  2000,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति याद मै',
  'shakti-yaad-mai',
  (SELECT id FROM "artist" WHERE slug = 'robin-schulz'),
  '<p>शक्ति याद मै</p><p>[F#m] [Dm] [Em] [D]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [Em] [D]</p>',
  2018,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा रंग लाई नदी',
  'aankha-rang-lai-nadi',
  (SELECT id FROM "artist" WHERE slug = 'robin-schulz'),
  '<p>आँखा रंग लाई नदी</p><p>[E] [Bb] [E] [Em]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [E] [Em]</p>',
  2004,
  'Bb',
  4,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात नै',
  'raat-nai',
  (SELECT id FROM "artist" WHERE slug = 'luis-miguel'),
  '<p>रात नै</p><p>[C] [E] [C] [D]</p><p>Lyrics coming soon...</p><p>[C] [E] [C] [D]</p>',
  2022,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना नै हाँसो',
  'sapana-nai-haaso',
  (SELECT id FROM "artist" WHERE slug = 'luis-miguel'),
  '<p>सपना नै हाँसो</p><p>[F#m] [Bb] [E] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [Bb] [E] [F#m]</p>',
  2008,
  'G',
  5,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग जस्तो',
  'rang-jasto',
  (SELECT id FROM "artist" WHERE slug = '6lack'),
  '<p>रंग जस्तो</p><p>[Dm] [C] [C] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [C] [C] [Em]</p>',
  2005,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी लाई सहर',
  'sathi-lai-sahar',
  (SELECT id FROM "artist" WHERE slug = '6lack'),
  '<p>साथी लाई सहर</p><p>[F] [F#m] [E] [D]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [E] [D]</p>',
  2022,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान शक्ति भित्र को नाच्छ',
  'gyan-shakti-bhitra-ko-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'nirvana'),
  '<p>ज्ञान शक्ति भित्र को नाच्छ</p><p>[F] [Dm] [C] [Em]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [C] [Em]</p>',
  2002,
  'E',
  5,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना संग बोल्छ',
  'sapana-sanga-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'nirvana'),
  '<p>सपना संग बोल्छ</p><p>[G] [F#m] [F] [Bb]</p><p>Lyrics coming soon...</p><p>[G] [F#m] [F] [Bb]</p>',
  1990,
  'Bb',
  2,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना हाम्रो मुस्कान संग',
  'samjhana-hamro-muskan-sanga',
  (SELECT id FROM "artist" WHERE slug = 'tory-lanez'),
  '<p>सम्झना हाम्रो मुस्कान संग</p><p>[E] [G] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[E] [G] [Dm] [G]</p>',
  2001,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी बिना शक्ति को',
  'chandani-bina-shakti-ko',
  (SELECT id FROM "artist" WHERE slug = 'tory-lanez'),
  '<p>चाँदनी बिना शक्ति को</p><p>[D] [E] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[D] [E] [Bb] [G]</p>',
  2012,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन बिना',
  'man-bina',
  (SELECT id FROM "artist" WHERE slug = '5-seconds-of-summer'),
  '<p>मन बिना</p><p>[Bb] [C] [Am] [Bb]</p><p>Lyrics coming soon...</p><p>[Bb] [C] [Am] [Bb]</p>',
  2007,
  'Dm',
  4,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान हृदय को',
  'muskan-hridaya-ko',
  (SELECT id FROM "artist" WHERE slug = '5-seconds-of-summer'),
  '<p>मुस्कान हृदय को</p><p>[F] [F] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[F] [F] [Dm] [E]</p>',
  2023,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी नै आकाश आँखा बिझ्छ',
  'chandani-nai-akash-aankha-bijhchha',
  (SELECT id FROM "artist" WHERE slug = '2pac'),
  '<p>चाँदनी नै आकाश आँखा बिझ्छ</p><p>[Em] [Am] [E] [C]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [E] [C]</p>',
  2000,
  'Dm',
  4,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश संग ले',
  'akash-sanga-le',
  (SELECT id FROM "artist" WHERE slug = '2pac'),
  '<p>आकाश संग ले</p><p>[F#m] [F#m] [Dm] [Dm]</p><p>Lyrics coming soon...</p><p>[F#m] [F#m] [Dm] [Dm]</p>',
  2014,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत माया बाटो उड्छ',
  'geet-maya-bato-udchha',
  (SELECT id FROM "artist" WHERE slug = 'internet-money'),
  '<p>गीत माया बाटो उड्छ</p><p>[E] [Em] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [Em] [F#m] [Bb]</p>',
  2016,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश के सहर',
  'akash-ke-sahar',
  (SELECT id FROM "artist" WHERE slug = 'internet-money'),
  '<p>आकाश के सहर</p><p>[F#m] [C] [G] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [C] [G] [C]</p>',
  2009,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा कथा मा',
  'bharosa-katha-ma',
  (SELECT id FROM "artist" WHERE slug = 'anne-marie'),
  '<p>भरोसा कथा मा</p><p>[Em] [F] [Em] [C]</p><p>Lyrics coming soon...</p><p>[Em] [F] [Em] [C]</p>',
  1990,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा माथि',
  'aankha-mathi',
  (SELECT id FROM "artist" WHERE slug = 'anne-marie'),
  '<p>आँखा माथि</p><p>[D] [F#m] [Am] [Am]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [Am] [Am]</p>',
  1997,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल बाटो तिर हावा उड्छ',
  'himal-bato-tira-hawa-udchha',
  (SELECT id FROM "artist" WHERE slug = 'natti-natasha'),
  '<p>हिमाल बाटो तिर हावा उड्छ</p><p>[Bb] [F] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [Dm] [G]</p>',
  2021,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान के',
  'gyan-ke',
  (SELECT id FROM "artist" WHERE slug = 'natti-natasha'),
  '<p>ज्ञान के</p><p>[F] [D] [G] [E]</p><p>Lyrics coming soon...</p><p>[F] [D] [G] [E]</p>',
  2008,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा भित्र लाई आकाश फुल्छ',
  'yatra-bhitra-lai-akash-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'reik'),
  '<p>यात्रा भित्र लाई आकाश फुल्छ</p><p>[Em] [E] [Em] [D]</p><p>Lyrics coming soon...</p><p>[Em] [E] [Em] [D]</p>',
  1998,
  'G',
  5,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद याद',
  'yaad-yaad',
  (SELECT id FROM "artist" WHERE slug = 'reik'),
  '<p>याद याद</p><p>[Bb] [G] [F] [Dm]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [F] [Dm]</p>',
  1990,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद बाटो',
  'yaad-bato',
  (SELECT id FROM "artist" WHERE slug = 'don-omar'),
  '<p>याद बाटो</p><p>[Bb] [F#m] [D] [D]</p><p>Lyrics coming soon...</p><p>[Bb] [F#m] [D] [D]</p>',
  2001,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ नै अघि',
  'gaun-nai-aghi',
  (SELECT id FROM "artist" WHERE slug = 'don-omar'),
  '<p>गाउँ नै अघि</p><p>[D] [C] [Dm] [F#m]</p><p>Lyrics coming soon...</p><p>[D] [C] [Dm] [F#m]</p>',
  2013,
  'C',
  5,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी जिन्दगी शक्ति बिना',
  'chandani-jindagi-shakti-bina',
  (SELECT id FROM "artist" WHERE slug = 'grupo-firme'),
  '<p>चाँदनी जिन्दगी शक्ति बिना</p><p>[Am] [Am] [D] [F]</p><p>Lyrics coming soon...</p><p>[Am] [Am] [D] [F]</p>',
  2024,
  'A',
  1,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा के नै पहाड',
  'pariksha-ke-nai-pahad',
  (SELECT id FROM "artist" WHERE slug = 'grupo-firme'),
  '<p>परीक्षा के नै पहाड</p><p>[E] [F] [D] [D]</p><p>Lyrics coming soon...</p><p>[E] [F] [D] [D]</p>',
  2009,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी भित्र बिझ्छ',
  'jindagi-bhitra-bijhchha',
  (SELECT id FROM "artist" WHERE slug = 'dmx'),
  '<p>जिन्दगी भित्र बिझ्छ</p><p>[D] [F#m] [C] [C]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [C] [C]</p>',
  2005,
  'E',
  3,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी जून रुन्छ',
  'chandani-joon-runchha',
  (SELECT id FROM "artist" WHERE slug = 'dmx'),
  '<p>चाँदनी जून रुन्छ</p><p>[E] [Dm] [F] [G]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [F] [G]</p>',
  1994,
  'D',
  4,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात मुस्कान सम्झना र',
  'raat-muskan-samjhana-ra',
  (SELECT id FROM "artist" WHERE slug = 'lauv'),
  '<p>रात मुस्कान सम्झना र</p><p>[Am] [Em] [Dm] [F#m]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [Dm] [F#m]</p>',
  2016,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो देखि',
  'mero-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'lauv'),
  '<p>मेरो देखि</p><p>[F] [E] [E] [C]</p><p>Lyrics coming soon...</p><p>[F] [E] [E] [C]</p>',
  1999,
  'Dm',
  1,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून को को आँखा',
  'joon-ko-ko-aankha',
  (SELECT id FROM "artist" WHERE slug = 'lunay'),
  '<p>जून को को आँखा</p><p>[F] [C] [Bb] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [C] [Bb] [Bb]</p>',
  1995,
  'A',
  3,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ बिहान के',
  'gaun-bihan-ke',
  (SELECT id FROM "artist" WHERE slug = 'lunay'),
  '<p>गाउँ बिहान के</p><p>[Am] [C] [C] [C]</p><p>Lyrics coming soon...</p><p>[Am] [C] [C] [C]</p>',
  2011,
  'Am',
  3,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद रात रात साँझ',
  'yaad-raat-raat-sanjh',
  (SELECT id FROM "artist" WHERE slug = 'conan-gray'),
  '<p>याद रात रात साँझ</p><p>[F] [C] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[F] [C] [F#m] [Em]</p>',
  2020,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम के गीत भित्र',
  'prem-ke-geet-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'conan-gray'),
  '<p>प्रेम के गीत भित्र</p><p>[G] [Am] [D] [D]</p><p>Lyrics coming soon...</p><p>[G] [Am] [D] [D]</p>',
  2000,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल ले',
  'himal-le',
  (SELECT id FROM "artist" WHERE slug = 'glass-animals'),
  '<p>हिमाल ले</p><p>[F#m] [F] [Am] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [Am] [F]</p>',
  2009,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद पछि आँखा',
  'yaad-pachi-aankha',
  (SELECT id FROM "artist" WHERE slug = 'glass-animals'),
  '<p>याद पछि आँखा</p><p>[G] [F#m] [E] [Em]</p><p>Lyrics coming soon...</p><p>[G] [F#m] [E] [Em]</p>',
  1991,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान परीक्षा सत्य',
  'muskan-pariksha-satya',
  (SELECT id FROM "artist" WHERE slug = 'pink-floyd'),
  '<p>मुस्कान परीक्षा सत्य</p><p>[E] [F#m] [G] [G]</p><p>Lyrics coming soon...</p><p>[E] [F#m] [G] [G]</p>',
  2004,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी ले ले साथी',
  'sathi-le-le-sathi',
  (SELECT id FROM "artist" WHERE slug = 'pink-floyd'),
  '<p>साथी ले ले साथी</p><p>[Bb] [E] [F#m] [D]</p><p>Lyrics coming soon...</p><p>[Bb] [E] [F#m] [D]</p>',
  2006,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना फूल',
  'sapana-phool',
  (SELECT id FROM "artist" WHERE slug = 'jhen-aiko'),
  '<p>सपना फूल</p><p>[Bb] [Am] [F] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [F] [G]</p>',
  1994,
  'Bb',
  2,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन संग दिन बढ्छ',
  'man-sanga-din-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'jhen-aiko'),
  '<p>मन संग दिन बढ्छ</p><p>[E] [F#m] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [F#m] [D] [Bb]</p>',
  1994,
  'Bb',
  2,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा नदी संग बोल्छ',
  'katha-nadi-sanga-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'lil-tecca'),
  '<p>कथा नदी संग बोल्छ</p><p>[E] [F] [G] [Em]</p><p>Lyrics coming soon...</p><p>[E] [F] [G] [Em]</p>',
  2007,
  'D',
  1,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात पहाड हरू संग गाउँछ',
  'paat-pahad-haru-sanga-gaunchha',
  (SELECT id FROM "artist" WHERE slug = 'lil-tecca'),
  '<p>पात पहाड हरू संग गाउँछ</p><p>[F] [Am] [F] [E]</p><p>Lyrics coming soon...</p><p>[F] [Am] [F] [E]</p>',
  2020,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान रंग',
  'bihan-rang',
  (SELECT id FROM "artist" WHERE slug = 'chencho-corleone'),
  '<p>बिहान रंग</p><p>[Em] [E] [Bb] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [E] [Bb] [Dm]</p>',
  2005,
  'Em',
  5,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा र',
  'aankha-ra',
  (SELECT id FROM "artist" WHERE slug = 'chencho-corleone'),
  '<p>आँखा र</p><p>[F#m] [Em] [C] [E]</p><p>Lyrics coming soon...</p><p>[F#m] [Em] [C] [E]</p>',
  2003,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना अघि',
  'samjhana-aghi',
  (SELECT id FROM "artist" WHERE slug = 'nepathya'),
  '<p>सम्झना अघि</p><p>[F#m] [Am] [C] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [Am] [C] [F]</p>',
  2006,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो प्रेम जिन्दगी आयो',
  'aago-prem-jindagi-aayo',
  (SELECT id FROM "artist" WHERE slug = 'nepathya'),
  '<p>आगो प्रेम जिन्दगी आयो</p><p>[Em] [D] [F#m] [D]</p><p>Lyrics coming soon...</p><p>[Em] [D] [F#m] [D]</p>',
  1992,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड मै देखि आँखा',
  'bichhod-mai-dekhi-aankha',
  (SELECT id FROM "artist" WHERE slug = 'nabin-bhattarai'),
  '<p>बिछोड मै देखि आँखा</p><p>[C] [F] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [F] [E] [Bb]</p>',
  1992,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा पनि',
  'hawa-pani',
  (SELECT id FROM "artist" WHERE slug = 'nabin-bhattarai'),
  '<p>हावा पनि</p><p>[E] [E] [G] [F#m]</p><p>Lyrics coming soon...</p><p>[E] [E] [G] [F#m]</p>',
  2004,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड अघि',
  'pahad-aghi',
  (SELECT id FROM "artist" WHERE slug = 'axix'),
  '<p>पहाड अघि</p><p>[Bb] [F] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [F#m] [Am]</p>',
  2017,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ र',
  'sanjh-ra',
  (SELECT id FROM "artist" WHERE slug = 'axix'),
  '<p>साँझ र</p><p>[D] [D] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[D] [D] [F#m] [F]</p>',
  2021,
  'Em',
  1,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो ज्ञान नै के',
  'mero-gyan-nai-ke',
  (SELECT id FROM "artist" WHERE slug = 'sabin-rai'),
  '<p>मेरो ज्ञान नै के</p><p>[F#m] [F] [E] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [E] [Am]</p>',
  1994,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो चाँदनी र सज्छ',
  'aago-chandani-ra-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'sabin-rai'),
  '<p>आगो चाँदनी र सज्छ</p><p>[Em] [E] [D] [D]</p><p>Lyrics coming soon...</p><p>[Em] [E] [D] [D]</p>',
  2012,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा तिर तिर',
  'yatra-tira-tira',
  (SELECT id FROM "artist" WHERE slug = 'naren-limbu'),
  '<p>यात्रा तिर तिर</p><p>[Dm] [Bb] [C] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [C] [G]</p>',
  2017,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा यात्रा हरू नाच्छ',
  'katha-yatra-haru-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'naren-limbu'),
  '<p>कथा यात्रा हरू नाच्छ</p><p>[G] [F#m] [F] [E]</p><p>Lyrics coming soon...</p><p>[G] [F#m] [F] [E]</p>',
  2006,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी आशा',
  'sathi-asha',
  (SELECT id FROM "artist" WHERE slug = 'mongolian-heart'),
  '<p>साथी आशा</p><p>[C] [F] [C] [F]</p><p>Lyrics coming soon...</p><p>[C] [F] [C] [F]</p>',
  2012,
  'A',
  5,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा देखि माया पछि',
  'bharosa-dekhi-maya-pachi',
  (SELECT id FROM "artist" WHERE slug = 'mongolian-heart'),
  '<p>भरोसा देखि माया पछि</p><p>[F] [E] [Em] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [E] [Em] [F#m]</p>',
  2009,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान हरू',
  'muskan-haru',
  (SELECT id FROM "artist" WHERE slug = 'bro-sis'),
  '<p>मुस्कान हरू</p><p>[G] [C] [F] [D]</p><p>Lyrics coming soon...</p><p>[G] [C] [F] [D]</p>',
  2006,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान उडान फूल',
  'udan-udan-phool',
  (SELECT id FROM "artist" WHERE slug = 'bro-sis'),
  '<p>उडान उडान फूल</p><p>[D] [F#m] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [F#m] [Am]</p>',
  1993,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया देखि भित्र रंग',
  'maya-dekhi-bhitra-rang',
  (SELECT id FROM "artist" WHERE slug = 'kandara'),
  '<p>माया देखि भित्र रंग</p><p>[F#m] [Am] [Em] [D]</p><p>Lyrics coming soon...</p><p>[F#m] [Am] [Em] [D]</p>',
  2021,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा रात र शान्ति बिझ्छ',
  'aankha-raat-ra-shanti-bijhchha',
  (SELECT id FROM "artist" WHERE slug = 'kandara'),
  '<p>आँखा रात र शान्ति बिझ्छ</p><p>[Am] [Dm] [E] [D]</p><p>Lyrics coming soon...</p><p>[Am] [Dm] [E] [D]</p>',
  2008,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो लाई बिना र',
  'haaso-lai-bina-ra',
  (SELECT id FROM "artist" WHERE slug = 'deep-shrestha'),
  '<p>हाँसो लाई बिना र</p><p>[C] [F] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [F] [D] [Bb]</p>',
  2007,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा नै माथि तिर',
  'katha-nai-mathi-tira',
  (SELECT id FROM "artist" WHERE slug = 'deep-shrestha'),
  '<p>कथा नै माथि तिर</p><p>[E] [F] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[E] [F] [D] [Dm]</p>',
  1999,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून सम्म हिमाल',
  'joon-samma-himal',
  (SELECT id FROM "artist" WHERE slug = '1974'),
  '<p>जून सम्म हिमाल</p><p>[Bb] [F#m] [G] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [F#m] [G] [G]</p>',
  1993,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा प्रेम',
  'bharosa-prem',
  (SELECT id FROM "artist" WHERE slug = '1974'),
  '<p>भरोसा प्रेम</p><p>[Am] [Dm] [Em] [Em]</p><p>Lyrics coming soon...</p><p>[Am] [Dm] [Em] [Em]</p>',
  2018,
  'Em',
  5,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो मै पछि',
  'haaso-mai-pachi',
  (SELECT id FROM "artist" WHERE slug = 'sugam-pokhrel'),
  '<p>हाँसो मै पछि</p><p>[E] [F] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[E] [F] [F#m] [F]</p>',
  2006,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड हृदय बिना',
  'bichhod-hridaya-bina',
  (SELECT id FROM "artist" WHERE slug = 'sugam-pokhrel'),
  '<p>बिछोड हृदय बिना</p><p>[F] [F#m] [E] [C]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [E] [C]</p>',
  1999,
  'Em',
  4,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति देखि लाई',
  'shanti-dekhi-lai',
  (SELECT id FROM "artist" WHERE slug = 'sanjeep-pradhan'),
  '<p>शान्ति देखि लाई</p><p>[F] [G] [Em] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [G] [Em] [F#m]</p>',
  2006,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ देखि के आकाश गयो',
  'sanjh-dekhi-ke-akash-gayo',
  (SELECT id FROM "artist" WHERE slug = 'sanjeep-pradhan'),
  '<p>साँझ देखि के आकाश गयो</p><p>[Em] [Em] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[Em] [Em] [Dm] [F]</p>',
  2010,
  'E',
  5,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल यात्रा गीत हाँसो',
  'badal-yatra-geet-haaso',
  (SELECT id FROM "artist" WHERE slug = 'anil-singh'),
  '<p>बादल यात्रा गीत हाँसो</p><p>[G] [Dm] [Em] [Em]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Em] [Em]</p>',
  2005,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात संग हरू फुल्छ',
  'raat-sanga-haru-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'anil-singh'),
  '<p>रात संग हरू फुल्छ</p><p>[E] [Dm] [G] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [G] [Bb]</p>',
  2008,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा दिन',
  'katha-din',
  (SELECT id FROM "artist" WHERE slug = 'suresh-kumar'),
  '<p>कथा दिन</p><p>[C] [C] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[C] [C] [Bb] [Am]</p>',
  2016,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग जून दिन हिमाल',
  'rang-joon-din-himal',
  (SELECT id FROM "artist" WHERE slug = 'suresh-kumar'),
  '<p>रंग जून दिन हिमाल</p><p>[F] [F#m] [E] [G]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [E] [G]</p>',
  2015,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी हिमाल',
  'nadi-himal',
  (SELECT id FROM "artist" WHERE slug = 'sunil-bardewa'),
  '<p>नदी हिमाल</p><p>[G] [Dm] [F] [E]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [F] [E]</p>',
  2023,
  'D',
  4,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन तिर बिहान',
  'dhun-tira-bihan',
  (SELECT id FROM "artist" WHERE slug = 'sunil-bardewa'),
  '<p>धुन तिर बिहान</p><p>[G] [Em] [Am] [Am]</p><p>Lyrics coming soon...</p><p>[G] [Em] [Am] [Am]</p>',
  2011,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम अघि मुटु को',
  'prem-aghi-mutu-ko',
  (SELECT id FROM "artist" WHERE slug = '3-doors-down'),
  '<p>प्रेम अघि मुटु को</p><p>[F#m] [D] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [E] [Bb]</p>',
  2004,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा हावा',
  'yatra-hawa',
  (SELECT id FROM "artist" WHERE slug = '3-doors-down'),
  '<p>यात्रा हावा</p><p>[D] [E] [Am] [G]</p><p>Lyrics coming soon...</p><p>[D] [E] [Am] [G]</p>',
  2004,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो भित्र तिमी पछि हिँड्छ',
  'hamro-bhitra-timi-pachi-hindchha',
  (SELECT id FROM "artist" WHERE slug = 'karma-band'),
  '<p>हाम्रो भित्र तिमी पछि हिँड्छ</p><p>[Dm] [E] [Bb] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [E] [Bb] [Dm]</p>',
  1995,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना जून',
  'samjhana-joon',
  (SELECT id FROM "artist" WHERE slug = 'karma-band'),
  '<p>सम्झना जून</p><p>[Am] [Em] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [Am] [F#m]</p>',
  2023,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा रंग',
  'hawa-rang',
  (SELECT id FROM "artist" WHERE slug = 'yogeshwor-amatya'),
  '<p>हावा रंग</p><p>[Bb] [Dm] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [Bb] [G]</p>',
  1997,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा माथि मुटु',
  'hawa-mathi-mutu',
  (SELECT id FROM "artist" WHERE slug = 'yogeshwor-amatya'),
  '<p>हावा माथि मुटु</p><p>[Dm] [F] [Em] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [Em] [G]</p>',
  1990,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान शक्ति जिन्दगी',
  'udan-shakti-jindagi',
  (SELECT id FROM "artist" WHERE slug = 'swastik-the-band'),
  '<p>उडान शक्ति जिन्दगी</p><p>[Dm] [G] [D] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [D] [F]</p>',
  2020,
  'E',
  2,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम र सपना बाटो',
  'prem-ra-sapana-bato',
  (SELECT id FROM "artist" WHERE slug = 'swastik-the-band'),
  '<p>प्रेम र सपना बाटो</p><p>[Am] [F] [Em] [G]</p><p>Lyrics coming soon...</p><p>[Am] [F] [Em] [G]</p>',
  2011,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय आकाश फुल्छ',
  'hridaya-akash-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'neha-kakkar'),
  '<p>हृदय आकाश फुल्छ</p><p>[Em] [Em] [Bb] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [Em] [Bb] [Dm]</p>',
  1995,
  'G',
  2,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान पनि बग्छ',
  'bihan-pani-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'neha-kakkar'),
  '<p>बिहान पनि बग्छ</p><p>[Bb] [Dm] [F#m] [Dm]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [F#m] [Dm]</p>',
  1998,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी शक्ति',
  'chandani-shakti',
  (SELECT id FROM "artist" WHERE slug = 'narayan-gopal'),
  '<p>चाँदनी शक्ति</p><p>[G] [Dm] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [F#m] [C]</p>',
  2001,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो गीत सत्य',
  'aago-geet-satya',
  (SELECT id FROM "artist" WHERE slug = 'narayan-gopal'),
  '<p>आगो गीत सत्य</p><p>[E] [Am] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[E] [Am] [Bb] [Am]</p>',
  2016,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा हाँसो',
  'bharosa-haaso',
  (SELECT id FROM "artist" WHERE slug = 'bijay-gurung'),
  '<p>भरोसा हाँसो</p><p>[D] [Em] [Dm] [Em]</p><p>Lyrics coming soon...</p><p>[D] [Em] [Dm] [Em]</p>',
  2014,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल जून',
  'phool-joon',
  (SELECT id FROM "artist" WHERE slug = 'bijay-gurung'),
  '<p>फूल जून</p><p>[Dm] [G] [F#m] [E]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [F#m] [E]</p>',
  2002,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग बादल जून पहाड',
  'rang-badal-joon-pahad',
  (SELECT id FROM "artist" WHERE slug = 'sanam'),
  '<p>रंग बादल जून पहाड</p><p>[Am] [Am] [G] [D]</p><p>Lyrics coming soon...</p><p>[Am] [Am] [G] [D]</p>',
  2024,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग सम्म',
  'rang-samma',
  (SELECT id FROM "artist" WHERE slug = 'sanam'),
  '<p>रंग सम्म</p><p>[F] [Bb] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [F#m] [F#m]</p>',
  2010,
  'E',
  1,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा हावा आयो',
  'pariksha-hawa-aayo',
  (SELECT id FROM "artist" WHERE slug = 'dhiraj-rai'),
  '<p>परीक्षा हावा आयो</p><p>[Bb] [Am] [G] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [G] [Am]</p>',
  2003,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान को सुक्छ',
  'muskan-ko-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'dhiraj-rai'),
  '<p>मुस्कान को सुक्छ</p><p>[G] [Dm] [Bb] [F#m]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Bb] [F#m]</p>',
  2022,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया लाई तिर कथा बढ्छ',
  'maya-lai-tira-katha-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'sanjay-shrestha'),
  '<p>माया लाई तिर कथा बढ्छ</p><p>[Dm] [Dm] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [F#m] [C]</p>',
  2001,
  'E',
  2,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना तिमी साथी हरू हिँड्छ',
  'sapana-timi-sathi-haru-hindchha',
  (SELECT id FROM "artist" WHERE slug = 'sanjay-shrestha'),
  '<p>सपना तिमी साथी हरू हिँड्छ</p><p>[Em] [D] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[Em] [D] [Bb] [C]</p>',
  2001,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना हाम्रो नाच्छ',
  'samjhana-hamro-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'the-edge-band'),
  '<p>सम्झना हाम्रो नाच्छ</p><p>[D] [Am] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[D] [Am] [D] [Bb]</p>',
  2014,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान भरोसा भित्र धुन',
  'bihan-bharosa-bhitra-dhun',
  (SELECT id FROM "artist" WHERE slug = 'the-edge-band'),
  '<p>बिहान भरोसा भित्र धुन</p><p>[Dm] [F#m] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [F#m] [Bb] [C]</p>',
  2006,
  'Dm',
  3,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति तिम्रो पनि',
  'shakti-timro-pani',
  (SELECT id FROM "artist" WHERE slug = 'adrian-pradhan'),
  '<p>शक्ति तिम्रो पनि</p><p>[E] [E] [C] [Am]</p><p>Lyrics coming soon...</p><p>[E] [E] [C] [Am]</p>',
  1997,
  'D',
  2,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल पनि',
  'himal-pani',
  (SELECT id FROM "artist" WHERE slug = 'adrian-pradhan'),
  '<p>हिमाल पनि</p><p>[Em] [Am] [C] [Am]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [C] [Am]</p>',
  2013,
  'E',
  1,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो हाम्रो मेरो',
  'hamro-hamro-mero',
  (SELECT id FROM "artist" WHERE slug = 'mingma-sherpa'),
  '<p>हाम्रो हाम्रो मेरो</p><p>[F] [Bb] [E] [G]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [E] [G]</p>',
  2006,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम हृदय पात',
  'prem-hridaya-paat',
  (SELECT id FROM "artist" WHERE slug = 'mingma-sherpa'),
  '<p>प्रेम हृदय पात</p><p>[F#m] [Em] [C] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [Em] [C] [F#m]</p>',
  2022,
  'Am',
  5,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो जस्तो बिहान याद',
  'mero-jasto-bihan-yaad',
  (SELECT id FROM "artist" WHERE slug = 'sukmit-gurung'),
  '<p>मेरो जस्तो बिहान याद</p><p>[C] [F] [G] [Em]</p><p>Lyrics coming soon...</p><p>[C] [F] [G] [Em]</p>',
  2009,
  'E',
  3,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो जस्तो शक्ति',
  'hamro-jasto-shakti',
  (SELECT id FROM "artist" WHERE slug = 'sukmit-gurung'),
  '<p>हाम्रो जस्तो शक्ति</p><p>[F#m] [D] [E] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [E] [F#m]</p>',
  2021,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा नै',
  'katha-nai',
  (SELECT id FROM "artist" WHERE slug = 'prakash-shrestha'),
  '<p>कथा नै</p><p>[Dm] [Bb] [E] [Am]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [E] [Am]</p>',
  1996,
  'Am',
  2,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो रंग पहाड',
  'hamro-rang-pahad',
  (SELECT id FROM "artist" WHERE slug = 'prakash-shrestha'),
  '<p>हाम्रो रंग पहाड</p><p>[G] [D] [Bb] [F#m]</p><p>Lyrics coming soon...</p><p>[G] [D] [Bb] [F#m]</p>',
  2012,
  'A',
  4,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी आशा',
  'timi-asha',
  (SELECT id FROM "artist" WHERE slug = 'mukti-and-revival'),
  '<p>तिमी आशा</p><p>[Am] [C] [Em] [F#m]</p><p>Lyrics coming soon...</p><p>[Am] [C] [Em] [F#m]</p>',
  2000,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात गीत आशा गीत गयो',
  'paat-geet-asha-geet-gayo',
  (SELECT id FROM "artist" WHERE slug = 'mukti-and-revival'),
  '<p>पात गीत आशा गीत गयो</p><p>[F] [Em] [G] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [Em] [G] [F#m]</p>',
  2005,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो सम्म सम्म',
  'hamro-samma-samma',
  (SELECT id FROM "artist" WHERE slug = 'bryan-adams'),
  '<p>हाम्रो सम्म सम्म</p><p>[C] [E] [C] [E]</p><p>Lyrics coming soon...</p><p>[C] [E] [C] [E]</p>',
  1992,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति दिन',
  'shanti-din',
  (SELECT id FROM "artist" WHERE slug = 'bryan-adams'),
  '<p>शान्ति दिन</p><p>[F#m] [Em] [Dm] [Dm]</p><p>Lyrics coming soon...</p><p>[F#m] [Em] [Dm] [Dm]</p>',
  2009,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा बिना साथी सम्झना बल्छ',
  'asha-bina-sathi-samjhana-balchha',
  (SELECT id FROM "artist" WHERE slug = 'dibya-subba'),
  '<p>आशा बिना साथी सम्झना बल्छ</p><p>[C] [Em] [E] [E]</p><p>Lyrics coming soon...</p><p>[C] [Em] [E] [E]</p>',
  1995,
  'Am',
  2,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान माथि',
  'udan-mathi',
  (SELECT id FROM "artist" WHERE slug = 'dibya-subba'),
  '<p>उडान माथि</p><p>[F#m] [Em] [E] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [Em] [E] [Am]</p>',
  1993,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो भित्र फूल',
  'bato-bhitra-phool',
  (SELECT id FROM "artist" WHERE slug = 'anitta'),
  '<p>बाटो भित्र फूल</p><p>[Dm] [G] [F] [D]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [F] [D]</p>',
  2003,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा गीत ले',
  'asha-geet-le',
  (SELECT id FROM "artist" WHERE slug = 'anitta'),
  '<p>आशा गीत ले</p><p>[D] [Em] [Am] [F]</p><p>Lyrics coming soon...</p><p>[D] [Em] [Am] [F]</p>',
  2000,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी हाँसो',
  'nadi-haaso',
  (SELECT id FROM "artist" WHERE slug = 'lil-yachty'),
  '<p>नदी हाँसो</p><p>[Bb] [G] [F] [D]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [F] [D]</p>',
  2003,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान हिमाल साथी लाई',
  'bihan-himal-sathi-lai',
  (SELECT id FROM "artist" WHERE slug = 'lil-yachty'),
  '<p>बिहान हिमाल साथी लाई</p><p>[F] [F] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[F] [F] [D] [Dm]</p>',
  2012,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल पनि',
  'himal-pani-165-0',
  (SELECT id FROM "artist" WHERE slug = 'wesley-safad-o'),
  '<p>हिमाल पनि</p><p>[F] [Bb] [E] [Em]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [E] [Em]</p>',
  2013,
  'D',
  5,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा हरू झर्छ',
  'pariksha-haru-jharchha',
  (SELECT id FROM "artist" WHERE slug = 'wesley-safad-o'),
  '<p>परीक्षा हरू झर्छ</p><p>[D] [Bb] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [F#m] [Bb]</p>',
  2021,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी ज्ञान भित्र के',
  'jindagi-gyan-bhitra-ke',
  (SELECT id FROM "artist" WHERE slug = 'christina-aguilera'),
  '<p>जिन्दगी ज्ञान भित्र के</p><p>[Bb] [F] [D] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [D] [F]</p>',
  2013,
  'D',
  1,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून जस्तो पनि',
  'joon-jasto-pani',
  (SELECT id FROM "artist" WHERE slug = 'christina-aguilera'),
  '<p>जून जस्तो पनि</p><p>[E] [F] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[E] [F] [Dm] [D]</p>',
  2003,
  'G',
  5,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो माथि आकाश भित्र',
  'mero-mathi-akash-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'gorillaz'),
  '<p>मेरो माथि आकाश भित्र</p><p>[C] [F#m] [G] [Dm]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [G] [Dm]</p>',
  2000,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल आकाश बिना भित्र',
  'himal-akash-bina-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'gorillaz'),
  '<p>हिमाल आकाश बिना भित्र</p><p>[Dm] [G] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [Dm] [F]</p>',
  2015,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत फूल ज्ञान जस्तो',
  'geet-phool-gyan-jasto',
  (SELECT id FROM "artist" WHERE slug = 'ne-yo'),
  '<p>गीत फूल ज्ञान जस्तो</p><p>[E] [F] [F#m] [E]</p><p>Lyrics coming soon...</p><p>[E] [F] [F#m] [E]</p>',
  2019,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल हरू गाउँछ',
  'badal-haru-gaunchha',
  (SELECT id FROM "artist" WHERE slug = 'ne-yo'),
  '<p>बादल हरू गाउँछ</p><p>[Am] [F] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[Am] [F] [Bb] [Am]</p>',
  2003,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी मेरो नदी हिमाल आयो',
  'jindagi-mero-nadi-himal-aayo',
  (SELECT id FROM "artist" WHERE slug = 'jeremy-zucker'),
  '<p>जिन्दगी मेरो नदी हिमाल आयो</p><p>[Bb] [Bb] [F#m] [D]</p><p>Lyrics coming soon...</p><p>[Bb] [Bb] [F#m] [D]</p>',
  2012,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी संग अघि',
  'pani-sanga-aghi',
  (SELECT id FROM "artist" WHERE slug = 'jeremy-zucker'),
  '<p>पानी संग अघि</p><p>[Bb] [Bb] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[Bb] [Bb] [E] [Bb]</p>',
  2000,
  'Am',
  3,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी तिर हाँस्छ',
  'chandani-tira-haschha',
  (SELECT id FROM "artist" WHERE slug = 'david-bowie'),
  '<p>चाँदनी तिर हाँस्छ</p><p>[Am] [E] [D] [D]</p><p>Lyrics coming soon...</p><p>[Am] [E] [D] [D]</p>',
  1993,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी देखि',
  'pani-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'david-bowie'),
  '<p>पानी देखि</p><p>[Am] [F#m] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[Am] [F#m] [F#m] [Am]</p>',
  2016,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा आकाश हरू',
  'yatra-akash-haru',
  (SELECT id FROM "artist" WHERE slug = 'zara-larsson'),
  '<p>यात्रा आकाश हरू</p><p>[Bb] [Am] [C] [Bb]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [C] [Bb]</p>',
  2001,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा के मा नै',
  'hawa-ke-ma-nai',
  (SELECT id FROM "artist" WHERE slug = 'zara-larsson'),
  '<p>हावा के मा नै</p><p>[Am] [Am] [Em] [E]</p><p>Lyrics coming soon...</p><p>[Am] [Am] [Em] [E]</p>',
  2016,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन उडान',
  'din-udan',
  (SELECT id FROM "artist" WHERE slug = 'om-mane-peme'),
  '<p>दिन उडान</p><p>[C] [E] [D] [D]</p><p>Lyrics coming soon...</p><p>[C] [E] [D] [D]</p>',
  2009,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी मा',
  'nadi-ma',
  (SELECT id FROM "artist" WHERE slug = 'om-mane-peme'),
  '<p>नदी मा</p><p>[F] [Em] [G] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [Em] [G] [F#m]</p>',
  2020,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय तिर गीत सम्झना',
  'hridaya-tira-geet-samjhana',
  (SELECT id FROM "artist" WHERE slug = 'belle-and-sebastian'),
  '<p>हृदय तिर गीत सम्झना</p><p>[Dm] [Am] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [Am] [F#m] [C]</p>',
  2020,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो मै अघि मेरो',
  'hamro-mai-aghi-mero',
  (SELECT id FROM "artist" WHERE slug = 'belle-and-sebastian'),
  '<p>हाम्रो मै अघि मेरो</p><p>[E] [Bb] [Em] [D]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [Em] [D]</p>',
  2022,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो जिन्दगी दिन दिन',
  'haaso-jindagi-din-din',
  (SELECT id FROM "artist" WHERE slug = 'eddie-vedder'),
  '<p>हाँसो जिन्दगी दिन दिन</p><p>[F#m] [D] [E] [E]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [E] [E]</p>',
  2017,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान माया नदी माया',
  'gyan-maya-nadi-maya',
  (SELECT id FROM "artist" WHERE slug = 'eddie-vedder'),
  '<p>ज्ञान माया नदी माया</p><p>[Em] [F#m] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[Em] [F#m] [Dm] [D]</p>',
  2007,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा बिछोड',
  'pariksha-bichhod',
  (SELECT id FROM "artist" WHERE slug = 'sonu-nigam'),
  '<p>परीक्षा बिछोड</p><p>[Bb] [Am] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [F] [F#m]</p>',
  1991,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन गीत',
  'dhun-geet',
  (SELECT id FROM "artist" WHERE slug = 'sonu-nigam'),
  '<p>धुन गीत</p><p>[G] [Dm] [E] [F]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [E] [F]</p>',
  1996,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी ले',
  'pani-le',
  (SELECT id FROM "artist" WHERE slug = 'rihanna'),
  '<p>पानी ले</p><p>[Am] [Bb] [Em] [Dm]</p><p>Lyrics coming soon...</p><p>[Am] [Bb] [Em] [Dm]</p>',
  1992,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान आशा आकाश आयो',
  'gyan-asha-akash-aayo',
  (SELECT id FROM "artist" WHERE slug = 'rihanna'),
  '<p>ज्ञान आशा आकाश आयो</p><p>[Am] [E] [D] [G]</p><p>Lyrics coming soon...</p><p>[Am] [E] [D] [G]</p>',
  1997,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो पहाड',
  'mero-pahad',
  (SELECT id FROM "artist" WHERE slug = 'lil-tjay'),
  '<p>मेरो पहाड</p><p>[Dm] [Bb] [E] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [E] [C]</p>',
  2017,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी रंग ले ले',
  'sathi-rang-le-le',
  (SELECT id FROM "artist" WHERE slug = 'lil-tjay'),
  '<p>साथी रंग ले ले</p><p>[G] [C] [Em] [Em]</p><p>Lyrics coming soon...</p><p>[G] [C] [Em] [Em]</p>',
  1992,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा को र',
  'hawa-ko-ra',
  (SELECT id FROM "artist" WHERE slug = 'doja-cat'),
  '<p>हावा को र</p><p>[G] [Bb] [E] [Em]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [E] [Em]</p>',
  2007,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा पछि गयो',
  'bharosa-pachi-gayo',
  (SELECT id FROM "artist" WHERE slug = 'doja-cat'),
  '<p>भरोसा पछि गयो</p><p>[E] [E] [Em] [F#m]</p><p>Lyrics coming soon...</p><p>[E] [E] [Em] [F#m]</p>',
  2018,
  'Am',
  4,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा र के आयो',
  'katha-ra-ke-aayo',
  (SELECT id FROM "artist" WHERE slug = 'nicki-minaj'),
  '<p>कथा र के आयो</p><p>[G] [Em] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[G] [Em] [Bb] [Am]</p>',
  1999,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो बाटो',
  'haaso-bato',
  (SELECT id FROM "artist" WHERE slug = 'nicki-minaj'),
  '<p>हाँसो बाटो</p><p>[C] [Em] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [Em] [Dm] [Bb]</p>',
  2022,
  'Dm',
  5,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो बिना के तिर बिस्तर्छ',
  'hamro-bina-ke-tira-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'one-direction'),
  '<p>हाम्रो बिना के तिर बिस्तर्छ</p><p>[D] [D] [D] [Em]</p><p>Lyrics coming soon...</p><p>[D] [D] [D] [Em]</p>',
  2008,
  'C',
  5,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ यात्रा',
  'gaun-yatra',
  (SELECT id FROM "artist" WHERE slug = 'one-direction'),
  '<p>गाउँ यात्रा</p><p>[E] [C] [G] [Em]</p><p>Lyrics coming soon...</p><p>[E] [C] [G] [Em]</p>',
  1992,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर अघि भित्र',
  'sahar-aghi-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'lil-nas-x'),
  '<p>सहर अघि भित्र</p><p>[Em] [C] [Dm] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [C] [Dm] [Dm]</p>',
  2019,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो आँखा बिना पग्लिन्छ',
  'bato-aankha-bina-paglindchha',
  (SELECT id FROM "artist" WHERE slug = 'lil-nas-x'),
  '<p>बाटो आँखा बिना पग्लिन्छ</p><p>[Bb] [F] [Em] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [Em] [G]</p>',
  2010,
  'Am',
  5,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल बिना उड्छ',
  'phool-bina-udchha',
  (SELECT id FROM "artist" WHERE slug = 'kendrick-lamar'),
  '<p>फूल बिना उड्छ</p><p>[Dm] [F] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [D] [Bb]</p>',
  2005,
  'F',
  2,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात हिमाल मन',
  'raat-himal-man',
  (SELECT id FROM "artist" WHERE slug = 'kendrick-lamar'),
  '<p>रात हिमाल मन</p><p>[Em] [G] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[Em] [G] [Am] [F#m]</p>',
  2015,
  'D',
  4,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी कथा',
  'nadi-katha',
  (SELECT id FROM "artist" WHERE slug = 'selena-gomez'),
  '<p>नदी कथा</p><p>[Dm] [Dm] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [Am] [Dm]</p>',
  2011,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी सम्म मुटु माथि',
  'nadi-samma-mutu-mathi',
  (SELECT id FROM "artist" WHERE slug = 'selena-gomez'),
  '<p>नदी सम्म मुटु माथि</p><p>[F] [Am] [D] [E]</p><p>Lyrics coming soon...</p><p>[F] [Am] [D] [E]</p>',
  2022,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी पानी याद',
  'chandani-pani-yaad',
  (SELECT id FROM "artist" WHERE slug = 'halsey'),
  '<p>चाँदनी पानी याद</p><p>[D] [G] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[D] [G] [F#m] [Em]</p>',
  2017,
  'A',
  1,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो कथा',
  'bato-katha',
  (SELECT id FROM "artist" WHERE slug = 'halsey'),
  '<p>बाटो कथा</p><p>[Bb] [G] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [Dm] [F]</p>',
  2024,
  'D',
  5,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी आगो आगो देखि',
  'nadi-aago-aago-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'sza'),
  '<p>नदी आगो आगो देखि</p><p>[F#m] [Bb] [Bb] [Bb]</p><p>Lyrics coming soon...</p><p>[F#m] [Bb] [Bb] [Bb]</p>',
  2016,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना लाई जस्तो झर्छ',
  'sapana-lai-jasto-jharchha',
  (SELECT id FROM "artist" WHERE slug = 'sza'),
  '<p>सपना लाई जस्तो झर्छ</p><p>[F] [Bb] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [F#m] [F]</p>',
  2003,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ को जस्तो नाच्छ',
  'sanjh-ko-jasto-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'marshmello'),
  '<p>साँझ को जस्तो नाच्छ</p><p>[F#m] [Dm] [D] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [D] [C]</p>',
  2018,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी मा फूल याद',
  'chandani-ma-phool-yaad',
  (SELECT id FROM "artist" WHERE slug = 'marshmello'),
  '<p>चाँदनी मा फूल याद</p><p>[Dm] [Am] [D] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [Am] [D] [Em]</p>',
  2002,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी भित्र हिमाल भित्र',
  'chandani-bhitra-himal-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'roddy-ricch'),
  '<p>चाँदनी भित्र हिमाल भित्र</p><p>[G] [D] [C] [C]</p><p>Lyrics coming soon...</p><p>[G] [D] [C] [C]</p>',
  2022,
  'Am',
  2,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना जस्तो',
  'sapana-jasto',
  (SELECT id FROM "artist" WHERE slug = 'roddy-ricch'),
  '<p>सपना जस्तो</p><p>[Am] [D] [F] [E]</p><p>Lyrics coming soon...</p><p>[Am] [D] [F] [E]</p>',
  2004,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम माथि सम्म',
  'prem-mathi-samma',
  (SELECT id FROM "artist" WHERE slug = 'jason-derulo'),
  '<p>प्रेम माथि सम्म</p><p>[D] [Em] [Am] [C]</p><p>Lyrics coming soon...</p><p>[D] [Em] [Am] [C]</p>',
  2020,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो हरू सम्म तिम्रो उड्छ',
  'haaso-haru-samma-timro-udchha',
  (SELECT id FROM "artist" WHERE slug = 'jason-derulo'),
  '<p>हाँसो हरू सम्म तिम्रो उड्छ</p><p>[D] [D] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[D] [D] [Dm] [D]</p>',
  2017,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो शक्ति बिझ्छ',
  'hamro-shakti-bijhchha',
  (SELECT id FROM "artist" WHERE slug = 'sam-smith'),
  '<p>हाम्रो शक्ति बिझ्छ</p><p>[D] [E] [Em] [G]</p><p>Lyrics coming soon...</p><p>[D] [E] [Em] [G]</p>',
  2009,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा ले',
  'katha-le',
  (SELECT id FROM "artist" WHERE slug = 'sam-smith'),
  '<p>कथा ले</p><p>[G] [Bb] [G] [G]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [G] [G]</p>',
  2011,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात सम्म आयो',
  'paat-samma-aayo',
  (SELECT id FROM "artist" WHERE slug = 'mac-miller'),
  '<p>पात सम्म आयो</p><p>[D] [Dm] [G] [C]</p><p>Lyrics coming soon...</p><p>[D] [Dm] [G] [C]</p>',
  1992,
  'E',
  5,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना देखि',
  'samjhana-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'mac-miller'),
  '<p>सम्झना देखि</p><p>[Dm] [F#m] [E] [Am]</p><p>Lyrics coming soon...</p><p>[Dm] [F#m] [E] [Am]</p>',
  1998,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन तिर बल्छ',
  'man-tira-balchha',
  (SELECT id FROM "artist" WHERE slug = 'arctic-monkeys'),
  '<p>मन तिर बल्छ</p><p>[Em] [E] [C] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [E] [C] [Dm]</p>',
  2000,
  'C',
  1,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा जस्तो',
  'pariksha-jasto',
  (SELECT id FROM "artist" WHERE slug = 'arctic-monkeys'),
  '<p>परीक्षा जस्तो</p><p>[F] [Em] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[F] [Em] [Dm] [G]</p>',
  1996,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग र नदी आयो',
  'rang-ra-nadi-aayo',
  (SELECT id FROM "artist" WHERE slug = 'frank-ocean'),
  '<p>रंग र नदी आयो</p><p>[Bb] [F] [F#m] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [F#m] [G]</p>',
  2009,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो पछि जस्तो नै रुन्छ',
  'hamro-pachi-jasto-nai-runchha',
  (SELECT id FROM "artist" WHERE slug = 'frank-ocean'),
  '<p>हाम्रो पछि जस्तो नै रुन्छ</p><p>[E] [Em] [D] [E]</p><p>Lyrics coming soon...</p><p>[E] [Em] [D] [E]</p>',
  2000,
  'Am',
  3,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात रात भित्र मा गयो',
  'paat-raat-bhitra-ma-gayo',
  (SELECT id FROM "artist" WHERE slug = 'os-bar-es-da-pisadinha'),
  '<p>पात रात भित्र मा गयो</p><p>[F#m] [F] [G] [D]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [G] [D]</p>',
  1996,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया साथी ले पनि',
  'maya-sathi-le-pani',
  (SELECT id FROM "artist" WHERE slug = 'os-bar-es-da-pisadinha'),
  '<p>माया साथी ले पनि</p><p>[G] [Bb] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [F#m] [F]</p>',
  2010,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो नै बढ्छ',
  'mero-nai-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'lewis-capaldi'),
  '<p>मेरो नै बढ्छ</p><p>[F] [Em] [Dm] [Am]</p><p>Lyrics coming soon...</p><p>[F] [Em] [Dm] [Am]</p>',
  2014,
  'Bb',
  5,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा पछि सत्य हिँड्छ',
  'aankha-pachi-satya-hindchha',
  (SELECT id FROM "artist" WHERE slug = 'lewis-capaldi'),
  '<p>आँखा पछि सत्य हिँड्छ</p><p>[F] [F#m] [C] [D]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [C] [D]</p>',
  1996,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन उडान मा माथि',
  'dhun-udan-ma-mathi',
  (SELECT id FROM "artist" WHERE slug = 'twenty-one-pilots'),
  '<p>धुन उडान मा माथि</p><p>[F] [Am] [Bb] [Em]</p><p>Lyrics coming soon...</p><p>[F] [Am] [Bb] [Em]</p>',
  2011,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान तिम्रो धुन',
  'muskan-timro-dhun',
  (SELECT id FROM "artist" WHERE slug = 'twenty-one-pilots'),
  '<p>मुस्कान तिम्रो धुन</p><p>[D] [D] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[D] [D] [F#m] [Am]</p>',
  1993,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य भित्र भित्र',
  'satya-bhitra-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'a-ap-rocky'),
  '<p>सत्य भित्र भित्र</p><p>[Dm] [Em] [C] [E]</p><p>Lyrics coming soon...</p><p>[Dm] [Em] [C] [E]</p>',
  2005,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना गाउँ',
  'samjhana-gaun',
  (SELECT id FROM "artist" WHERE slug = 'a-ap-rocky'),
  '<p>सम्झना गाउँ</p><p>[E] [C] [Em] [D]</p><p>Lyrics coming soon...</p><p>[E] [C] [Em] [D]</p>',
  2018,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो सपना गयो',
  'hamro-sapana-gayo',
  (SELECT id FROM "artist" WHERE slug = 'black-eyed-peas'),
  '<p>हाम्रो सपना गयो</p><p>[F#m] [G] [E] [D]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [E] [D]</p>',
  1992,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा रात बोल्छ',
  'aankha-raat-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'black-eyed-peas'),
  '<p>आँखा रात बोल्छ</p><p>[F] [G] [C] [E]</p><p>Lyrics coming soon...</p><p>[F] [G] [C] [E]</p>',
  2003,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो बाटो आशा हृदय',
  'haaso-bato-asha-hridaya',
  (SELECT id FROM "artist" WHERE slug = 'joji'),
  '<p>हाँसो बाटो आशा हृदय</p><p>[F#m] [D] [C] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [C] [F#m]</p>',
  2012,
  'D',
  5,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद संग झर्छ',
  'yaad-sanga-jharchha',
  (SELECT id FROM "artist" WHERE slug = 'joji'),
  '<p>याद संग झर्छ</p><p>[E] [Am] [Am] [Am]</p><p>Lyrics coming soon...</p><p>[E] [Am] [Am] [Am]</p>',
  1990,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन याद ले',
  'din-yaad-le',
  (SELECT id FROM "artist" WHERE slug = '50-cent'),
  '<p>दिन याद ले</p><p>[Bb] [F] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [F#m] [Em]</p>',
  1995,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल संग बढ्छ',
  'badal-sanga-badhchha',
  (SELECT id FROM "artist" WHERE slug = '50-cent'),
  '<p>बादल संग बढ्छ</p><p>[D] [Bb] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [Am] [F#m]</p>',
  1994,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल देखि बिना',
  'himal-dekhi-bina',
  (SELECT id FROM "artist" WHERE slug = 'avicii'),
  '<p>हिमाल देखि बिना</p><p>[D] [F#m] [C] [G]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [C] [G]</p>',
  1996,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो ज्ञान',
  'hamro-gyan',
  (SELECT id FROM "artist" WHERE slug = 'avicii'),
  '<p>हाम्रो ज्ञान</p><p>[Am] [F] [E] [Am]</p><p>Lyrics coming soon...</p><p>[Am] [F] [E] [Am]</p>',
  2001,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो सपना हरू शान्ति',
  'hamro-sapana-haru-shanti',
  (SELECT id FROM "artist" WHERE slug = 'adele'),
  '<p>हाम्रो सपना हरू शान्ति</p><p>[Dm] [F#m] [Dm] [Am]</p><p>Lyrics coming soon...</p><p>[Dm] [F#m] [Dm] [Am]</p>',
  2011,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग संग चाँदनी हाम्रो',
  'rang-sanga-chandani-hamro',
  (SELECT id FROM "artist" WHERE slug = 'adele'),
  '<p>रंग संग चाँदनी हाम्रो</p><p>[F#m] [F#m] [F] [G]</p><p>Lyrics coming soon...</p><p>[F#m] [F#m] [F] [G]</p>',
  1993,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया लाई',
  'maya-lai',
  (SELECT id FROM "artist" WHERE slug = 'bebe-rexha'),
  '<p>माया लाई</p><p>[F#m] [Bb] [Am] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [Bb] [Am] [Am]</p>',
  1998,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा ले ले सज्छ',
  'hawa-le-le-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'bebe-rexha'),
  '<p>हावा ले ले सज्छ</p><p>[Am] [D] [G] [D]</p><p>Lyrics coming soon...</p><p>[Am] [D] [G] [D]</p>',
  1998,
  'C',
  1,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी मै हृदय बढ्छ',
  'sathi-mai-hridaya-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'akon'),
  '<p>साथी मै हृदय बढ्छ</p><p>[F#m] [G] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [F#m] [C]</p>',
  1996,
  'D',
  1,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम अघि मुस्कान सपना बिस्तर्छ',
  'prem-aghi-muskan-sapana-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'akon'),
  '<p>प्रेम अघि मुस्कान सपना बिस्तर्छ</p><p>[F] [D] [F] [G]</p><p>Lyrics coming soon...</p><p>[F] [D] [F] [G]</p>',
  2021,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत तिम्रो तिम्रो',
  'geet-timro-timro',
  (SELECT id FROM "artist" WHERE slug = 'usher'),
  '<p>गीत तिम्रो तिम्रो</p><p>[Am] [Bb] [E] [Dm]</p><p>Lyrics coming soon...</p><p>[Am] [Bb] [E] [Dm]</p>',
  1992,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा ले देखि नदी',
  'asha-le-dekhi-nadi',
  (SELECT id FROM "artist" WHERE slug = 'usher'),
  '<p>आशा ले देखि नदी</p><p>[E] [Dm] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [Bb] [Am]</p>',
  1993,
  'A',
  2,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल पछि',
  'himal-pachi',
  (SELECT id FROM "artist" WHERE slug = 'rick-ross'),
  '<p>हिमाल पछि</p><p>[Am] [D] [E] [G]</p><p>Lyrics coming soon...</p><p>[Am] [D] [E] [G]</p>',
  2000,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय मन',
  'hridaya-man',
  (SELECT id FROM "artist" WHERE slug = 'rick-ross'),
  '<p>हृदय मन</p><p>[E] [F] [D] [C]</p><p>Lyrics coming soon...</p><p>[E] [F] [D] [C]</p>',
  2013,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा लाई पग्लिन्छ',
  'hawa-lai-paglindchha',
  (SELECT id FROM "artist" WHERE slug = 'swae-lee'),
  '<p>हावा लाई पग्लिन्छ</p><p>[Am] [Dm] [G] [Em]</p><p>Lyrics coming soon...</p><p>[Am] [Dm] [G] [Em]</p>',
  2017,
  'Bb',
  3,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन चाँदनी हाम्रो',
  'din-chandani-hamro',
  (SELECT id FROM "artist" WHERE slug = 'swae-lee'),
  '<p>दिन चाँदनी हाम्रो</p><p>[Am] [G] [E] [C]</p><p>Lyrics coming soon...</p><p>[Am] [G] [E] [C]</p>',
  2003,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश नदी मेरो ज्ञान',
  'akash-nadi-mero-gyan',
  (SELECT id FROM "artist" WHERE slug = 'justin-timberlake'),
  '<p>आकाश नदी मेरो ज्ञान</p><p>[F#m] [Dm] [Bb] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [Bb] [F#m]</p>',
  2019,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ बादल जस्तो',
  'gaun-badal-jasto',
  (SELECT id FROM "artist" WHERE slug = 'justin-timberlake'),
  '<p>गाउँ बादल जस्तो</p><p>[C] [D] [E] [D]</p><p>Lyrics coming soon...</p><p>[C] [D] [E] [D]</p>',
  2016,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय माथि बिस्तर्छ',
  'hridaya-mathi-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'kodak-black'),
  '<p>हृदय माथि बिस्तर्छ</p><p>[F#m] [E] [F] [Dm]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [F] [Dm]</p>',
  2003,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया तिम्रो',
  'maya-timro',
  (SELECT id FROM "artist" WHERE slug = 'kodak-black'),
  '<p>माया तिम्रो</p><p>[Em] [F#m] [F] [G]</p><p>Lyrics coming soon...</p><p>[Em] [F#m] [F] [G]</p>',
  2022,
  'E',
  2,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर हिमाल पानी',
  'sahar-himal-pani',
  (SELECT id FROM "artist" WHERE slug = 'tate-mcrae'),
  '<p>सहर हिमाल पानी</p><p>[G] [F#m] [G] [G]</p><p>Lyrics coming soon...</p><p>[G] [F#m] [G] [G]</p>',
  1994,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा आँखा भित्र सुक्छ',
  'katha-aankha-bhitra-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'tate-mcrae'),
  '<p>कथा आँखा भित्र सुक्छ</p><p>[D] [Am] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[D] [Am] [F#m] [F#m]</p>',
  1992,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा पनि हावा',
  'katha-pani-hawa',
  (SELECT id FROM "artist" WHERE slug = 'mar-lia-mendon-a'),
  '<p>कथा पनि हावा</p><p>[F] [G] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [G] [E] [Bb]</p>',
  2021,
  'D',
  3,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा सत्य हृदय भरोसा',
  'yatra-satya-hridaya-bharosa',
  (SELECT id FROM "artist" WHERE slug = 'mar-lia-mendon-a'),
  '<p>यात्रा सत्य हृदय भरोसा</p><p>[Em] [F] [G] [Am]</p><p>Lyrics coming soon...</p><p>[Em] [F] [G] [Am]</p>',
  2007,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल सहर मेरो',
  'badal-sahar-mero',
  (SELECT id FROM "artist" WHERE slug = 'sean-paul'),
  '<p>बादल सहर मेरो</p><p>[C] [Dm] [F] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [Dm] [F] [Bb]</p>',
  1995,
  'Em',
  5,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो देखि',
  'bato-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'sean-paul'),
  '<p>बाटो देखि</p><p>[Dm] [Dm] [F] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [F] [G]</p>',
  1995,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी मुस्कान माया अघि',
  'nadi-muskan-maya-aghi',
  (SELECT id FROM "artist" WHERE slug = 'john-legend'),
  '<p>नदी मुस्कान माया अघि</p><p>[F] [C] [Em] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [C] [Em] [Bb]</p>',
  2024,
  'F',
  3,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो बादल',
  'bato-badal',
  (SELECT id FROM "artist" WHERE slug = 'john-legend'),
  '<p>बाटो बादल</p><p>[C] [F] [Am] [E]</p><p>Lyrics coming soon...</p><p>[C] [F] [Am] [E]</p>',
  2002,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य बाटो साँझ',
  'satya-bato-sanjh',
  (SELECT id FROM "artist" WHERE slug = 'martin-garrix'),
  '<p>सत्य बाटो साँझ</p><p>[C] [F] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[C] [F] [Am] [F#m]</p>',
  1992,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति अघि पनि',
  'shakti-aghi-pani',
  (SELECT id FROM "artist" WHERE slug = 'martin-garrix'),
  '<p>शक्ति अघि पनि</p><p>[C] [D] [G] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [D] [G] [Bb]</p>',
  2011,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा बिहान फुल्छ',
  'hawa-bihan-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'ellie-goulding'),
  '<p>हावा बिहान फुल्छ</p><p>[G] [G] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[G] [G] [Bb] [F]</p>',
  2006,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो साथी धुन अघि',
  'hamro-sathi-dhun-aghi',
  (SELECT id FROM "artist" WHERE slug = 'ellie-goulding'),
  '<p>हाम्रो साथी धुन अघि</p><p>[D] [F#m] [Am] [Am]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [Am] [Am]</p>',
  1997,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु फूल',
  'mutu-phool',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-shreya-ghoshal'),
  '<p>मुटु फूल</p><p>[F#m] [F#m] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [F#m] [Bb] [F]</p>',
  2014,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद मुटु तिमी',
  'yaad-mutu-timi',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-shreya-ghoshal'),
  '<p>याद मुटु तिमी</p><p>[Dm] [E] [F] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [E] [F] [C]</p>',
  2012,
  'F',
  5,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात ले गीत आँखा',
  'raat-le-geet-aankha',
  (SELECT id FROM "artist" WHERE slug = 'led-zeppelin'),
  '<p>रात ले गीत आँखा</p><p>[G] [Am] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[G] [Am] [F#m] [Em]</p>',
  1993,
  'A',
  2,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा भित्र',
  'yatra-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'led-zeppelin'),
  '<p>यात्रा भित्र</p><p>[C] [G] [F] [E]</p><p>Lyrics coming soon...</p><p>[C] [G] [F] [E]</p>',
  1994,
  'E',
  2,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना भित्र जस्तो बिस्तर्छ',
  'samjhana-bhitra-jasto-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'maluma'),
  '<p>सम्झना भित्र जस्तो बिस्तर्छ</p><p>[Bb] [G] [E] [Em]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [E] [Em]</p>',
  2018,
  'E',
  4,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड परीक्षा',
  'pahad-pariksha',
  (SELECT id FROM "artist" WHERE slug = 'maluma'),
  '<p>पहाड परीक्षा</p><p>[Am] [F] [Bb] [D]</p><p>Lyrics coming soon...</p><p>[Am] [F] [Bb] [D]</p>',
  2009,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ बिना बल्छ',
  'sanjh-bina-balchha',
  (SELECT id FROM "artist" WHERE slug = 'fleetwood-mac'),
  '<p>साँझ बिना बल्छ</p><p>[E] [Dm] [Am] [G]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [Am] [G]</p>',
  2016,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात को तिम्रो ज्ञान',
  'paat-ko-timro-gyan',
  (SELECT id FROM "artist" WHERE slug = 'fleetwood-mac'),
  '<p>पात को तिम्रो ज्ञान</p><p>[Em] [Dm] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [Dm] [Am] [Dm]</p>',
  2015,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर रात हाँसो हाम्रो',
  'sahar-raat-haaso-hamro',
  (SELECT id FROM "artist" WHERE slug = 'local-h'),
  '<p>सहर रात हाँसो हाम्रो</p><p>[Dm] [Bb] [F] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [F] [G]</p>',
  2020,
  'Dm',
  1,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा अघि के नै हिँड्छ',
  'hawa-aghi-ke-nai-hindchha',
  (SELECT id FROM "artist" WHERE slug = 'local-h'),
  '<p>हावा अघि के नै हिँड्छ</p><p>[Dm] [D] [F] [E]</p><p>Lyrics coming soon...</p><p>[Dm] [D] [F] [E]</p>',
  2000,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना जस्तो',
  'sapana-jasto-220-0',
  (SELECT id FROM "artist" WHERE slug = 'mohammed-rafi'),
  '<p>सपना जस्तो</p><p>[F] [Dm] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [F#m] [C]</p>',
  2003,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन मा र बिना बल्छ',
  'dhun-ma-ra-bina-balchha',
  (SELECT id FROM "artist" WHERE slug = 'mohammed-rafi'),
  '<p>धुन मा र बिना बल्छ</p><p>[E] [E] [Em] [G]</p><p>Lyrics coming soon...</p><p>[E] [E] [Em] [G]</p>',
  1991,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा देखि सुक्छ',
  'asha-dekhi-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'paresh-pahuja'),
  '<p>आशा देखि सुक्छ</p><p>[Dm] [Bb] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [F#m] [Am]</p>',
  2001,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया मुस्कान जस्तो नाच्छ',
  'maya-muskan-jasto-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'paresh-pahuja'),
  '<p>माया मुस्कान जस्तो नाच्छ</p><p>[F#m] [Em] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[F#m] [Em] [D] [Bb]</p>',
  2004,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन पछि ले',
  'din-pachi-le',
  (SELECT id FROM "artist" WHERE slug = 'rauw-alejandro'),
  '<p>दिन पछि ले</p><p>[Dm] [G] [C] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [C] [C]</p>',
  2004,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड संग मै को',
  'pahad-sanga-mai-ko',
  (SELECT id FROM "artist" WHERE slug = 'rauw-alejandro'),
  '<p>पहाड संग मै को</p><p>[C] [F] [G] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [F] [G] [Bb]</p>',
  2023,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग शक्ति को गयो',
  'rang-shakti-ko-gayo',
  (SELECT id FROM "artist" WHERE slug = 'anuel-aa'),
  '<p>रंग शक्ति को गयो</p><p>[D] [F] [Bb] [E]</p><p>Lyrics coming soon...</p><p>[D] [F] [Bb] [E]</p>',
  2003,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल अघि को',
  'phool-aghi-ko',
  (SELECT id FROM "artist" WHERE slug = 'anuel-aa'),
  '<p>फूल अघि को</p><p>[E] [Bb] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [Em] [Am]</p>',
  2000,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम पछि को भरोसा आयो',
  'prem-pachi-ko-bharosa-aayo',
  (SELECT id FROM "artist" WHERE slug = 'khalid'),
  '<p>प्रेम पछि को भरोसा आयो</p><p>[Bb] [Bb] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [Bb] [Bb] [F]</p>',
  2001,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ सम्म गीत बिना',
  'gaun-samma-geet-bina',
  (SELECT id FROM "artist" WHERE slug = 'khalid'),
  '<p>गाउँ सम्म गीत बिना</p><p>[F#m] [G] [C] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [C] [C]</p>',
  2003,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा पनि नै जस्तो आयो',
  'yatra-pani-nai-jasto-aayo',
  (SELECT id FROM "artist" WHERE slug = 'young-thug'),
  '<p>यात्रा पनि नै जस्तो आयो</p><p>[F#m] [D] [Em] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [Em] [F]</p>',
  1996,
  'F',
  4,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून पनि',
  'joon-pani',
  (SELECT id FROM "artist" WHERE slug = 'young-thug'),
  '<p>जून पनि</p><p>[E] [Bb] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [F] [F#m]</p>',
  2010,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो सम्झना',
  'mero-samjhana',
  (SELECT id FROM "artist" WHERE slug = 'giveon'),
  '<p>मेरो सम्झना</p><p>[D] [F] [E] [Am]</p><p>Lyrics coming soon...</p><p>[D] [F] [E] [Am]</p>',
  1999,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी फूल हृदय हावा',
  'chandani-phool-hridaya-hawa',
  (SELECT id FROM "artist" WHERE slug = 'giveon'),
  '<p>चाँदनी फूल हृदय हावा</p><p>[Dm] [F] [Em] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [Em] [Em]</p>',
  2003,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय गीत सम्म',
  'hridaya-geet-samma',
  (SELECT id FROM "artist" WHERE slug = 'farruko'),
  '<p>हृदय गीत सम्म</p><p>[Em] [F] [C] [E]</p><p>Lyrics coming soon...</p><p>[Em] [F] [C] [E]</p>',
  2020,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम हरू हाम्रो आगो',
  'prem-haru-hamro-aago',
  (SELECT id FROM "artist" WHERE slug = 'farruko'),
  '<p>प्रेम हरू हाम्रो आगो</p><p>[C] [D] [F] [Am]</p><p>Lyrics coming soon...</p><p>[C] [D] [F] [Am]</p>',
  2018,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा पछि मन',
  'pariksha-pachi-man',
  (SELECT id FROM "artist" WHERE slug = 'the-kid-laroi'),
  '<p>परीक्षा पछि मन</p><p>[G] [Bb] [C] [Bb]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [C] [Bb]</p>',
  2014,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात के हरू चाँदनी',
  'raat-ke-haru-chandani',
  (SELECT id FROM "artist" WHERE slug = 'the-kid-laroi'),
  '<p>रात के हरू चाँदनी</p><p>[Em] [D] [F] [G]</p><p>Lyrics coming soon...</p><p>[Em] [D] [F] [G]</p>',
  1996,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना ले गाउँ',
  'sapana-le-gaun',
  (SELECT id FROM "artist" WHERE slug = 'harry-styles'),
  '<p>सपना ले गाउँ</p><p>[E] [Bb] [Bb] [Em]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [Bb] [Em]</p>',
  1990,
  'G',
  3,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा माथि',
  'bharosa-mathi',
  (SELECT id FROM "artist" WHERE slug = 'harry-styles'),
  '<p>भरोसा माथि</p><p>[Bb] [C] [Am] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [C] [Am] [F]</p>',
  2007,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश हिमाल बादल भरोसा सुक्छ',
  'akash-himal-badal-bharosa-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'david-guetta'),
  '<p>आकाश हिमाल बादल भरोसा सुक्छ</p><p>[Dm] [Bb] [Am] [Am]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [Am] [Am]</p>',
  2014,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो तिम्रो ले',
  'haaso-timro-le',
  (SELECT id FROM "artist" WHERE slug = 'david-guetta'),
  '<p>हाँसो तिम्रो ले</p><p>[Bb] [F] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [F#m] [F]</p>',
  1992,
  'F',
  4,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा सपना',
  'yatra-sapana',
  (SELECT id FROM "artist" WHERE slug = 'sech'),
  '<p>यात्रा सपना</p><p>[F] [G] [F] [G]</p><p>Lyrics coming soon...</p><p>[F] [G] [F] [G]</p>',
  1995,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा ज्ञान बाटो',
  'asha-gyan-bato',
  (SELECT id FROM "artist" WHERE slug = 'sech'),
  '<p>आशा ज्ञान बाटो</p><p>[Bb] [Bb] [D] [F#m]</p><p>Lyrics coming soon...</p><p>[Bb] [Bb] [D] [F#m]</p>',
  1991,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान हाम्रो',
  'gyan-hamro',
  (SELECT id FROM "artist" WHERE slug = 'coldplay'),
  '<p>ज्ञान हाम्रो</p><p>[F] [Dm] [Am] [Em]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [Am] [Em]</p>',
  2018,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग देखि सत्य',
  'rang-dekhi-satya',
  (SELECT id FROM "artist" WHERE slug = 'coldplay'),
  '<p>रंग देखि सत्य</p><p>[D] [D] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[D] [D] [E] [Bb]</p>',
  2000,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो शान्ति गाउँ',
  'bato-shanti-gaun',
  (SELECT id FROM "artist" WHERE slug = 'daniel-caesar'),
  '<p>बाटो शान्ति गाउँ</p><p>[C] [C] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [C] [D] [Bb]</p>',
  2010,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना माया मुटु सुक्छ',
  'samjhana-maya-mutu-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'daniel-caesar'),
  '<p>सम्झना माया मुटु सुक्छ</p><p>[G] [Em] [Em] [F]</p><p>Lyrics coming soon...</p><p>[G] [Em] [Em] [F]</p>',
  2005,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद मा मन',
  'yaad-ma-man',
  (SELECT id FROM "artist" WHERE slug = 'nicky-jam'),
  '<p>याद मा मन</p><p>[D] [C] [Am] [Bb]</p><p>Lyrics coming soon...</p><p>[D] [C] [Am] [Bb]</p>',
  2015,
  'C',
  2,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड देखि',
  'pahad-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'nicky-jam'),
  '<p>पहाड देखि</p><p>[F] [Am] [F] [E]</p><p>Lyrics coming soon...</p><p>[F] [Am] [F] [E]</p>',
  1996,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत बिना पात',
  'geet-bina-paat',
  (SELECT id FROM "artist" WHERE slug = 'olivia-rodrigo'),
  '<p>गीत बिना पात</p><p>[Am] [Em] [F] [Em]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [F] [Em]</p>',
  1992,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु हाम्रो सम्म सपना',
  'mutu-hamro-samma-sapana',
  (SELECT id FROM "artist" WHERE slug = 'olivia-rodrigo'),
  '<p>मुटु हाम्रो सम्म सपना</p><p>[Dm] [D] [F#m] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [D] [F#m] [Dm]</p>',
  2020,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा के रंग तिमी बिस्तर्छ',
  'pariksha-ke-rang-timi-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'kali-uchis'),
  '<p>परीक्षा के रंग तिमी बिस्तर्छ</p><p>[E] [D] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [D] [E] [Bb]</p>',
  2017,
  'F',
  2,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड शक्ति जस्तो',
  'bichhod-shakti-jasto',
  (SELECT id FROM "artist" WHERE slug = 'kali-uchis'),
  '<p>बिछोड शक्ति जस्तो</p><p>[F#m] [G] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [F#m] [F]</p>',
  2007,
  'Dm',
  1,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग प्रेम बढ्छ',
  'rang-prem-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'machine-gun-kelly'),
  '<p>रंग प्रेम बढ्छ</p><p>[F#m] [F] [F] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [F] [Em]</p>',
  2016,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी गीत मुस्कान पात',
  'sathi-geet-muskan-paat',
  (SELECT id FROM "artist" WHERE slug = 'machine-gun-kelly'),
  '<p>साथी गीत मुस्कान पात</p><p>[E] [F#m] [C] [E]</p><p>Lyrics coming soon...</p><p>[E] [F#m] [C] [E]</p>',
  2015,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल नदी',
  'badal-nadi',
  (SELECT id FROM "artist" WHERE slug = 'wisin'),
  '<p>बादल नदी</p><p>[F] [D] [Am] [C]</p><p>Lyrics coming soon...</p><p>[F] [D] [Am] [C]</p>',
  2010,
  'D',
  3,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात देखि',
  'raat-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'wisin'),
  '<p>रात देखि</p><p>[E] [Am] [Am] [Am]</p><p>Lyrics coming soon...</p><p>[E] [Am] [Am] [Am]</p>',
  2000,
  'Dm',
  1,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान र ले देखि दौडन्छ',
  'muskan-ra-le-dekhi-daudanchha',
  (SELECT id FROM "artist" WHERE slug = 'diplo'),
  '<p>मुस्कान र ले देखि दौडन्छ</p><p>[F] [G] [Dm] [C]</p><p>Lyrics coming soon...</p><p>[F] [G] [Dm] [C]</p>',
  2018,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन साथी',
  'din-sathi',
  (SELECT id FROM "artist" WHERE slug = 'diplo'),
  '<p>दिन साथी</p><p>[Bb] [G] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [Bb] [F]</p>',
  2024,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी बादल गाउँ बढ्छ',
  'jindagi-badal-gaun-badhchha',
  (SELECT id FROM "artist" WHERE slug = '24kgoldn'),
  '<p>जिन्दगी बादल गाउँ बढ्छ</p><p>[E] [G] [D] [F]</p><p>Lyrics coming soon...</p><p>[E] [G] [D] [F]</p>',
  1996,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा ले देखि मै',
  'pariksha-le-dekhi-mai',
  (SELECT id FROM "artist" WHERE slug = '24kgoldn'),
  '<p>परीक्षा ले देखि मै</p><p>[Em] [Em] [G] [Am]</p><p>Lyrics coming soon...</p><p>[Em] [Em] [G] [Am]</p>',
  2012,
  'Bb',
  4,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा हाँसो',
  'yatra-haaso',
  (SELECT id FROM "artist" WHERE slug = 'justin-quiles'),
  '<p>यात्रा हाँसो</p><p>[C] [D] [E] [D]</p><p>Lyrics coming soon...</p><p>[C] [D] [E] [D]</p>',
  1995,
  'Bb',
  3,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय माथि नै रात',
  'hridaya-mathi-nai-raat',
  (SELECT id FROM "artist" WHERE slug = 'justin-quiles'),
  '<p>हृदय माथि नै रात</p><p>[F] [F] [D] [C]</p><p>Lyrics coming soon...</p><p>[F] [F] [D] [C]</p>',
  1997,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश शक्ति',
  'akash-shakti',
  (SELECT id FROM "artist" WHERE slug = 'trippie-redd'),
  '<p>आकाश शक्ति</p><p>[C] [Bb] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[C] [Bb] [F#m] [F#m]</p>',
  2017,
  'F',
  5,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा सम्झना मा',
  'pariksha-samjhana-ma',
  (SELECT id FROM "artist" WHERE slug = 'trippie-redd'),
  '<p>परीक्षा सम्झना मा</p><p>[Am] [F] [D] [C]</p><p>Lyrics coming soon...</p><p>[Am] [F] [D] [C]</p>',
  2005,
  'C',
  2,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा ज्ञान हरू जस्तो',
  'yatra-gyan-haru-jasto',
  (SELECT id FROM "artist" WHERE slug = 'pitbull'),
  '<p>यात्रा ज्ञान हरू जस्तो</p><p>[E] [C] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[E] [C] [Dm] [F]</p>',
  1995,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल तिमी तिर',
  'himal-timi-tira',
  (SELECT id FROM "artist" WHERE slug = 'pitbull'),
  '<p>हिमाल तिमी तिर</p><p>[Bb] [E] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[Bb] [E] [D] [Dm]</p>',
  2006,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून लाई र',
  'joon-lai-ra',
  (SELECT id FROM "artist" WHERE slug = 'arcangel'),
  '<p>जून लाई र</p><p>[F] [F#m] [F] [C]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [F] [C]</p>',
  2011,
  'Am',
  5,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो तिर माया',
  'aago-tira-maya',
  (SELECT id FROM "artist" WHERE slug = 'arcangel'),
  '<p>आगो तिर माया</p><p>[E] [Bb] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [Am] [F#m]</p>',
  2012,
  'Bb',
  5,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा माथि आँखा',
  'aankha-mathi-aankha',
  (SELECT id FROM "artist" WHERE slug = 'daft-punk'),
  '<p>आँखा माथि आँखा</p><p>[Am] [C] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[Am] [C] [Bb] [F]</p>',
  2017,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल पानी बिना',
  'himal-pani-bina',
  (SELECT id FROM "artist" WHERE slug = 'daft-punk'),
  '<p>हिमाल पानी बिना</p><p>[E] [Dm] [C] [Em]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [C] [Em]</p>',
  1996,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड सपना गाउँछ',
  'pahad-sapana-gaunchha',
  (SELECT id FROM "artist" WHERE slug = 'elton-john'),
  '<p>पहाड सपना गाउँछ</p><p>[C] [F] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[C] [F] [Bb] [C]</p>',
  1996,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा भित्र र',
  'yatra-bhitra-ra',
  (SELECT id FROM "artist" WHERE slug = 'elton-john'),
  '<p>यात्रा भित्र र</p><p>[Am] [Em] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [D] [Bb]</p>',
  2003,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान पछि',
  'bihan-pachi',
  (SELECT id FROM "artist" WHERE slug = 'jay-wheeler'),
  '<p>बिहान पछि</p><p>[G] [C] [Dm] [C]</p><p>Lyrics coming soon...</p><p>[G] [C] [Dm] [C]</p>',
  2019,
  'Am',
  1,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड आकाश हृदय उडान',
  'pahad-akash-hridaya-udan',
  (SELECT id FROM "artist" WHERE slug = 'jay-wheeler'),
  '<p>पहाड आकाश हृदय उडान</p><p>[Em] [E] [G] [Em]</p><p>Lyrics coming soon...</p><p>[Em] [E] [G] [Em]</p>',
  1997,
  'Am',
  5,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान र के जिन्दगी',
  'gyan-ra-ke-jindagi',
  (SELECT id FROM "artist" WHERE slug = 'red-hot-chili-peppers'),
  '<p>ज्ञान र के जिन्दगी</p><p>[Am] [C] [E] [Am]</p><p>Lyrics coming soon...</p><p>[Am] [C] [E] [Am]</p>',
  2007,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी हरू गाउँ के',
  'sathi-haru-gaun-ke',
  (SELECT id FROM "artist" WHERE slug = 'red-hot-chili-peppers'),
  '<p>साथी हरू गाउँ के</p><p>[G] [Bb] [Am] [E]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [Am] [E]</p>',
  1999,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश पछि मा याद',
  'akash-pachi-ma-yaad',
  (SELECT id FROM "artist" WHERE slug = 'chance-the-rapper'),
  '<p>आकाश पछि मा याद</p><p>[C] [G] [D] [E]</p><p>Lyrics coming soon...</p><p>[C] [G] [D] [E]</p>',
  2010,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल ले मा नै',
  'badal-le-ma-nai',
  (SELECT id FROM "artist" WHERE slug = 'chance-the-rapper'),
  '<p>बादल ले मा नै</p><p>[C] [E] [Em] [E]</p><p>Lyrics coming soon...</p><p>[C] [E] [Em] [E]</p>',
  1998,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति गाउँ',
  'shanti-gaun',
  (SELECT id FROM "artist" WHERE slug = 'sebastian-yatra'),
  '<p>शान्ति गाउँ</p><p>[G] [Dm] [E] [F]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [E] [F]</p>',
  1992,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद के बिना सज्छ',
  'yaad-ke-bina-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'sebastian-yatra'),
  '<p>याद के बिना सज्छ</p><p>[F] [D] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [D] [Dm] [Bb]</p>',
  2017,
  'D',
  4,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून माथि देखि ले',
  'joon-mathi-dekhi-le',
  (SELECT id FROM "artist" WHERE slug = 'rosal-a'),
  '<p>जून माथि देखि ले</p><p>[D] [F] [E] [Am]</p><p>Lyrics coming soon...</p><p>[D] [F] [E] [Am]</p>',
  1990,
  'Bb',
  4,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम सम्म',
  'prem-samma',
  (SELECT id FROM "artist" WHERE slug = 'rosal-a'),
  '<p>प्रेम सम्म</p><p>[E] [Dm] [Em] [D]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [Em] [D]</p>',
  2013,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड हावा झर्छ',
  'bichhod-hawa-jharchha',
  (SELECT id FROM "artist" WHERE slug = 'camila-cabello'),
  '<p>बिछोड हावा झर्छ</p><p>[G] [F] [D] [D]</p><p>Lyrics coming soon...</p><p>[G] [F] [D] [D]</p>',
  1994,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो पछि मै के हाँस्छ',
  'bato-pachi-mai-ke-haschha',
  (SELECT id FROM "artist" WHERE slug = 'camila-cabello'),
  '<p>बाटो पछि मै के हाँस्छ</p><p>[Am] [Em] [Am] [Em]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [Am] [Em]</p>',
  2018,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी ले सम्म बग्छ',
  'chandani-le-samma-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'the-chainsmokers'),
  '<p>चाँदनी ले सम्म बग्छ</p><p>[G] [Dm] [Bb] [Bb]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Bb] [Bb]</p>',
  2010,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी सहर रंग',
  'jindagi-sahar-rang',
  (SELECT id FROM "artist" WHERE slug = 'the-chainsmokers'),
  '<p>जिन्दगी सहर रंग</p><p>[F#m] [F#m] [E] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [F#m] [E] [Am]</p>',
  2014,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो र',
  'bato-ra',
  (SELECT id FROM "artist" WHERE slug = 'onerepublic'),
  '<p>बाटो र</p><p>[F] [F] [F] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [F] [F] [Bb]</p>',
  2000,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा देखि गाउँ',
  'katha-dekhi-gaun',
  (SELECT id FROM "artist" WHERE slug = 'onerepublic'),
  '<p>कथा देखि गाउँ</p><p>[Am] [Bb] [C] [F#m]</p><p>Lyrics coming soon...</p><p>[Am] [Bb] [C] [F#m]</p>',
  2020,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो मुटु',
  'hamro-mutu',
  (SELECT id FROM "artist" WHERE slug = 'gusttavo-lima'),
  '<p>हाम्रो मुटु</p><p>[Dm] [C] [E] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [C] [E] [G]</p>',
  2021,
  'C',
  3,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड हाँसो हृदय बादल',
  'bichhod-haaso-hridaya-badal',
  (SELECT id FROM "artist" WHERE slug = 'gusttavo-lima'),
  '<p>बिछोड हाँसो हृदय बादल</p><p>[Am] [F#m] [Em] [D]</p><p>Lyrics coming soon...</p><p>[Am] [F#m] [Em] [D]</p>',
  2000,
  'Em',
  2,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान हरू',
  'gyan-haru',
  (SELECT id FROM "artist" WHERE slug = 'alok'),
  '<p>ज्ञान हरू</p><p>[G] [F] [F] [Dm]</p><p>Lyrics coming soon...</p><p>[G] [F] [F] [Dm]</p>',
  2018,
  'A',
  2,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद सपना ले मै',
  'yaad-sapana-le-mai',
  (SELECT id FROM "artist" WHERE slug = 'alok'),
  '<p>याद सपना ले मै</p><p>[Dm] [Bb] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [Dm] [E]</p>',
  2016,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान जस्तो बोल्छ',
  'udan-jasto-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'little-mix'),
  '<p>उडान जस्तो बोल्छ</p><p>[E] [F#m] [F] [Am]</p><p>Lyrics coming soon...</p><p>[E] [F#m] [F] [Am]</p>',
  2013,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना मुस्कान ज्ञान पनि',
  'samjhana-muskan-gyan-pani',
  (SELECT id FROM "artist" WHERE slug = 'little-mix'),
  '<p>सम्झना मुस्कान ज्ञान पनि</p><p>[C] [D] [Em] [D]</p><p>Lyrics coming soon...</p><p>[C] [D] [Em] [D]</p>',
  2016,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून तिम्रो भित्र',
  'joon-timro-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'meduza'),
  '<p>जून तिम्रो भित्र</p><p>[C] [F#m] [C] [F]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [C] [F]</p>',
  1991,
  'Bb',
  3,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो यात्रा हाम्रो',
  'aago-yatra-hamro',
  (SELECT id FROM "artist" WHERE slug = 'meduza'),
  '<p>आगो यात्रा हाम्रो</p><p>[Bb] [Em] [Am] [E]</p><p>Lyrics coming soon...</p><p>[Bb] [Em] [Am] [E]</p>',
  2021,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान शक्ति आयो',
  'muskan-shakti-aayo',
  (SELECT id FROM "artist" WHERE slug = 'john-mayer'),
  '<p>मुस्कान शक्ति आयो</p><p>[C] [Bb] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[C] [Bb] [Dm] [G]</p>',
  2023,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी ज्ञान रुन्छ',
  'sathi-gyan-runchha',
  (SELECT id FROM "artist" WHERE slug = 'john-mayer'),
  '<p>साथी ज्ञान रुन्छ</p><p>[D] [F#m] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [F#m] [F#m]</p>',
  2004,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश माथि',
  'akash-mathi',
  (SELECT id FROM "artist" WHERE slug = 'twice'),
  '<p>आकाश माथि</p><p>[C] [Am] [G] [G]</p><p>Lyrics coming soon...</p><p>[C] [Am] [G] [G]</p>',
  2019,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान लाई',
  'udan-lai',
  (SELECT id FROM "artist" WHERE slug = 'twice'),
  '<p>उडान लाई</p><p>[Em] [G] [Dm] [C]</p><p>Lyrics coming soon...</p><p>[Em] [G] [Dm] [C]</p>',
  1999,
  'C',
  1,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय रंग ले',
  'hridaya-rang-le',
  (SELECT id FROM "artist" WHERE slug = 'silk-sonic'),
  '<p>हृदय रंग ले</p><p>[D] [F] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[D] [F] [Dm] [F]</p>',
  2005,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान हृदय',
  'bihan-hridaya',
  (SELECT id FROM "artist" WHERE slug = 'silk-sonic'),
  '<p>बिहान हृदय</p><p>[Dm] [G] [C] [D]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [C] [D]</p>',
  1999,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो को',
  'mero-ko',
  (SELECT id FROM "artist" WHERE slug = 'simon-and-garfunkel'),
  '<p>मेरो को</p><p>[F#m] [G] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [D] [Dm]</p>',
  2001,
  'A',
  2,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय दिन साथी दौडन्छ',
  'hridaya-din-sathi-daudanchha',
  (SELECT id FROM "artist" WHERE slug = 'simon-and-garfunkel'),
  '<p>हृदय दिन साथी दौडन्छ</p><p>[C] [F#m] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [D] [Dm]</p>',
  1995,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना साँझ मन मा',
  'samjhana-sanjh-man-ma',
  (SELECT id FROM "artist" WHERE slug = 'gucci-mane'),
  '<p>सम्झना साँझ मन मा</p><p>[D] [Am] [G] [C]</p><p>Lyrics coming soon...</p><p>[D] [Am] [G] [C]</p>',
  1994,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी गीत तिमी पहाड',
  'sathi-geet-timi-pahad',
  (SELECT id FROM "artist" WHERE slug = 'gucci-mane'),
  '<p>साथी गीत तिमी पहाड</p><p>[E] [F#m] [G] [Em]</p><p>Lyrics coming soon...</p><p>[E] [F#m] [G] [Em]</p>',
  1991,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान लाई उड्छ',
  'udan-lai-udchha',
  (SELECT id FROM "artist" WHERE slug = 'lil-mosey'),
  '<p>उडान लाई उड्छ</p><p>[Dm] [F] [C] [Bb]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [C] [Bb]</p>',
  2005,
  'D',
  4,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान सहर',
  'bihan-sahar',
  (SELECT id FROM "artist" WHERE slug = 'lil-mosey'),
  '<p>बिहान सहर</p><p>[G] [Dm] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Am] [Dm]</p>',
  2024,
  'A',
  4,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ नै को के बढ्छ',
  'gaun-nai-ko-ke-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'florida-georgia-line'),
  '<p>गाउँ नै को के बढ्छ</p><p>[Em] [D] [Dm] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [D] [Dm] [Dm]</p>',
  2004,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ पछि हाम्रो',
  'gaun-pachi-hamro',
  (SELECT id FROM "artist" WHERE slug = 'florida-georgia-line'),
  '<p>गाउँ पछि हाम्रो</p><p>[F] [F] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [F] [D] [Bb]</p>',
  1995,
  'E',
  3,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड तिम्रो भित्र जून',
  'pahad-timro-bhitra-joon',
  (SELECT id FROM "artist" WHERE slug = 'tame-impala'),
  '<p>पहाड तिम्रो भित्र जून</p><p>[Am] [F] [Em] [Dm]</p><p>Lyrics coming soon...</p><p>[Am] [F] [Em] [Dm]</p>',
  1997,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा को',
  'hawa-ko',
  (SELECT id FROM "artist" WHERE slug = 'tame-impala'),
  '<p>हावा को</p><p>[C] [F#m] [C] [D]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [C] [D]</p>',
  2019,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान रात',
  'udan-raat',
  (SELECT id FROM "artist" WHERE slug = 'the-rolling-stones'),
  '<p>उडान रात</p><p>[Bb] [G] [D] [F#m]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [D] [F#m]</p>',
  1997,
  'F',
  4,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा तिमी',
  'asha-timi',
  (SELECT id FROM "artist" WHERE slug = 'the-rolling-stones'),
  '<p>आशा तिमी</p><p>[E] [E] [Em] [F#m]</p><p>Lyrics coming soon...</p><p>[E] [E] [Em] [F#m]</p>',
  1995,
  'F',
  4,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा हावा',
  'pariksha-hawa',
  (SELECT id FROM "artist" WHERE slug = 'flo-rida'),
  '<p>परीक्षा हावा</p><p>[D] [Bb] [G] [G]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [G] [G]</p>',
  2003,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ माथि',
  'gaun-mathi',
  (SELECT id FROM "artist" WHERE slug = 'flo-rida'),
  '<p>गाउँ माथि</p><p>[F] [G] [Dm] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [G] [Dm] [F#m]</p>',
  2023,
  'Dm',
  3,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा आगो के अघि आयो',
  'aankha-aago-ke-aghi-aayo',
  (SELECT id FROM "artist" WHERE slug = 'logic'),
  '<p>आँखा आगो के अघि आयो</p><p>[E] [Am] [Em] [G]</p><p>Lyrics coming soon...</p><p>[E] [Am] [Em] [G]</p>',
  1997,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर परीक्षा',
  'sahar-pariksha',
  (SELECT id FROM "artist" WHERE slug = 'logic'),
  '<p>सहर परीक्षा</p><p>[Dm] [Dm] [Dm] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [Dm] [C]</p>',
  2017,
  'A',
  5,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा तिमी ज्ञान नाच्छ',
  'katha-timi-gyan-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'g-eazy'),
  '<p>कथा तिमी ज्ञान नाच्छ</p><p>[G] [Bb] [Em] [Bb]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [Em] [Bb]</p>',
  2012,
  'Am',
  2,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य संग लाई पछि',
  'satya-sanga-lai-pachi',
  (SELECT id FROM "artist" WHERE slug = 'g-eazy'),
  '<p>सत्य संग लाई पछि</p><p>[Bb] [G] [G] [F#m]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [G] [F#m]</p>',
  2018,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति भित्र मुटु बाटो',
  'shanti-bhitra-mutu-bato',
  (SELECT id FROM "artist" WHERE slug = 'dj-snake'),
  '<p>शान्ति भित्र मुटु बाटो</p><p>[Bb] [Am] [F#m] [E]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [F#m] [E]</p>',
  2005,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा लाई',
  'bharosa-lai-271-1',
  (SELECT id FROM "artist" WHERE slug = 'dj-snake'),
  '<p>भरोसा लाई</p><p>[Em] [Am] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [F#m] [F#m]</p>',
  2020,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर लाई ज्ञान पछि गाउँछ',
  'sahar-lai-gyan-pachi-gaunchha',
  (SELECT id FROM "artist" WHERE slug = 'melanie-martinez'),
  '<p>सहर लाई ज्ञान पछि गाउँछ</p><p>[C] [Am] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[C] [Am] [F] [F#m]</p>',
  1998,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति सत्य',
  'shakti-satya',
  (SELECT id FROM "artist" WHERE slug = 'melanie-martinez'),
  '<p>शक्ति सत्य</p><p>[C] [E] [D] [E]</p><p>Lyrics coming soon...</p><p>[C] [E] [D] [E]</p>',
  1991,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना को धुन बिहान',
  'samjhana-ko-dhun-bihan',
  (SELECT id FROM "artist" WHERE slug = 'nicki-nicole'),
  '<p>सम्झना को धुन बिहान</p><p>[Dm] [D] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[Dm] [D] [F] [F#m]</p>',
  2012,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात तिर',
  'paat-tira',
  (SELECT id FROM "artist" WHERE slug = 'nicki-nicole'),
  '<p>पात तिर</p><p>[F] [D] [C] [E]</p><p>Lyrics coming soon...</p><p>[F] [D] [C] [E]</p>',
  1995,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति भित्र साथी',
  'shakti-bhitra-sathi',
  (SELECT id FROM "artist" WHERE slug = 'ynw-melly'),
  '<p>शक्ति भित्र साथी</p><p>[F#m] [F] [Am] [Bb]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [Am] [Bb]</p>',
  1996,
  'Dm',
  3,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत बिहान',
  'geet-bihan',
  (SELECT id FROM "artist" WHERE slug = 'ynw-melly'),
  '<p>गीत बिहान</p><p>[E] [Bb] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [F#m] [Em]</p>',
  1993,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा मै तिर',
  'hawa-mai-tira',
  (SELECT id FROM "artist" WHERE slug = 'russ'),
  '<p>हावा मै तिर</p><p>[Em] [Bb] [Am] [Bb]</p><p>Lyrics coming soon...</p><p>[Em] [Bb] [Am] [Bb]</p>',
  2007,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी नदी',
  'nadi-nadi',
  (SELECT id FROM "artist" WHERE slug = 'russ'),
  '<p>नदी नदी</p><p>[Am] [D] [G] [Dm]</p><p>Lyrics coming soon...</p><p>[Am] [D] [G] [Dm]</p>',
  2008,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो सम्म साँझ हरू',
  'aago-samma-sanjh-haru',
  (SELECT id FROM "artist" WHERE slug = 'miguel'),
  '<p>आगो सम्म साँझ हरू</p><p>[F] [C] [E] [E]</p><p>Lyrics coming soon...</p><p>[F] [C] [E] [E]</p>',
  1991,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद र नदी',
  'yaad-ra-nadi',
  (SELECT id FROM "artist" WHERE slug = 'miguel'),
  '<p>याद र नदी</p><p>[Bb] [D] [D] [Em]</p><p>Lyrics coming soon...</p><p>[Bb] [D] [D] [Em]</p>',
  2002,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो याद',
  'haaso-yaad',
  (SELECT id FROM "artist" WHERE slug = 'pharrell-williams'),
  '<p>हाँसो याद</p><p>[Bb] [E] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[Bb] [E] [F#m] [F#m]</p>',
  1991,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद हाम्रो लाई',
  'yaad-hamro-lai',
  (SELECT id FROM "artist" WHERE slug = 'pharrell-williams'),
  '<p>याद हाम्रो लाई</p><p>[E] [Em] [E] [G]</p><p>Lyrics coming soon...</p><p>[E] [Em] [E] [G]</p>',
  1992,
  'E',
  4,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा प्रेम',
  'aankha-prem',
  (SELECT id FROM "artist" WHERE slug = 'labrinth'),
  '<p>आँखा प्रेम</p><p>[Dm] [Dm] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [Dm] [E]</p>',
  2024,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी सम्म बिना तिर',
  'nadi-samma-bina-tira',
  (SELECT id FROM "artist" WHERE slug = 'labrinth'),
  '<p>नदी सम्म बिना तिर</p><p>[C] [F] [C] [Dm]</p><p>Lyrics coming soon...</p><p>[C] [F] [C] [Dm]</p>',
  2024,
  'Am',
  5,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय माया हिमाल',
  'hridaya-maya-himal',
  (SELECT id FROM "artist" WHERE slug = 'julia-michaels'),
  '<p>हृदय माया हिमाल</p><p>[G] [Bb] [G] [Am]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [G] [Am]</p>',
  2019,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी नै तिमी',
  'jindagi-nai-timi',
  (SELECT id FROM "artist" WHERE slug = 'julia-michaels'),
  '<p>जिन्दगी नै तिमी</p><p>[G] [G] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[G] [G] [F#m] [F#m]</p>',
  2024,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा र',
  'bharosa-ra',
  (SELECT id FROM "artist" WHERE slug = 'hozier'),
  '<p>भरोसा र</p><p>[Bb] [Em] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [Em] [Dm] [G]</p>',
  2017,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा नै नाच्छ',
  'hawa-nai-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'hozier'),
  '<p>हावा नै नाच्छ</p><p>[Em] [D] [G] [Am]</p><p>Lyrics coming soon...</p><p>[Em] [D] [G] [Am]</p>',
  2013,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन हावा',
  'din-hawa',
  (SELECT id FROM "artist" WHERE slug = 'dermot-kennedy'),
  '<p>दिन हावा</p><p>[Em] [G] [D] [C]</p><p>Lyrics coming soon...</p><p>[Em] [G] [D] [C]</p>',
  1992,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल को',
  'himal-ko',
  (SELECT id FROM "artist" WHERE slug = 'dermot-kennedy'),
  '<p>हिमाल को</p><p>[E] [E] [D] [E]</p><p>Lyrics coming soon...</p><p>[E] [E] [D] [E]</p>',
  1994,
  'E',
  3,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति के',
  'shanti-ke',
  (SELECT id FROM "artist" WHERE slug = 'dj-khaled'),
  '<p>शान्ति के</p><p>[G] [C] [Dm] [Am]</p><p>Lyrics coming soon...</p><p>[G] [C] [Dm] [Am]</p>',
  2013,
  'F',
  5,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो सम्म आगो तिम्रो',
  'mero-samma-aago-timro',
  (SELECT id FROM "artist" WHERE slug = 'dj-khaled'),
  '<p>मेरो सम्म आगो तिम्रो</p><p>[F] [Bb] [E] [C]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [E] [C]</p>',
  2021,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी संग हिमाल शक्ति पग्लिन्छ',
  'pani-sanga-himal-shakti-paglindchha',
  (SELECT id FROM "artist" WHERE slug = 'duki'),
  '<p>पानी संग हिमाल शक्ति पग्लिन्छ</p><p>[G] [Em] [C] [Em]</p><p>Lyrics coming soon...</p><p>[G] [Em] [C] [Em]</p>',
  1992,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान पहाड',
  'bihan-pahad',
  (SELECT id FROM "artist" WHERE slug = 'duki'),
  '<p>बिहान पहाड</p><p>[Dm] [Em] [Bb] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [Em] [Bb] [Em]</p>',
  1991,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो पानी शक्ति हिँड्छ',
  'haaso-pani-shakti-hindchha',
  (SELECT id FROM "artist" WHERE slug = 'brent-faiyaz'),
  '<p>हाँसो पानी शक्ति हिँड्छ</p><p>[F] [D] [C] [G]</p><p>Lyrics coming soon...</p><p>[F] [D] [C] [G]</p>',
  1995,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश भरोसा आयो',
  'akash-bharosa-aayo',
  (SELECT id FROM "artist" WHERE slug = 'brent-faiyaz'),
  '<p>आकाश भरोसा आयो</p><p>[D] [Am] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[D] [Am] [Bb] [F]</p>',
  2020,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून नै रंग सुक्छ',
  'joon-nai-rang-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'kevin-gates'),
  '<p>जून नै रंग सुक्छ</p><p>[Dm] [F] [Bb] [Bb]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [Bb] [Bb]</p>',
  1994,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड हिमाल',
  'bichhod-himal',
  (SELECT id FROM "artist" WHERE slug = 'kevin-gates'),
  '<p>बिछोड हिमाल</p><p>[C] [Em] [F] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [Em] [F] [Bb]</p>',
  2023,
  'G',
  5,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड के',
  'bichhod-ke',
  (SELECT id FROM "artist" WHERE slug = 'bring-me-the-horizon'),
  '<p>बिछोड के</p><p>[Am] [C] [C] [C]</p><p>Lyrics coming soon...</p><p>[Am] [C] [C] [C]</p>',
  2007,
  'D',
  1,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो लाई',
  'mero-lai',
  (SELECT id FROM "artist" WHERE slug = 'bring-me-the-horizon'),
  '<p>मेरो लाई</p><p>[D] [Am] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[D] [Am] [Dm] [D]</p>',
  1994,
  'Am',
  5,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया भरोसा भित्र बल्छ',
  'maya-bharosa-bhitra-balchha',
  (SELECT id FROM "artist" WHERE slug = 'khea'),
  '<p>माया भरोसा भित्र बल्छ</p><p>[D] [G] [E] [C]</p><p>Lyrics coming soon...</p><p>[D] [G] [E] [C]</p>',
  1996,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी पानी सहर',
  'jindagi-pani-sahar',
  (SELECT id FROM "artist" WHERE slug = 'khea'),
  '<p>जिन्दगी पानी सहर</p><p>[C] [Am] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[C] [Am] [Bb] [C]</p>',
  2020,
  'Bb',
  3,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी पनि',
  'sathi-pani',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-shreya-ghoshal-dhumketu'),
  '<p>साथी पनि</p><p>[C] [C] [D] [Em]</p><p>Lyrics coming soon...</p><p>[C] [C] [D] [Em]</p>',
  2007,
  'C',
  1,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा जून लाई मै',
  'hawa-joon-lai-mai',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-shreya-ghoshal-dhumketu'),
  '<p>हावा जून लाई मै</p><p>[F#m] [Dm] [F] [D]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [F] [D]</p>',
  2008,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया आकाश बिस्तर्छ',
  'maya-akash-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-cocktail-2'),
  '<p>माया आकाश बिस्तर्छ</p><p>[G] [G] [Em] [E]</p><p>Lyrics coming soon...</p><p>[G] [G] [Em] [E]</p>',
  2007,
  'A',
  2,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून ज्ञान पात संग',
  'joon-gyan-paat-sanga',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-cocktail-2'),
  '<p>जून ज्ञान पात संग</p><p>[F] [D] [E] [Dm]</p><p>Lyrics coming soon...</p><p>[F] [D] [E] [Dm]</p>',
  1996,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल चाँदनी अघि हरू',
  'phool-chandani-aghi-haru',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-easy-bollywood-guitar-lesson-shekhar-ravjiani'),
  '<p>फूल चाँदनी अघि हरू</p><p>[G] [Em] [Bb] [D]</p><p>Lyrics coming soon...</p><p>[G] [Em] [Bb] [D]</p>',
  2021,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा आकाश ज्ञान पात',
  'katha-akash-gyan-paat',
  (SELECT id FROM "artist" WHERE slug = 'arijit-singh-easy-bollywood-guitar-lesson-shekhar-ravjiani'),
  '<p>कथा आकाश ज्ञान पात</p><p>[F#m] [E] [G] [E]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [G] [E]</p>',
  2013,
  'G',
  1,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून परीक्षा जिन्दगी सम्म बग्छ',
  'joon-pariksha-jindagi-samma-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'harnoor-shreya-ghoshal-bhool-chuk-maaf'),
  '<p>जून परीक्षा जिन्दगी सम्म बग्छ</p><p>[F#m] [F#m] [Em] [E]</p><p>Lyrics coming soon...</p><p>[F#m] [F#m] [Em] [E]</p>',
  2024,
  'C',
  5,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु भित्र हाम्रो हरू बोल्छ',
  'mutu-bhitra-hamro-haru-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'harnoor-shreya-ghoshal-bhool-chuk-maaf'),
  '<p>मुटु भित्र हाम्रो हरू बोल्छ</p><p>[F#m] [Em] [D] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [Em] [D] [C]</p>',
  2016,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो लाई',
  'aago-lai',
  (SELECT id FROM "artist" WHERE slug = 'kishore-kumar-kalaakaar'),
  '<p>आगो लाई</p><p>[G] [C] [E] [E]</p><p>Lyrics coming soon...</p><p>[G] [C] [E] [E]</p>',
  1991,
  'Bb',
  2,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी हृदय के शक्ति हिँड्छ',
  'nadi-hridaya-ke-shakti-hindchha',
  (SELECT id FROM "artist" WHERE slug = 'kishore-kumar-kalaakaar'),
  '<p>नदी हृदय के शक्ति हिँड्छ</p><p>[Dm] [Bb] [Dm] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [Dm] [C]</p>',
  2010,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा भित्र जिन्दगी आँखा',
  'yatra-bhitra-jindagi-aankha',
  (SELECT id FROM "artist" WHERE slug = 'sachin-jigar-teri-baaton-mein-aisa-uljha-jiya'),
  '<p>यात्रा भित्र जिन्दगी आँखा</p><p>[E] [D] [Am] [Am]</p><p>Lyrics coming soon...</p><p>[E] [D] [Am] [Am]</p>',
  2011,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान सम्म हावा',
  'muskan-samma-hawa',
  (SELECT id FROM "artist" WHERE slug = 'sachin-jigar-teri-baaton-mein-aisa-uljha-jiya'),
  '<p>मुस्कान सम्म हावा</p><p>[F#m] [F] [Em] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [Em] [Em]</p>',
  2024,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया संग',
  'maya-sanga-294-0',
  (SELECT id FROM "artist" WHERE slug = 'migos'),
  '<p>माया संग</p><p>[Dm] [E] [E] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [E] [E] [Dm]</p>',
  2015,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी देखि',
  'timi-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'migos'),
  '<p>तिमी देखि</p><p>[C] [Em] [F#m] [G]</p><p>Lyrics coming soon...</p><p>[C] [Em] [F#m] [G]</p>',
  2016,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा हाँसो पानी',
  'bharosa-haaso-pani',
  (SELECT id FROM "artist" WHERE slug = 'quot-weird-al-quot-yankovic'),
  '<p>भरोसा हाँसो पानी</p><p>[F#m] [Bb] [G] [D]</p><p>Lyrics coming soon...</p><p>[F#m] [Bb] [G] [D]</p>',
  1998,
  'E',
  1,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा हिमाल बिना',
  'aankha-himal-bina',
  (SELECT id FROM "artist" WHERE slug = 'quot-weird-al-quot-yankovic'),
  '<p>आँखा हिमाल बिना</p><p>[Bb] [Am] [E] [D]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [E] [D]</p>',
  2000,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी जस्तो ले आशा',
  'jindagi-jasto-le-asha',
  (SELECT id FROM "artist" WHERE slug = 'neil-young'),
  '<p>जिन्दगी जस्तो ले आशा</p><p>[Dm] [G] [Em] [D]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [Em] [D]</p>',
  2022,
  'F',
  2,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय नै र पानी दौडन्छ',
  'hridaya-nai-ra-pani-daudanchha',
  (SELECT id FROM "artist" WHERE slug = 'neil-young'),
  '<p>हृदय नै र पानी दौडन्छ</p><p>[C] [D] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [D] [Dm] [Bb]</p>',
  1991,
  'Bb',
  4,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान अघि बिहान आकाश',
  'gyan-aghi-bihan-akash',
  (SELECT id FROM "artist" WHERE slug = 'cat-stevens'),
  '<p>ज्ञान अघि बिहान आकाश</p><p>[C] [F#m] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [F#m] [Bb]</p>',
  2013,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो तिम्रो कथा तिर',
  'mero-timro-katha-tira',
  (SELECT id FROM "artist" WHERE slug = 'cat-stevens'),
  '<p>मेरो तिम्रो कथा तिर</p><p>[F#m] [Dm] [D] [E]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [D] [E]</p>',
  2020,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया जस्तो हाँसो दौडन्छ',
  'maya-jasto-haaso-daudanchha',
  (SELECT id FROM "artist" WHERE slug = 'james-taylor'),
  '<p>माया जस्तो हाँसो दौडन्छ</p><p>[F#m] [E] [E] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [E] [Em]</p>',
  1990,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा र',
  'yatra-ra',
  (SELECT id FROM "artist" WHERE slug = 'james-taylor'),
  '<p>यात्रा र</p><p>[F#m] [G] [F] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [F] [Em]</p>',
  2008,
  'Em',
  1,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो माया',
  'aago-maya',
  (SELECT id FROM "artist" WHERE slug = 'johnny-cash'),
  '<p>आगो माया</p><p>[Am] [F#m] [D] [G]</p><p>Lyrics coming soon...</p><p>[Am] [F#m] [D] [G]</p>',
  2005,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु मन संग',
  'mutu-man-sanga',
  (SELECT id FROM "artist" WHERE slug = 'johnny-cash'),
  '<p>मुटु मन संग</p><p>[Bb] [C] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[Bb] [C] [Am] [F#m]</p>',
  2008,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा तिर',
  'aankha-tira',
  (SELECT id FROM "artist" WHERE slug = 'willie-nelson'),
  '<p>आँखा तिर</p><p>[C] [C] [D] [Em]</p><p>Lyrics coming soon...</p><p>[C] [C] [D] [Em]</p>',
  1993,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान माया भित्र सहर',
  'muskan-maya-bhitra-sahar',
  (SELECT id FROM "artist" WHERE slug = 'willie-nelson'),
  '<p>मुस्कान माया भित्र सहर</p><p>[D] [E] [Dm] [Am]</p><p>Lyrics coming soon...</p><p>[D] [E] [Dm] [Am]</p>',
  2001,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात र बढ्छ',
  'paat-ra-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'creedence-clearwater-revival'),
  '<p>पात र बढ्छ</p><p>[F] [Dm] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [E] [Bb]</p>',
  1997,
  'D',
  1,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य माथि',
  'satya-mathi',
  (SELECT id FROM "artist" WHERE slug = 'creedence-clearwater-revival'),
  '<p>सत्य माथि</p><p>[F] [D] [G] [F]</p><p>Lyrics coming soon...</p><p>[F] [D] [G] [F]</p>',
  1992,
  'Em',
  5,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा भित्र मन पछि उड्छ',
  'aankha-bhitra-man-pachi-udchha',
  (SELECT id FROM "artist" WHERE slug = 'the-kinks'),
  '<p>आँखा भित्र मन पछि उड्छ</p><p>[F#m] [F#m] [D] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [F#m] [D] [F]</p>',
  2004,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा प्रेम अघि चाँदनी',
  'yatra-prem-aghi-chandani',
  (SELECT id FROM "artist" WHERE slug = 'the-kinks'),
  '<p>यात्रा प्रेम अघि चाँदनी</p><p>[E] [Am] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[E] [Am] [Bb] [G]</p>',
  2022,
  'G',
  3,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा फूल गयो',
  'yatra-phool-gayo',
  (SELECT id FROM "artist" WHERE slug = 'the-who'),
  '<p>यात्रा फूल गयो</p><p>[Em] [Am] [F] [G]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [F] [G]</p>',
  1995,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान संग माथि',
  'udan-sanga-mathi',
  (SELECT id FROM "artist" WHERE slug = 'the-who'),
  '<p>उडान संग माथि</p><p>[Am] [Am] [G] [F#m]</p><p>Lyrics coming soon...</p><p>[Am] [Am] [G] [F#m]</p>',
  1999,
  'Am',
  5,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो लाई',
  'hamro-lai',
  (SELECT id FROM "artist" WHERE slug = 'the-doors'),
  '<p>हाम्रो लाई</p><p>[E] [Am] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[E] [Am] [Em] [Am]</p>',
  1998,
  'E',
  2,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी बिछोड जून',
  'jindagi-bichhod-joon',
  (SELECT id FROM "artist" WHERE slug = 'the-doors'),
  '<p>जिन्दगी बिछोड जून</p><p>[Em] [Em] [Am] [E]</p><p>Lyrics coming soon...</p><p>[Em] [Em] [Am] [E]</p>',
  2014,
  'Em',
  3,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा जून रात र',
  'aankha-joon-raat-ra',
  (SELECT id FROM "artist" WHERE slug = 'jimi-hendrix'),
  '<p>आँखा जून रात र</p><p>[D] [Am] [C] [F]</p><p>Lyrics coming soon...</p><p>[D] [Am] [C] [F]</p>',
  2001,
  'A',
  5,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान आँखा जिन्दगी',
  'udan-aankha-jindagi',
  (SELECT id FROM "artist" WHERE slug = 'jimi-hendrix'),
  '<p>उडान आँखा जिन्दगी</p><p>[C] [E] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[C] [E] [Em] [Am]</p>',
  2003,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर ले बिहान',
  'sahar-le-bihan',
  (SELECT id FROM "artist" WHERE slug = 'eric-clapton'),
  '<p>सहर ले बिहान</p><p>[Dm] [F] [C] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [C] [Em]</p>',
  1998,
  'F',
  4,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी जस्तो आयो',
  'timi-jasto-aayo',
  (SELECT id FROM "artist" WHERE slug = 'eric-clapton'),
  '<p>तिमी जस्तो आयो</p><p>[Dm] [D] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [D] [F#m] [Em]</p>',
  2014,
  'F',
  5,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया मेरो सम्म सम्म',
  'maya-mero-samma-samma',
  (SELECT id FROM "artist" WHERE slug = 'van-morrison'),
  '<p>माया मेरो सम्म सम्म</p><p>[F] [Bb] [C] [Em]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [C] [Em]</p>',
  2007,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति आँखा',
  'shakti-aankha',
  (SELECT id FROM "artist" WHERE slug = 'van-morrison'),
  '<p>शक्ति आँखा</p><p>[Em] [C] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[Em] [C] [Am] [F#m]</p>',
  2020,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी मन पहाड',
  'pani-man-pahad',
  (SELECT id FROM "artist" WHERE slug = 'otis-redding'),
  '<p>पानी मन पहाड</p><p>[Bb] [D] [F] [C]</p><p>Lyrics coming soon...</p><p>[Bb] [D] [F] [C]</p>',
  2018,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी पछि तिर ले',
  'pani-pachi-tira-le',
  (SELECT id FROM "artist" WHERE slug = 'otis-redding'),
  '<p>पानी पछि तिर ले</p><p>[Em] [C] [Am] [G]</p><p>Lyrics coming soon...</p><p>[Em] [C] [Am] [G]</p>',
  2011,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल सम्म हाँस्छ',
  'badal-samma-haschha',
  (SELECT id FROM "artist" WHERE slug = 'sam-cooke'),
  '<p>बादल सम्म हाँस्छ</p><p>[Am] [F] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[Am] [F] [F#m] [C]</p>',
  2004,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून संग बढ्छ',
  'joon-sanga-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'sam-cooke'),
  '<p>जून संग बढ्छ</p><p>[E] [Em] [Em] [Dm]</p><p>Lyrics coming soon...</p><p>[E] [Em] [Em] [Dm]</p>',
  2006,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान मा आगो साथी',
  'udan-ma-aago-sathi',
  (SELECT id FROM "artist" WHERE slug = 'aretha-franklin'),
  '<p>उडान मा आगो साथी</p><p>[C] [G] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[C] [G] [F#m] [F#m]</p>',
  2018,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम पछि बढ्छ',
  'prem-pachi-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'aretha-franklin'),
  '<p>प्रेम पछि बढ्छ</p><p>[Dm] [C] [Em] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [C] [Em] [F]</p>',
  2021,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा मेरो ले हरू',
  'asha-mero-le-haru',
  (SELECT id FROM "artist" WHERE slug = 'stevie-wonder'),
  '<p>आशा मेरो ले हरू</p><p>[Bb] [Am] [C] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [C] [F]</p>',
  1994,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी सम्म ले',
  'sathi-samma-le',
  (SELECT id FROM "artist" WHERE slug = 'stevie-wonder'),
  '<p>साथी सम्म ले</p><p>[F#m] [E] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [F#m] [Am]</p>',
  2000,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून भित्र जिन्दगी',
  'joon-bhitra-jindagi',
  (SELECT id FROM "artist" WHERE slug = 'marvin-gaye'),
  '<p>जून भित्र जिन्दगी</p><p>[Em] [Dm] [D] [G]</p><p>Lyrics coming soon...</p><p>[Em] [Dm] [D] [G]</p>',
  2021,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु आशा',
  'mutu-asha',
  (SELECT id FROM "artist" WHERE slug = 'marvin-gaye'),
  '<p>मुटु आशा</p><p>[Dm] [F#m] [G] [D]</p><p>Lyrics coming soon...</p><p>[Dm] [F#m] [G] [D]</p>',
  2018,
  'F',
  2,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु दिन को',
  'mutu-din-ko',
  (SELECT id FROM "artist" WHERE slug = 'bob-marley'),
  '<p>मुटु दिन को</p><p>[F] [F] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[F] [F] [Dm] [E]</p>',
  2019,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत के',
  'geet-ke',
  (SELECT id FROM "artist" WHERE slug = 'bob-marley'),
  '<p>गीत के</p><p>[Dm] [G] [Em] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [Em] [G]</p>',
  2011,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर संग',
  'sahar-sanga',
  (SELECT id FROM "artist" WHERE slug = 'pearl-jam'),
  '<p>सहर संग</p><p>[F] [F#m] [F] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [F] [Bb]</p>',
  2014,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो माथि मुटु परीक्षा फुल्छ',
  'aago-mathi-mutu-pariksha-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'pearl-jam'),
  '<p>आगो माथि मुटु परीक्षा फुल्छ</p><p>[Em] [Am] [D] [E]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [D] [E]</p>',
  1999,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन जस्तो माथि',
  'dhun-jasto-mathi',
  (SELECT id FROM "artist" WHERE slug = 'soundgarden'),
  '<p>धुन जस्तो माथि</p><p>[F] [Dm] [F] [Em]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [F] [Em]</p>',
  2005,
  'G',
  1,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन हाँसो हावा',
  'dhun-haaso-hawa',
  (SELECT id FROM "artist" WHERE slug = 'soundgarden'),
  '<p>धुन हाँसो हावा</p><p>[G] [E] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[G] [E] [F#m] [F#m]</p>',
  2018,
  'E',
  2,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान लाई पानी शान्ति गयो',
  'udan-lai-pani-shanti-gayo',
  (SELECT id FROM "artist" WHERE slug = 'green-day'),
  '<p>उडान लाई पानी शान्ति गयो</p><p>[C] [F#m] [Em] [C]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [Em] [C]</p>',
  2016,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी माथि तिमी',
  'chandani-mathi-timi',
  (SELECT id FROM "artist" WHERE slug = 'green-day'),
  '<p>चाँदनी माथि तिमी</p><p>[E] [Dm] [D] [E]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [D] [E]</p>',
  2018,
  'F',
  5,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना माथि',
  'samjhana-mathi',
  (SELECT id FROM "artist" WHERE slug = 'foo-fighters'),
  '<p>सम्झना माथि</p><p>[E] [Dm] [G] [Em]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [G] [Em]</p>',
  2021,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान सम्झना हृदय आँखा हाँस्छ',
  'gyan-samjhana-hridaya-aankha-haschha',
  (SELECT id FROM "artist" WHERE slug = 'foo-fighters'),
  '<p>ज्ञान सम्झना हृदय आँखा हाँस्छ</p><p>[Dm] [E] [G] [F#m]</p><p>Lyrics coming soon...</p><p>[Dm] [E] [G] [F#m]</p>',
  2010,
  'Em',
  5,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी तिम्रो सम्म',
  'pani-timro-samma',
  (SELECT id FROM "artist" WHERE slug = 'u2'),
  '<p>पानी तिम्रो सम्म</p><p>[C] [F#m] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [Bb] [G]</p>',
  2022,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन के बग्छ',
  'man-ke-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'u2'),
  '<p>मन के बग्छ</p><p>[F#m] [F] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [F] [F#m]</p>',
  2023,
  'Am',
  4,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी मा सज्छ',
  'jindagi-ma-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'rem'),
  '<p>जिन्दगी मा सज्छ</p><p>[E] [C] [Em] [E]</p><p>Lyrics coming soon...</p><p>[E] [C] [Em] [E]</p>',
  2019,
  'Em',
  1,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा उडान तिमी',
  'aankha-udan-timi',
  (SELECT id FROM "artist" WHERE slug = 'rem'),
  '<p>आँखा उडान तिमी</p><p>[E] [D] [F] [G]</p><p>Lyrics coming soon...</p><p>[E] [D] [F] [G]</p>',
  2011,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात पनि',
  'paat-pani',
  (SELECT id FROM "artist" WHERE slug = 'tom-petty'),
  '<p>पात पनि</p><p>[Bb] [G] [Bb] [Bb]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [Bb] [Bb]</p>',
  2024,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा मेरो तिर',
  'yatra-mero-tira',
  (SELECT id FROM "artist" WHERE slug = 'tom-petty'),
  '<p>यात्रा मेरो तिर</p><p>[F#m] [F] [D] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [D] [Am]</p>',
  2019,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु हरू',
  'mutu-haru',
  (SELECT id FROM "artist" WHERE slug = 'bruce-springsteen'),
  '<p>मुटु हरू</p><p>[G] [E] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[G] [E] [Bb] [G]</p>',
  2001,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ तिर भित्र पानी',
  'sanjh-tira-bhitra-pani',
  (SELECT id FROM "artist" WHERE slug = 'bruce-springsteen'),
  '<p>साँझ तिर भित्र पानी</p><p>[G] [Am] [C] [G]</p><p>Lyrics coming soon...</p><p>[G] [Am] [C] [G]</p>',
  1993,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा मुस्कान अघि',
  'hawa-muskan-aghi',
  (SELECT id FROM "artist" WHERE slug = 'billy-joel'),
  '<p>हावा मुस्कान अघि</p><p>[C] [G] [Am] [E]</p><p>Lyrics coming soon...</p><p>[C] [G] [Am] [E]</p>',
  2008,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर पानी नै',
  'sahar-pani-nai',
  (SELECT id FROM "artist" WHERE slug = 'billy-joel'),
  '<p>सहर पानी नै</p><p>[F#m] [D] [F] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [F] [C]</p>',
  1999,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान को जस्तो रात फुल्छ',
  'bihan-ko-jasto-raat-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'paul-simon'),
  '<p>बिहान को जस्तो रात फुल्छ</p><p>[F#m] [Bb] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [Bb] [F#m] [Em]</p>',
  2017,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल संग पात साँझ बल्छ',
  'phool-sanga-paat-sanjh-balchha',
  (SELECT id FROM "artist" WHERE slug = 'paul-simon'),
  '<p>फूल संग पात साँझ बल्छ</p><p>[Am] [Bb] [D] [G]</p><p>Lyrics coming soon...</p><p>[Am] [Bb] [D] [G]</p>',
  2021,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन भित्र शान्ति जस्तो नाच्छ',
  'man-bhitra-shanti-jasto-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'joni-mitchell'),
  '<p>मन भित्र शान्ति जस्तो नाच्छ</p><p>[F] [Em] [G] [Am]</p><p>Lyrics coming soon...</p><p>[F] [Em] [G] [Am]</p>',
  1991,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति पछि साथी बढ्छ',
  'shanti-pachi-sathi-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'joni-mitchell'),
  '<p>शान्ति पछि साथी बढ्छ</p><p>[E] [C] [D] [C]</p><p>Lyrics coming soon...</p><p>[E] [C] [D] [C]</p>',
  2009,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा सम्झना',
  'yatra-samjhana',
  (SELECT id FROM "artist" WHERE slug = 'carole-king'),
  '<p>यात्रा सम्झना</p><p>[Dm] [Em] [G] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [Em] [G] [G]</p>',
  1991,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत र मै उडान',
  'geet-ra-mai-udan',
  (SELECT id FROM "artist" WHERE slug = 'carole-king'),
  '<p>गीत र मै उडान</p><p>[Dm] [E] [Em] [D]</p><p>Lyrics coming soon...</p><p>[Dm] [E] [Em] [D]</p>',
  2012,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर पनि',
  'sahar-pani',
  (SELECT id FROM "artist" WHERE slug = 'jim-croce'),
  '<p>सहर पनि</p><p>[G] [F#m] [E] [G]</p><p>Lyrics coming soon...</p><p>[G] [F#m] [E] [G]</p>',
  1993,
  'Dm',
  2,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो नै',
  'bato-nai',
  (SELECT id FROM "artist" WHERE slug = 'jim-croce'),
  '<p>बाटो नै</p><p>[C] [F#m] [G] [F]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [G] [F]</p>',
  2017,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान नदी ज्ञान जस्तो',
  'udan-nadi-gyan-jasto',
  (SELECT id FROM "artist" WHERE slug = 'gordon-lightfoot'),
  '<p>उडान नदी ज्ञान जस्तो</p><p>[F#m] [E] [D] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [D] [F#m]</p>',
  2024,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल ले',
  'himal-le-327-1',
  (SELECT id FROM "artist" WHERE slug = 'gordon-lightfoot'),
  '<p>हिमाल ले</p><p>[Dm] [G] [C] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [C] [F]</p>',
  1993,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो तिर संग',
  'mero-tira-sanga',
  (SELECT id FROM "artist" WHERE slug = 'jackson-browne'),
  '<p>मेरो तिर संग</p><p>[C] [F#m] [D] [G]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [D] [G]</p>',
  2024,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा बादल बिस्तर्छ',
  'hawa-badal-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'jackson-browne'),
  '<p>हावा बादल बिस्तर्छ</p><p>[D] [Bb] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [Dm] [E]</p>',
  2002,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु संग को उड्छ',
  'mutu-sanga-ko-udchha',
  (SELECT id FROM "artist" WHERE slug = 'tracy-chapman'),
  '<p>मुटु संग को उड्छ</p><p>[E] [F] [Bb] [D]</p><p>Lyrics coming soon...</p><p>[E] [F] [Bb] [D]</p>',
  2005,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर देखि',
  'sahar-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'tracy-chapman'),
  '<p>सहर देखि</p><p>[Am] [E] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[Am] [E] [F#m] [F]</p>',
  2008,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा हिमाल मुटु उड्छ',
  'asha-himal-mutu-udchha',
  (SELECT id FROM "artist" WHERE slug = 'jeff-buckley'),
  '<p>आशा हिमाल मुटु उड्छ</p><p>[F#m] [C] [D] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [C] [D] [C]</p>',
  2016,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य ले आशा पहाड सज्छ',
  'satya-le-asha-pahad-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'jeff-buckley'),
  '<p>सत्य ले आशा पहाड सज्छ</p><p>[F#m] [Em] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [Em] [Em] [Am]</p>',
  1998,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा जून हरू देखि',
  'bharosa-joon-haru-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'nick-drake'),
  '<p>भरोसा जून हरू देखि</p><p>[E] [Bb] [F] [F]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [F] [F]</p>',
  1992,
  'F',
  5,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा हाँसो सम्म मन',
  'aankha-haaso-samma-man',
  (SELECT id FROM "artist" WHERE slug = 'nick-drake'),
  '<p>आँखा हाँसो सम्म मन</p><p>[F] [Em] [D] [D]</p><p>Lyrics coming soon...</p><p>[F] [Em] [D] [D]</p>',
  2013,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा नै शान्ति',
  'bharosa-nai-shanti',
  (SELECT id FROM "artist" WHERE slug = 'elliott-smith'),
  '<p>भरोसा नै शान्ति</p><p>[F] [F] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[F] [F] [Bb] [Am]</p>',
  2015,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल र ले आशा',
  'himal-ra-le-asha',
  (SELECT id FROM "artist" WHERE slug = 'elliott-smith'),
  '<p>हिमाल र ले आशा</p><p>[Em] [C] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[Em] [C] [Em] [Am]</p>',
  1994,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन लाई अघि देखि',
  'din-lai-aghi-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'bon-iver'),
  '<p>दिन लाई अघि देखि</p><p>[Bb] [C] [E] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [C] [E] [G]</p>',
  1996,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा चाँदनी र कथा',
  'yatra-chandani-ra-katha',
  (SELECT id FROM "artist" WHERE slug = 'bon-iver'),
  '<p>यात्रा चाँदनी र कथा</p><p>[F#m] [D] [Am] [E]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [Am] [E]</p>',
  2018,
  'E',
  3,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य देखि हरू',
  'satya-dekhi-haru',
  (SELECT id FROM "artist" WHERE slug = 'jack-johnson'),
  '<p>सत्य देखि हरू</p><p>[E] [G] [Em] [E]</p><p>Lyrics coming soon...</p><p>[E] [G] [Em] [E]</p>',
  2016,
  'Am',
  1,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश नै संग माथि बिझ्छ',
  'akash-nai-sanga-mathi-bijhchha',
  (SELECT id FROM "artist" WHERE slug = 'jack-johnson'),
  '<p>आकाश नै संग माथि बिझ्छ</p><p>[D] [Am] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[D] [Am] [Bb] [C]</p>',
  1993,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा गाउँ',
  'pariksha-gaun',
  (SELECT id FROM "artist" WHERE slug = 'iron-and-wine'),
  '<p>परीक्षा गाउँ</p><p>[D] [Em] [F] [Bb]</p><p>Lyrics coming soon...</p><p>[D] [Em] [F] [Bb]</p>',
  1993,
  'D',
  5,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात बादल पछि आगो',
  'paat-badal-pachi-aago',
  (SELECT id FROM "artist" WHERE slug = 'iron-and-wine'),
  '<p>पात बादल पछि आगो</p><p>[C] [Dm] [F#m] [G]</p><p>Lyrics coming soon...</p><p>[C] [Dm] [F#m] [G]</p>',
  2009,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात ले',
  'raat-le',
  (SELECT id FROM "artist" WHERE slug = 'muddy-waters'),
  '<p>रात ले</p><p>[Dm] [F] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [Bb] [C]</p>',
  1998,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल नै के संग बिझ्छ',
  'badal-nai-ke-sanga-bijhchha',
  (SELECT id FROM "artist" WHERE slug = 'muddy-waters'),
  '<p>बादल नै के संग बिझ्छ</p><p>[Bb] [G] [C] [Dm]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [C] [Dm]</p>',
  2021,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी धुन',
  'timi-dhun',
  (SELECT id FROM "artist" WHERE slug = 'bb-king'),
  '<p>तिमी धुन</p><p>[G] [Dm] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Dm] [D]</p>',
  2016,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात पछि जस्तो कथा',
  'raat-pachi-jasto-katha',
  (SELECT id FROM "artist" WHERE slug = 'bb-king'),
  '<p>रात पछि जस्तो कथा</p><p>[G] [Bb] [Em] [C]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [Em] [C]</p>',
  2002,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात आकाश शान्ति रात',
  'paat-akash-shanti-raat',
  (SELECT id FROM "artist" WHERE slug = 'howlin-wolf'),
  '<p>पात आकाश शान्ति रात</p><p>[F#m] [C] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [C] [Bb] [Am]</p>',
  2014,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा सम्झना देखि तिमी बढ्छ',
  'pariksha-samjhana-dekhi-timi-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'howlin-wolf'),
  '<p>परीक्षा सम्झना देखि तिमी बढ्छ</p><p>[Bb] [F#m] [Bb] [Bb]</p><p>Lyrics coming soon...</p><p>[Bb] [F#m] [Bb] [Bb]</p>',
  2001,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा ले बादल हरू बढ्छ',
  'aankha-le-badal-haru-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'robert-johnson'),
  '<p>आँखा ले बादल हरू बढ्छ</p><p>[F] [Am] [E] [C]</p><p>Lyrics coming soon...</p><p>[F] [Am] [E] [C]</p>',
  2004,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा बिना',
  'asha-bina',
  (SELECT id FROM "artist" WHERE slug = 'robert-johnson'),
  '<p>आशा बिना</p><p>[Dm] [D] [Am] [D]</p><p>Lyrics coming soon...</p><p>[Dm] [D] [Am] [D]</p>',
  1993,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा पछि बोल्छ',
  'asha-pachi-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'lead-belly'),
  '<p>आशा पछि बोल्छ</p><p>[F#m] [F#m] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [F#m] [F#m] [C]</p>',
  2007,
  'A',
  3,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो पछि पछि',
  'bato-pachi-pachi',
  (SELECT id FROM "artist" WHERE slug = 'lead-belly'),
  '<p>बाटो पछि पछि</p><p>[E] [Am] [F] [Dm]</p><p>Lyrics coming soon...</p><p>[E] [Am] [F] [Dm]</p>',
  2024,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल पनि लाई अघि',
  'phool-pani-lai-aghi',
  (SELECT id FROM "artist" WHERE slug = 'the-allman-brothers'),
  '<p>फूल पनि लाई अघि</p><p>[F#m] [E] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [F#m] [F]</p>',
  2019,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ अघि बाटो भरोसा',
  'gaun-aghi-bato-bharosa',
  (SELECT id FROM "artist" WHERE slug = 'the-allman-brothers'),
  '<p>गाउँ अघि बाटो भरोसा</p><p>[Em] [E] [D] [G]</p><p>Lyrics coming soon...</p><p>[Em] [E] [D] [G]</p>',
  2023,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल बाटो बढ्छ',
  'himal-bato-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'lynyrd-skynyrd'),
  '<p>हिमाल बाटो बढ्छ</p><p>[D] [D] [G] [Em]</p><p>Lyrics coming soon...</p><p>[D] [D] [G] [Em]</p>',
  2005,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी ले',
  'jindagi-le',
  (SELECT id FROM "artist" WHERE slug = 'lynyrd-skynyrd'),
  '<p>जिन्दगी ले</p><p>[D] [Bb] [G] [G]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [G] [G]</p>',
  2017,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो सम्म चाँदनी',
  'hamro-samma-chandani',
  (SELECT id FROM "artist" WHERE slug = 'the-band'),
  '<p>हाम्रो सम्म चाँदनी</p><p>[F] [F#m] [Am] [E]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [Am] [E]</p>',
  1994,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा जस्तो नदी साँझ',
  'katha-jasto-nadi-sanjh',
  (SELECT id FROM "artist" WHERE slug = 'the-band'),
  '<p>कथा जस्तो नदी साँझ</p><p>[F] [F] [C] [Em]</p><p>Lyrics coming soon...</p><p>[F] [F] [C] [Em]</p>',
  1994,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी आगो संग लाई बल्छ',
  'timi-aago-sanga-lai-balchha',
  (SELECT id FROM "artist" WHERE slug = 'the-byrds'),
  '<p>तिमी आगो संग लाई बल्छ</p><p>[E] [Bb] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [D] [Bb]</p>',
  2017,
  'Em',
  2,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात जस्तो प्रेम',
  'raat-jasto-prem',
  (SELECT id FROM "artist" WHERE slug = 'the-byrds'),
  '<p>रात जस्तो प्रेम</p><p>[D] [Em] [D] [E]</p><p>Lyrics coming soon...</p><p>[D] [Em] [D] [E]</p>',
  1991,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान भित्र',
  'udan-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'the-animals'),
  '<p>उडान भित्र</p><p>[Bb] [C] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [C] [Bb] [Am]</p>',
  2005,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा हाँसो सम्झना के',
  'hawa-haaso-samjhana-ke',
  (SELECT id FROM "artist" WHERE slug = 'the-animals'),
  '<p>हावा हाँसो सम्झना के</p><p>[Am] [F#m] [Dm] [F#m]</p><p>Lyrics coming soon...</p><p>[Am] [F#m] [Dm] [F#m]</p>',
  2020,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य अघि हावा',
  'satya-aghi-hawa',
  (SELECT id FROM "artist" WHERE slug = 'cream'),
  '<p>सत्य अघि हावा</p><p>[F] [D] [Dm] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [D] [Dm] [F#m]</p>',
  2023,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति सम्झना दिन गाउँ',
  'shanti-samjhana-din-gaun',
  (SELECT id FROM "artist" WHERE slug = 'cream'),
  '<p>शान्ति सम्झना दिन गाउँ</p><p>[E] [Bb] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [Dm] [D]</p>',
  2022,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन नै नै सपना',
  'man-nai-nai-sapana',
  (SELECT id FROM "artist" WHERE slug = 'the-beach-boys'),
  '<p>मन नै नै सपना</p><p>[C] [D] [Am] [G]</p><p>Lyrics coming soon...</p><p>[C] [D] [Am] [G]</p>',
  2014,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी बाटो आयो',
  'chandani-bato-aayo',
  (SELECT id FROM "artist" WHERE slug = 'the-beach-boys'),
  '<p>चाँदनी बाटो आयो</p><p>[Dm] [C] [D] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [C] [D] [F]</p>',
  2006,
  'A',
  4,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो नदी मेरो',
  'hamro-nadi-mero',
  (SELECT id FROM "artist" WHERE slug = 'elvis-presley'),
  '<p>हाम्रो नदी मेरो</p><p>[Dm] [C] [Em] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [C] [Em] [F]</p>',
  2023,
  'D',
  4,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान उडान सपना',
  'gyan-udan-sapana',
  (SELECT id FROM "artist" WHERE slug = 'elvis-presley'),
  '<p>ज्ञान उडान सपना</p><p>[D] [Em] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[D] [Em] [F#m] [F#m]</p>',
  2022,
  'D',
  3,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात नै बाटो',
  'paat-nai-bato',
  (SELECT id FROM "artist" WHERE slug = 'chuck-berry'),
  '<p>पात नै बाटो</p><p>[Bb] [F] [Em] [E]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [Em] [E]</p>',
  1993,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान जस्तो तिम्रो',
  'gyan-jasto-timro',
  (SELECT id FROM "artist" WHERE slug = 'chuck-berry'),
  '<p>ज्ञान जस्तो तिम्रो</p><p>[C] [Bb] [D] [G]</p><p>Lyrics coming soon...</p><p>[C] [Bb] [D] [G]</p>',
  2000,
  'E',
  4,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया नदी मै बाटो',
  'maya-nadi-mai-bato',
  (SELECT id FROM "artist" WHERE slug = 'frank-sinatra'),
  '<p>माया नदी मै बाटो</p><p>[Bb] [Bb] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [Bb] [Em] [Am]</p>',
  2016,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा जून र जस्तो बिझ्छ',
  'hawa-joon-ra-jasto-bijhchha',
  (SELECT id FROM "artist" WHERE slug = 'frank-sinatra'),
  '<p>हावा जून र जस्तो बिझ्छ</p><p>[Em] [Am] [F#m] [D]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [F#m] [D]</p>',
  1999,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति पनि गाउँछ',
  'shanti-pani-gaunchha',
  (SELECT id FROM "artist" WHERE slug = '1974-ad'),
  '<p>शान्ति पनि गाउँछ</p><p>[F#m] [Dm] [Dm] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [Dm] [C]</p>',
  2015,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना शक्ति',
  'samjhana-shakti',
  (SELECT id FROM "artist" WHERE slug = '1974-ad'),
  '<p>सम्झना शक्ति</p><p>[Dm] [Em] [D] [F#m]</p><p>Lyrics coming soon...</p><p>[Dm] [Em] [D] [F#m]</p>',
  2018,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी मुटु साँझ परीक्षा',
  'pani-mutu-sanjh-pariksha',
  (SELECT id FROM "artist" WHERE slug = 'aruna-lama'),
  '<p>पानी मुटु साँझ परीक्षा</p><p>[Dm] [F#m] [Em] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [F#m] [Em] [G]</p>',
  2006,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी र',
  'pani-ra',
  (SELECT id FROM "artist" WHERE slug = 'aruna-lama'),
  '<p>पानी र</p><p>[Em] [Dm] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[Em] [Dm] [Dm] [Bb]</p>',
  2014,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा धुन सुक्छ',
  'hawa-dhun-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'nati-kaji'),
  '<p>हावा धुन सुक्छ</p><p>[Bb] [C] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[Bb] [C] [E] [Bb]</p>',
  1990,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात र मुस्कान',
  'paat-ra-muskan',
  (SELECT id FROM "artist" WHERE slug = 'nati-kaji'),
  '<p>पात र मुस्कान</p><p>[Dm] [Dm] [C] [F#m]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [C] [F#m]</p>',
  2015,
  'A',
  1,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ बाटो को को',
  'gaun-bato-ko-ko',
  (SELECT id FROM "artist" WHERE slug = 'gopal-yonjan'),
  '<p>गाउँ बाटो को को</p><p>[Am] [Em] [Em] [Em]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [Em] [Em]</p>',
  2005,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा नै लाई दौडन्छ',
  'katha-nai-lai-daudanchha',
  (SELECT id FROM "artist" WHERE slug = 'gopal-yonjan'),
  '<p>कथा नै लाई दौडन्छ</p><p>[D] [Em] [Dm] [C]</p><p>Lyrics coming soon...</p><p>[D] [Em] [Dm] [C]</p>',
  1996,
  'D',
  1,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति देखि उडान',
  'shanti-dekhi-udan',
  (SELECT id FROM "artist" WHERE slug = 'karma'),
  '<p>शान्ति देखि उडान</p><p>[E] [D] [Em] [F]</p><p>Lyrics coming soon...</p><p>[E] [D] [Em] [F]</p>',
  2010,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना जस्तो भित्र पनि',
  'samjhana-jasto-bhitra-pani',
  (SELECT id FROM "artist" WHERE slug = 'karma'),
  '<p>सम्झना जस्तो भित्र पनि</p><p>[C] [E] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [E] [F#m] [Bb]</p>',
  2024,
  'C',
  1,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना तिर नाच्छ',
  'sapana-tira-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'swoopna-suman'),
  '<p>सपना तिर नाच्छ</p><p>[Dm] [E] [Dm] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [E] [Dm] [C]</p>',
  2022,
  'Em',
  1,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग पात अघि आयो',
  'rang-paat-aghi-aayo',
  (SELECT id FROM "artist" WHERE slug = 'swoopna-suman'),
  '<p>रंग पात अघि आयो</p><p>[D] [C] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[D] [C] [F#m] [F#m]</p>',
  1996,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी लाई मै फुल्छ',
  'nadi-lai-mai-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'the-elements'),
  '<p>नदी लाई मै फुल्छ</p><p>[D] [F#m] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [F] [F#m]</p>',
  2018,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान सम्म',
  'bihan-samma',
  (SELECT id FROM "artist" WHERE slug = 'the-elements'),
  '<p>बिहान सम्म</p><p>[D] [C] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[D] [C] [Bb] [C]</p>',
  2007,
  'E',
  4,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात हरू फूल',
  'paat-haru-phool',
  (SELECT id FROM "artist" WHERE slug = 'bipul-chettri'),
  '<p>पात हरू फूल</p><p>[Em] [Em] [Am] [Am]</p><p>Lyrics coming soon...</p><p>[Em] [Em] [Am] [Am]</p>',
  1992,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड आशा मै नाच्छ',
  'bichhod-asha-mai-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'bipul-chettri'),
  '<p>बिछोड आशा मै नाच्छ</p><p>[G] [Am] [F#m] [D]</p><p>Lyrics coming soon...</p><p>[G] [Am] [F#m] [D]</p>',
  1990,
  'Em',
  5,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय साथी',
  'hridaya-sathi',
  (SELECT id FROM "artist" WHERE slug = 'bartika-eam-rai'),
  '<p>हृदय साथी</p><p>[Dm] [G] [C] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [C] [Dm]</p>',
  2011,
  'Bb',
  5,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात याद संग बग्छ',
  'raat-yaad-sanga-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'bartika-eam-rai'),
  '<p>रात याद संग बग्छ</p><p>[F#m] [G] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [Bb] [Am]</p>',
  2023,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा देखि',
  'pariksha-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'sajjan-raj-vaidya'),
  '<p>परीक्षा देखि</p><p>[Dm] [Em] [C] [F]</p><p>Lyrics coming soon...</p><p>[Dm] [Em] [C] [F]</p>',
  2008,
  'Am',
  4,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान ज्ञान ले पछि',
  'muskan-gyan-le-pachi',
  (SELECT id FROM "artist" WHERE slug = 'sajjan-raj-vaidya'),
  '<p>मुस्कान ज्ञान ले पछि</p><p>[E] [F] [Dm] [Em]</p><p>Lyrics coming soon...</p><p>[E] [F] [Dm] [Em]</p>',
  2009,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा तिर हरू बाटो',
  'asha-tira-haru-bato',
  (SELECT id FROM "artist" WHERE slug = 'yama-buddha'),
  '<p>आशा तिर हरू बाटो</p><p>[G] [Dm] [F] [G]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [F] [G]</p>',
  2006,
  'Em',
  1,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिम्रो सहर हावा',
  'timro-sahar-hawa',
  (SELECT id FROM "artist" WHERE slug = 'yama-buddha'),
  '<p>तिम्रो सहर हावा</p><p>[Em] [Am] [Am] [F]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [Am] [F]</p>',
  1990,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी हरू सम्म परीक्षा',
  'chandani-haru-samma-pariksha',
  (SELECT id FROM "artist" WHERE slug = 'nepsy'),
  '<p>चाँदनी हरू सम्म परीक्षा</p><p>[G] [Bb] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [Dm] [G]</p>',
  2021,
  'Am',
  1,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी याद',
  'jindagi-yaad',
  (SELECT id FROM "artist" WHERE slug = 'nepsy'),
  '<p>जिन्दगी याद</p><p>[F] [Bb] [Dm] [Dm]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [Dm] [Dm]</p>',
  2000,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान जस्तो र माथि',
  'udan-jasto-ra-mathi',
  (SELECT id FROM "artist" WHERE slug = 'tribal-rain'),
  '<p>उडान जस्तो र माथि</p><p>[F#m] [D] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [D] [Bb]</p>',
  2001,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड पछि को बढ्छ',
  'bichhod-pachi-ko-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'tribal-rain'),
  '<p>बिछोड पछि को बढ्छ</p><p>[Dm] [F] [D] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [D] [Em]</p>',
  1992,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना को को बल्छ',
  'sapana-ko-ko-balchha',
  (SELECT id FROM "artist" WHERE slug = 'kushmanda'),
  '<p>सपना को को बल्छ</p><p>[Am] [F#m] [Am] [F]</p><p>Lyrics coming soon...</p><p>[Am] [F#m] [Am] [F]</p>',
  2007,
  'E',
  4,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात दिन गीत',
  'paat-din-geet',
  (SELECT id FROM "artist" WHERE slug = 'kushmanda'),
  '<p>पात दिन गीत</p><p>[Em] [G] [G] [C]</p><p>Lyrics coming soon...</p><p>[Em] [G] [G] [C]</p>',
  1999,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी पछि',
  'jindagi-pachi',
  (SELECT id FROM "artist" WHERE slug = 'crossroads'),
  '<p>जिन्दगी पछि</p><p>[Em] [E] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[Em] [E] [Dm] [E]</p>',
  2004,
  'Em',
  3,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल बिना देखि',
  'badal-bina-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'crossroads'),
  '<p>बादल बिना देखि</p><p>[F#m] [D] [G] [Dm]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [G] [Dm]</p>',
  2006,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान र रात',
  'udan-ra-raat',
  (SELECT id FROM "artist" WHERE slug = 'chimney'),
  '<p>उडान र रात</p><p>[Am] [Em] [Dm] [Am]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [Dm] [Am]</p>',
  2015,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी बादल बल्छ',
  'pani-badal-balchha',
  (SELECT id FROM "artist" WHERE slug = 'chimney'),
  '<p>पानी बादल बल्छ</p><p>[C] [Bb] [F] [Em]</p><p>Lyrics coming soon...</p><p>[C] [Bb] [F] [Em]</p>',
  2013,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया ले',
  'maya-le',
  (SELECT id FROM "artist" WHERE slug = 'night'),
  '<p>माया ले</p><p>[Dm] [Bb] [Em] [Bb]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [Em] [Bb]</p>',
  1999,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति र उडान',
  'shakti-ra-udan',
  (SELECT id FROM "artist" WHERE slug = 'night'),
  '<p>शक्ति र उडान</p><p>[G] [C] [C] [Am]</p><p>Lyrics coming soon...</p><p>[G] [C] [C] [Am]</p>',
  2022,
  'F',
  5,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम हाम्रो मुटु रुन्छ',
  'prem-hamro-mutu-runchha',
  (SELECT id FROM "artist" WHERE slug = 'ashish-rana'),
  '<p>प्रेम हाम्रो मुटु रुन्छ</p><p>[F] [F#m] [F] [F]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [F] [F]</p>',
  2019,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून सपना तिमी को',
  'joon-sapana-timi-ko',
  (SELECT id FROM "artist" WHERE slug = 'ashish-rana'),
  '<p>जून सपना तिमी को</p><p>[Dm] [F] [C] [G]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [C] [G]</p>',
  2008,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना नै सम्म हाँसो बोल्छ',
  'samjhana-nai-samma-haaso-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'suraj-thapa'),
  '<p>सम्झना नै सम्म हाँसो बोल्छ</p><p>[G] [D] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[G] [D] [D] [Dm]</p>',
  2022,
  'Bb',
  1,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा के आगो बिस्तर्छ',
  'asha-ke-aago-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'suraj-thapa'),
  '<p>आशा के आगो बिस्तर्छ</p><p>[Dm] [Em] [Am] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [Em] [Am] [C]</p>',
  2015,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी नै देखि',
  'chandani-nai-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'kamal-rai'),
  '<p>चाँदनी नै देखि</p><p>[D] [Bb] [D] [Em]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [D] [Em]</p>',
  2013,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा मेरो गयो',
  'hawa-mero-gayo',
  (SELECT id FROM "artist" WHERE slug = 'kamal-rai'),
  '<p>हावा मेरो गयो</p><p>[Bb] [Dm] [D] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [D] [G]</p>',
  2021,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो सम्म मन',
  'haaso-samma-man',
  (SELECT id FROM "artist" WHERE slug = 'vice-versa'),
  '<p>हाँसो सम्म मन</p><p>[F] [Dm] [C] [Am]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [C] [Am]</p>',
  1991,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति अघि मन साथी',
  'shanti-aghi-man-sathi',
  (SELECT id FROM "artist" WHERE slug = 'vice-versa'),
  '<p>शान्ति अघि मन साथी</p><p>[Bb] [F] [Em] [F#m]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [Em] [F#m]</p>',
  1993,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात बादल बल्छ',
  'raat-badal-balchha',
  (SELECT id FROM "artist" WHERE slug = 'tandav'),
  '<p>रात बादल बल्छ</p><p>[F#m] [D] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [E] [Bb]</p>',
  1993,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल ले लाई',
  'himal-le-lai',
  (SELECT id FROM "artist" WHERE slug = 'tandav'),
  '<p>हिमाल ले लाई</p><p>[Am] [Am] [E] [F#m]</p><p>Lyrics coming soon...</p><p>[Am] [Am] [E] [F#m]</p>',
  2009,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल र आशा',
  'badal-ra-asha',
  (SELECT id FROM "artist" WHERE slug = 'ashes'),
  '<p>बादल र आशा</p><p>[Bb] [F#m] [Am] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [F#m] [Am] [G]</p>',
  1995,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग आशा साँझ मै',
  'rang-asha-sanjh-mai',
  (SELECT id FROM "artist" WHERE slug = 'ashes'),
  '<p>रंग आशा साँझ मै</p><p>[E] [Bb] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [F#m] [Am]</p>',
  2023,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा सहर जस्तो नै बग्छ',
  'katha-sahar-jasto-nai-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'swar'),
  '<p>कथा सहर जस्तो नै बग्छ</p><p>[E] [Em] [E] [F#m]</p><p>Lyrics coming soon...</p><p>[E] [Em] [E] [F#m]</p>',
  2012,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति कथा फुल्छ',
  'shakti-katha-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'swar'),
  '<p>शक्ति कथा फुल्छ</p><p>[F] [Dm] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [Bb] [Am]</p>',
  2012,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो बिना रुन्छ',
  'hamro-bina-runchha',
  (SELECT id FROM "artist" WHERE slug = 'indrani'),
  '<p>हाम्रो बिना रुन्छ</p><p>[E] [Am] [Dm] [F#m]</p><p>Lyrics coming soon...</p><p>[E] [Am] [Dm] [F#m]</p>',
  2000,
  'Em',
  5,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर मुटु हावा',
  'sahar-mutu-hawa',
  (SELECT id FROM "artist" WHERE slug = 'indrani'),
  '<p>सहर मुटु हावा</p><p>[E] [Am] [Dm] [C]</p><p>Lyrics coming soon...</p><p>[E] [Am] [Dm] [C]</p>',
  2019,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत मा',
  'geet-ma',
  (SELECT id FROM "artist" WHERE slug = 'mukti-shakya'),
  '<p>गीत मा</p><p>[D] [D] [D] [C]</p><p>Lyrics coming soon...</p><p>[D] [D] [D] [C]</p>',
  1994,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग र लाई बिहान',
  'rang-ra-lai-bihan',
  (SELECT id FROM "artist" WHERE slug = 'mukti-shakya'),
  '<p>रंग र लाई बिहान</p><p>[Dm] [G] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [G] [D] [Dm]</p>',
  1996,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी परीक्षा भरोसा नै पग्लिन्छ',
  'jindagi-pariksha-bharosa-nai-paglindchha',
  (SELECT id FROM "artist" WHERE slug = 'sugam-pokharel'),
  '<p>जिन्दगी परीक्षा भरोसा नै पग्लिन्छ</p><p>[Bb] [G] [C] [Dm]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [C] [Dm]</p>',
  1998,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति पनि नै हावा',
  'shanti-pani-nai-hawa',
  (SELECT id FROM "artist" WHERE slug = 'sugam-pokharel'),
  '<p>शान्ति पनि नै हावा</p><p>[G] [Dm] [Em] [Bb]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Em] [Bb]</p>',
  2006,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी आगो जस्तो तिम्रो',
  'jindagi-aago-jasto-timro',
  (SELECT id FROM "artist" WHERE slug = 'deepak-limbu'),
  '<p>जिन्दगी आगो जस्तो तिम्रो</p><p>[C] [D] [Em] [E]</p><p>Lyrics coming soon...</p><p>[C] [D] [Em] [E]</p>',
  2014,
  'Dm',
  1,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन पहाड भित्र भित्र',
  'dhun-pahad-bhitra-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'deepak-limbu'),
  '<p>धुन पहाड भित्र भित्र</p><p>[D] [F#m] [D] [C]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [D] [C]</p>',
  2003,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो भित्र मन बोल्छ',
  'bato-bhitra-man-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'kali-prasad'),
  '<p>बाटो भित्र मन बोल्छ</p><p>[Dm] [E] [G] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [E] [G] [C]</p>',
  2008,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी तिर मै',
  'timi-tira-mai',
  (SELECT id FROM "artist" WHERE slug = 'kali-prasad'),
  '<p>तिमी तिर मै</p><p>[Bb] [Dm] [G] [Dm]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [G] [Dm]</p>',
  2020,
  'Dm',
  3,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी भित्र सम्म',
  'pani-bhitra-samma',
  (SELECT id FROM "artist" WHERE slug = 'phosphenes'),
  '<p>पानी भित्र सम्म</p><p>[E] [E] [G] [C]</p><p>Lyrics coming soon...</p><p>[E] [E] [G] [C]</p>',
  2007,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी के देखि',
  'sathi-ke-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'phosphenes'),
  '<p>साथी के देखि</p><p>[F] [E] [Em] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [E] [Em] [Bb]</p>',
  2001,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति सम्म',
  'shakti-samma',
  (SELECT id FROM "artist" WHERE slug = 'samsara'),
  '<p>शक्ति सम्म</p><p>[E] [Bb] [G] [Dm]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [G] [Dm]</p>',
  1991,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो मै मुस्कान गाउँछ',
  'haaso-mai-muskan-gaunchha',
  (SELECT id FROM "artist" WHERE slug = 'samsara'),
  '<p>हाँसो मै मुस्कान गाउँछ</p><p>[Am] [Am] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[Am] [Am] [E] [Bb]</p>',
  2005,
  'G',
  5,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी ले तिम्रो सपना',
  'sathi-le-timro-sapana',
  (SELECT id FROM "artist" WHERE slug = 'avenues'),
  '<p>साथी ले तिम्रो सपना</p><p>[Bb] [G] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [Dm] [Bb]</p>',
  2004,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी हिमाल',
  'sathi-himal',
  (SELECT id FROM "artist" WHERE slug = 'avenues'),
  '<p>साथी हिमाल</p><p>[F] [G] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[F] [G] [F#m] [Em]</p>',
  2011,
  'A',
  5,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग भित्र',
  'rang-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'hari-dev'),
  '<p>रंग भित्र</p><p>[Bb] [G] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [F#m] [Bb]</p>',
  1999,
  'F',
  5,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति के मुस्कान देखि फुल्छ',
  'shanti-ke-muskan-dekhi-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'hari-dev'),
  '<p>शान्ति के मुस्कान देखि फुल्छ</p><p>[G] [C] [Em] [Em]</p><p>Lyrics coming soon...</p><p>[G] [C] [Em] [Em]</p>',
  2004,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान आगो',
  'bihan-aago',
  (SELECT id FROM "artist" WHERE slug = 'ram-krishna-dhakal'),
  '<p>बिहान आगो</p><p>[Em] [F#m] [D] [F]</p><p>Lyrics coming soon...</p><p>[Em] [F#m] [D] [F]</p>',
  2012,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन ज्ञान प्रेम पात',
  'dhun-gyan-prem-paat',
  (SELECT id FROM "artist" WHERE slug = 'ram-krishna-dhakal'),
  '<p>धुन ज्ञान प्रेम पात</p><p>[G] [C] [Dm] [Em]</p><p>Lyrics coming soon...</p><p>[G] [C] [Dm] [Em]</p>',
  1990,
  'Dm',
  5,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा मेरो हाम्रो बिना',
  'pariksha-mero-hamro-bina',
  (SELECT id FROM "artist" WHERE slug = 'om-bikram-bista'),
  '<p>परीक्षा मेरो हाम्रो बिना</p><p>[E] [F#m] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[E] [F#m] [F#m] [C]</p>',
  2016,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय तिम्रो बादल तिम्रो बोल्छ',
  'hridaya-timro-badal-timro-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'om-bikram-bista'),
  '<p>हृदय तिम्रो बादल तिम्रो बोल्छ</p><p>[C] [C] [F] [D]</p><p>Lyrics coming soon...</p><p>[C] [C] [F] [D]</p>',
  2007,
  'G',
  5,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत कथा बिस्तर्छ',
  'geet-katha-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'ac-dc'),
  '<p>गीत कथा बिस्तर्छ</p><p>[Bb] [E] [C] [Dm]</p><p>Lyrics coming soon...</p><p>[Bb] [E] [C] [Dm]</p>',
  2004,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति सम्म धुन प्रेम',
  'shakti-samma-dhun-prem',
  (SELECT id FROM "artist" WHERE slug = 'ac-dc'),
  '<p>शक्ति सम्म धुन प्रेम</p><p>[G] [Em] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[G] [Em] [F#m] [Am]</p>',
  2000,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात तिर हाँसो',
  'raat-tira-haaso',
  (SELECT id FROM "artist" WHERE slug = 'guns-n-roses'),
  '<p>रात तिर हाँसो</p><p>[D] [C] [Am] [C]</p><p>Lyrics coming soon...</p><p>[D] [C] [Am] [C]</p>',
  2010,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति सम्झना हाम्रो यात्रा सज्छ',
  'shanti-samjhana-hamro-yatra-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'guns-n-roses'),
  '<p>शान्ति सम्झना हाम्रो यात्रा सज्छ</p><p>[D] [Bb] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [Am] [Dm]</p>',
  1993,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो बिहान पछि उड्छ',
  'mero-bihan-pachi-udchha',
  (SELECT id FROM "artist" WHERE slug = 'van-halen'),
  '<p>मेरो बिहान पछि उड्छ</p><p>[F#m] [Dm] [D] [G]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [D] [G]</p>',
  2022,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी जस्तो आशा',
  'chandani-jasto-asha',
  (SELECT id FROM "artist" WHERE slug = 'van-halen'),
  '<p>चाँदनी जस्तो आशा</p><p>[F] [F#m] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [Dm] [F]</p>',
  2006,
  'G',
  3,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन देखि',
  'man-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'aerosmith'),
  '<p>मन देखि</p><p>[Em] [Bb] [F] [C]</p><p>Lyrics coming soon...</p><p>[Em] [Bb] [F] [C]</p>',
  1998,
  'F',
  1,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर चाँदनी',
  'sahar-chandani',
  (SELECT id FROM "artist" WHERE slug = 'aerosmith'),
  '<p>सहर चाँदनी</p><p>[Bb] [F] [G] [Em]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [G] [Em]</p>',
  2013,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बादल हिमाल बाटो आकाश',
  'badal-himal-bato-akash',
  (SELECT id FROM "artist" WHERE slug = 'bon-jovi'),
  '<p>बादल हिमाल बाटो आकाश</p><p>[Bb] [Em] [F] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [Em] [F] [Am]</p>',
  2011,
  'D',
  3,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन को बिना हाँस्छ',
  'dhun-ko-bina-haschha',
  (SELECT id FROM "artist" WHERE slug = 'bon-jovi'),
  '<p>धुन को बिना हाँस्छ</p><p>[Bb] [D] [G] [Bb]</p><p>Lyrics coming soon...</p><p>[Bb] [D] [G] [Bb]</p>',
  2003,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी हृदय पछि',
  'nadi-hridaya-pachi',
  (SELECT id FROM "artist" WHERE slug = 'journey'),
  '<p>नदी हृदय पछि</p><p>[C] [G] [Bb] [Am]</p><p>Lyrics coming soon...</p><p>[C] [G] [Bb] [Am]</p>',
  1998,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान बादल',
  'udan-badal',
  (SELECT id FROM "artist" WHERE slug = 'journey'),
  '<p>उडान बादल</p><p>[F#m] [Dm] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [Am] [F#m]</p>',
  2013,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी सम्म मै मा',
  'jindagi-samma-mai-ma',
  (SELECT id FROM "artist" WHERE slug = 'dire-straits'),
  '<p>जिन्दगी सम्म मै मा</p><p>[Em] [F#m] [E] [D]</p><p>Lyrics coming soon...</p><p>[Em] [F#m] [E] [D]</p>',
  1993,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश आँखा',
  'akash-aankha',
  (SELECT id FROM "artist" WHERE slug = 'dire-straits'),
  '<p>आकाश आँखा</p><p>[F] [Am] [Bb] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [Am] [Bb] [Bb]</p>',
  1998,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान साथी के मेरो',
  'muskan-sathi-ke-mero',
  (SELECT id FROM "artist" WHERE slug = 'zz-top'),
  '<p>मुस्कान साथी के मेरो</p><p>[Em] [F] [Dm] [Em]</p><p>Lyrics coming soon...</p><p>[Em] [F] [Dm] [Em]</p>',
  2005,
  'Am',
  5,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात साथी हृदय',
  'paat-sathi-hridaya',
  (SELECT id FROM "artist" WHERE slug = 'zz-top'),
  '<p>पात साथी हृदय</p><p>[G] [Am] [Am] [Em]</p><p>Lyrics coming soon...</p><p>[G] [Am] [Am] [Em]</p>',
  1992,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड चाँदनी देखि',
  'pahad-chandani-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'the-police'),
  '<p>पहाड चाँदनी देखि</p><p>[D] [Am] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[D] [Am] [F#m] [F]</p>',
  2021,
  'Dm',
  5,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान हाम्रो',
  'udan-hamro',
  (SELECT id FROM "artist" WHERE slug = 'the-police'),
  '<p>उडान हाम्रो</p><p>[Am] [Bb] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[Am] [Bb] [Bb] [C]</p>',
  2004,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो ले हरू बाटो',
  'haaso-le-haru-bato',
  (SELECT id FROM "artist" WHERE slug = 'smashing-pumpkins'),
  '<p>हाँसो ले हरू बाटो</p><p>[E] [Dm] [G] [Em]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [G] [Em]</p>',
  2003,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य सम्झना रात पनि',
  'satya-samjhana-raat-pani',
  (SELECT id FROM "artist" WHERE slug = 'smashing-pumpkins'),
  '<p>सत्य सम्झना रात पनि</p><p>[F] [D] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [D] [F] [F#m]</p>',
  2015,
  'D',
  2,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया पछि बाटो पानी बल्छ',
  'maya-pachi-bato-pani-balchha',
  (SELECT id FROM "artist" WHERE slug = 'alice-in-chains'),
  '<p>माया पछि बाटो पानी बल्छ</p><p>[C] [F#m] [E] [E]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [E] [E]</p>',
  2019,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो माथि आगो',
  'bato-mathi-aago',
  (SELECT id FROM "artist" WHERE slug = 'alice-in-chains'),
  '<p>बाटो माथि आगो</p><p>[D] [Bb] [F] [E]</p><p>Lyrics coming soon...</p><p>[D] [Bb] [F] [E]</p>',
  1990,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य हाँसो',
  'satya-haaso',
  (SELECT id FROM "artist" WHERE slug = 'weezer'),
  '<p>सत्य हाँसो</p><p>[Em] [C] [Em] [Em]</p><p>Lyrics coming soon...</p><p>[Em] [C] [Em] [Em]</p>',
  2008,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिम्रो भरोसा बिना',
  'timro-bharosa-bina',
  (SELECT id FROM "artist" WHERE slug = 'weezer'),
  '<p>तिम्रो भरोसा बिना</p><p>[D] [D] [Dm] [Am]</p><p>Lyrics coming soon...</p><p>[D] [D] [Dm] [Am]</p>',
  1992,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी सपना',
  'chandani-sapana',
  (SELECT id FROM "artist" WHERE slug = 'counting-crows'),
  '<p>चाँदनी सपना</p><p>[E] [Dm] [C] [G]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [C] [G]</p>',
  1998,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून लाई सम्म',
  'joon-lai-samma',
  (SELECT id FROM "artist" WHERE slug = 'counting-crows'),
  '<p>जून लाई सम्म</p><p>[G] [D] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[G] [D] [Dm] [F]</p>',
  1999,
  'Em',
  3,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग याद लाई पछि',
  'rang-yaad-lai-pachi',
  (SELECT id FROM "artist" WHERE slug = 'the-cranberries'),
  '<p>रंग याद लाई पछि</p><p>[Am] [Em] [Em] [Em]</p><p>Lyrics coming soon...</p><p>[Am] [Em] [Em] [Em]</p>',
  2017,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य गाउँ',
  'satya-gaun',
  (SELECT id FROM "artist" WHERE slug = 'the-cranberries'),
  '<p>सत्य गाउँ</p><p>[Em] [C] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[Em] [C] [Bb] [G]</p>',
  2010,
  'D',
  2,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो यात्रा नै',
  'mero-yatra-nai',
  (SELECT id FROM "artist" WHERE slug = 'alanis-morissette'),
  '<p>मेरो यात्रा नै</p><p>[E] [Am] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [Am] [Dm] [Bb]</p>',
  2003,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर बिना',
  'sahar-bina',
  (SELECT id FROM "artist" WHERE slug = 'alanis-morissette'),
  '<p>सहर बिना</p><p>[Bb] [Am] [F] [E]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [F] [E]</p>',
  1999,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा साथी मै',
  'pariksha-sathi-mai',
  (SELECT id FROM "artist" WHERE slug = 'no-doubt'),
  '<p>परीक्षा साथी मै</p><p>[G] [Am] [F#m] [Dm]</p><p>Lyrics coming soon...</p><p>[G] [Am] [F#m] [Dm]</p>',
  2008,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी ले हरू हरू झर्छ',
  'timi-le-haru-haru-jharchha',
  (SELECT id FROM "artist" WHERE slug = 'no-doubt'),
  '<p>तिमी ले हरू हरू झर्छ</p><p>[E] [Am] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[E] [Am] [D] [Dm]</p>',
  2009,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य भित्र',
  'satya-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'sublime'),
  '<p>सत्य भित्र</p><p>[Am] [D] [Em] [C]</p><p>Lyrics coming soon...</p><p>[Am] [D] [Em] [C]</p>',
  2017,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन के आँखा बाटो',
  'dhun-ke-aankha-bato',
  (SELECT id FROM "artist" WHERE slug = 'sublime'),
  '<p>धुन के आँखा बाटो</p><p>[F] [E] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[F] [E] [Dm] [E]</p>',
  2011,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी सम्म के शक्ति',
  'pani-samma-ke-shakti',
  (SELECT id FROM "artist" WHERE slug = 'dave-matthews-band'),
  '<p>पानी सम्म के शक्ति</p><p>[Em] [F] [D] [Am]</p><p>Lyrics coming soon...</p><p>[Em] [F] [D] [Am]</p>',
  2015,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल मै',
  'phool-mai',
  (SELECT id FROM "artist" WHERE slug = 'dave-matthews-band'),
  '<p>फूल मै</p><p>[Bb] [Am] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [F#m] [Am]</p>',
  2018,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात तिर',
  'raat-tira',
  (SELECT id FROM "artist" WHERE slug = 'the-strokes'),
  '<p>रात तिर</p><p>[F#m] [F] [F] [E]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [F] [E]</p>',
  1999,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ फूल पछि',
  'gaun-phool-pachi',
  (SELECT id FROM "artist" WHERE slug = 'the-strokes'),
  '<p>गाउँ फूल पछि</p><p>[F#m] [G] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [Bb] [G]</p>',
  2007,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग हाँसो मेरो',
  'rang-haaso-mero',
  (SELECT id FROM "artist" WHERE slug = 'white-stripes'),
  '<p>रंग हाँसो मेरो</p><p>[E] [F#m] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[E] [F#m] [Bb] [F]</p>',
  1995,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ सम्म मै आँखा',
  'gaun-samma-mai-aankha',
  (SELECT id FROM "artist" WHERE slug = 'white-stripes'),
  '<p>गाउँ सम्म मै आँखा</p><p>[E] [G] [Bb] [C]</p><p>Lyrics coming soon...</p><p>[E] [G] [Bb] [C]</p>',
  2006,
  'Bb',
  3,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी र तिम्रो हाँस्छ',
  'timi-ra-timro-haschha',
  (SELECT id FROM "artist" WHERE slug = 'the-killers'),
  '<p>तिमी र तिम्रो हाँस्छ</p><p>[C] [Bb] [C] [Bb]</p><p>Lyrics coming soon...</p><p>[C] [Bb] [C] [Bb]</p>',
  1999,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात चाँदनी मा',
  'paat-chandani-ma',
  (SELECT id FROM "artist" WHERE slug = 'the-killers'),
  '<p>पात चाँदनी मा</p><p>[Am] [E] [F] [D]</p><p>Lyrics coming soon...</p><p>[Am] [E] [F] [D]</p>',
  2020,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद कथा मा साथी',
  'yaad-katha-ma-sathi',
  (SELECT id FROM "artist" WHERE slug = 'the-verve'),
  '<p>याद कथा मा साथी</p><p>[G] [F] [Am] [Em]</p><p>Lyrics coming soon...</p><p>[G] [F] [Am] [Em]</p>',
  2020,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति पछि लाई',
  'shakti-pachi-lai',
  (SELECT id FROM "artist" WHERE slug = 'the-verve'),
  '<p>शक्ति पछि लाई</p><p>[Em] [C] [Bb] [E]</p><p>Lyrics coming soon...</p><p>[Em] [C] [Bb] [E]</p>',
  2016,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा आशा',
  'asha-asha',
  (SELECT id FROM "artist" WHERE slug = 'fleet-foxes'),
  '<p>आशा आशा</p><p>[Am] [C] [G] [F#m]</p><p>Lyrics coming soon...</p><p>[Am] [C] [G] [F#m]</p>',
  2001,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी र आँखा संग सज्छ',
  'sathi-ra-aankha-sanga-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'fleet-foxes'),
  '<p>साथी र आँखा संग सज्छ</p><p>[Bb] [D] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[Bb] [D] [F#m] [F#m]</p>',
  1998,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति जून यात्रा उड्छ',
  'shakti-joon-yatra-udchha',
  (SELECT id FROM "artist" WHERE slug = 'the-cure'),
  '<p>शक्ति जून यात्रा उड्छ</p><p>[D] [F] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[D] [F] [Am] [Dm]</p>',
  2012,
  'Dm',
  1,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो पछि हाँस्छ',
  'hamro-pachi-haschha',
  (SELECT id FROM "artist" WHERE slug = 'the-cure'),
  '<p>हाम्रो पछि हाँस्छ</p><p>[Em] [F#m] [Dm] [Bb]</p><p>Lyrics coming soon...</p><p>[Em] [F#m] [Dm] [Bb]</p>',
  1999,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून अघि',
  'joon-aghi',
  (SELECT id FROM "artist" WHERE slug = 'prince'),
  '<p>जून अघि</p><p>[G] [D] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[G] [D] [F#m] [Bb]</p>',
  2005,
  'E',
  4,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन पछि जस्तो',
  'din-pachi-jasto',
  (SELECT id FROM "artist" WHERE slug = 'prince'),
  '<p>दिन पछि जस्तो</p><p>[Dm] [Bb] [F] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [Bb] [F] [Dm]</p>',
  2004,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी साथी आँखा फुल्छ',
  'timi-sathi-aankha-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'boston'),
  '<p>तिमी साथी आँखा फुल्छ</p><p>[Dm] [D] [G] [E]</p><p>Lyrics coming soon...</p><p>[Dm] [D] [G] [E]</p>',
  2005,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात मा सम्म भरोसा',
  'raat-ma-samma-bharosa',
  (SELECT id FROM "artist" WHERE slug = 'boston'),
  '<p>रात मा सम्म भरोसा</p><p>[G] [Dm] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Bb] [F]</p>',
  1999,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन माथि शान्ति फूल',
  'dhun-mathi-shanti-phool',
  (SELECT id FROM "artist" WHERE slug = 'heart'),
  '<p>धुन माथि शान्ति फूल</p><p>[Dm] [F] [C] [E]</p><p>Lyrics coming soon...</p><p>[Dm] [F] [C] [E]</p>',
  2017,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा र हावा',
  'asha-ra-hawa',
  (SELECT id FROM "artist" WHERE slug = 'heart'),
  '<p>आशा र हावा</p><p>[Dm] [Em] [Em] [Dm]</p><p>Lyrics coming soon...</p><p>[Dm] [Em] [Em] [Dm]</p>',
  2000,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश उडान बग्छ',
  'akash-udan-bagchha',
  (SELECT id FROM "artist" WHERE slug = 'the-cars'),
  '<p>आकाश उडान बग्छ</p><p>[E] [D] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[E] [D] [E] [Bb]</p>',
  1992,
  'Bb',
  4,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश ले तिर हाम्रो',
  'akash-le-tira-hamro',
  (SELECT id FROM "artist" WHERE slug = 'the-cars'),
  '<p>आकाश ले तिर हाम्रो</p><p>[Am] [E] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[Am] [E] [Dm] [D]</p>',
  2009,
  'C',
  4,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो मै माथि',
  'hamro-mai-mathi',
  (SELECT id FROM "artist" WHERE slug = 'blondie'),
  '<p>हाम्रो मै माथि</p><p>[Bb] [Am] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [Am] [F#m] [Am]</p>',
  2022,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात ले',
  'raat-le-414-1',
  (SELECT id FROM "artist" WHERE slug = 'blondie'),
  '<p>रात ले</p><p>[F#m] [D] [D] [E]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [D] [E]</p>',
  2017,
  'F',
  4,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी जस्तो पछि आयो',
  'nadi-jasto-pachi-aayo',
  (SELECT id FROM "artist" WHERE slug = 'radiohead'),
  '<p>नदी जस्तो पछि आयो</p><p>[F] [G] [D] [Am]</p><p>Lyrics coming soon...</p><p>[F] [G] [D] [Am]</p>',
  2023,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो अघि',
  'haaso-aghi',
  (SELECT id FROM "artist" WHERE slug = 'radiohead'),
  '<p>हाँसो अघि</p><p>[C] [F#m] [F#m] [Am]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [F#m] [Am]</p>',
  2023,
  'F',
  2,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय सम्म',
  'hridaya-samma',
  (SELECT id FROM "artist" WHERE slug = 'the-clash'),
  '<p>हृदय सम्म</p><p>[E] [G] [G] [C]</p><p>Lyrics coming soon...</p><p>[E] [G] [G] [C]</p>',
  2001,
  'E',
  5,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी पात हाँस्छ',
  'jindagi-paat-haschha',
  (SELECT id FROM "artist" WHERE slug = 'the-clash'),
  '<p>जिन्दगी पात हाँस्छ</p><p>[Em] [Dm] [E] [F#m]</p><p>Lyrics coming soon...</p><p>[Em] [Dm] [E] [F#m]</p>',
  2021,
  'G',
  5,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड पछि देखि जून',
  'bichhod-pachi-dekhi-joon',
  (SELECT id FROM "artist" WHERE slug = 'black-sabbath'),
  '<p>बिछोड पछि देखि जून</p><p>[C] [E] [D] [E]</p><p>Lyrics coming soon...</p><p>[C] [E] [D] [E]</p>',
  1999,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम माथि नै',
  'prem-mathi-nai',
  (SELECT id FROM "artist" WHERE slug = 'black-sabbath'),
  '<p>प्रेम माथि नै</p><p>[F#m] [E] [F] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [F] [Am]</p>',
  2006,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो पनि गयो',
  'mero-pani-gayo',
  (SELECT id FROM "artist" WHERE slug = 'iron-maiden'),
  '<p>मेरो पनि गयो</p><p>[G] [Bb] [G] [Em]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [G] [Em]</p>',
  2008,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य मै पनि ज्ञान बिस्तर्छ',
  'satya-mai-pani-gyan-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'iron-maiden'),
  '<p>सत्य मै पनि ज्ञान बिस्तर्छ</p><p>[Am] [D] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[Am] [D] [F#m] [Bb]</p>',
  1997,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान रात रंग संग सज्छ',
  'gyan-raat-rang-sanga-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'rush'),
  '<p>ज्ञान रात रंग संग सज्छ</p><p>[D] [G] [E] [E]</p><p>Lyrics coming soon...</p><p>[D] [G] [E] [E]</p>',
  1997,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा हृदय मन',
  'aankha-hridaya-man',
  (SELECT id FROM "artist" WHERE slug = 'rush'),
  '<p>आँखा हृदय मन</p><p>[C] [F] [F#m] [D]</p><p>Lyrics coming soon...</p><p>[C] [F] [F#m] [D]</p>',
  1996,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम पानी सज्छ',
  'prem-pani-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'genesis'),
  '<p>प्रेम पानी सज्छ</p><p>[Am] [F#m] [D] [Em]</p><p>Lyrics coming soon...</p><p>[Am] [F#m] [D] [Em]</p>',
  1999,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल ले',
  'phool-le',
  (SELECT id FROM "artist" WHERE slug = 'genesis'),
  '<p>फूल ले</p><p>[G] [G] [Am] [D]</p><p>Lyrics coming soon...</p><p>[G] [G] [Am] [D]</p>',
  2012,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन पनि बिछोड',
  'man-pani-bichhod',
  (SELECT id FROM "artist" WHERE slug = 'depeche-mode'),
  '<p>मन पनि बिछोड</p><p>[Bb] [D] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [D] [Bb] [F]</p>',
  2006,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी देखि फुल्छ',
  'chandani-dekhi-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'depeche-mode'),
  '<p>चाँदनी देखि फुल्छ</p><p>[F#m] [Em] [C] [Dm]</p><p>Lyrics coming soon...</p><p>[F#m] [Em] [C] [Dm]</p>',
  2009,
  'F',
  4,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा धुन',
  'aankha-dhun',
  (SELECT id FROM "artist" WHERE slug = 'talking-heads'),
  '<p>आँखा धुन</p><p>[Dm] [C] [G] [F#m]</p><p>Lyrics coming soon...</p><p>[Dm] [C] [G] [F#m]</p>',
  1999,
  'C',
  4,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान अघि बिस्तर्छ',
  'muskan-aghi-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'talking-heads'),
  '<p>मुस्कान अघि बिस्तर्छ</p><p>[C] [D] [C] [F#m]</p><p>Lyrics coming soon...</p><p>[C] [D] [C] [F#m]</p>',
  2018,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी को सम्झना ले',
  'timi-ko-samjhana-le',
  (SELECT id FROM "artist" WHERE slug = 'the-smiths'),
  '<p>तिमी को सम्झना ले</p><p>[Dm] [Am] [C] [E]</p><p>Lyrics coming soon...</p><p>[Dm] [Am] [C] [E]</p>',
  2001,
  'F',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान आँखा र देखि',
  'gyan-aankha-ra-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'the-smiths'),
  '<p>ज्ञान आँखा र देखि</p><p>[Em] [Am] [Am] [Em]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [Am] [Em]</p>',
  2000,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा हृदय माया धुन हिँड्छ',
  'aankha-hridaya-maya-dhun-hindchha',
  (SELECT id FROM "artist" WHERE slug = 'elo'),
  '<p>आँखा हृदय माया धुन हिँड्छ</p><p>[C] [C] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[C] [C] [Dm] [F]</p>',
  2000,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम परीक्षा र तिम्रो गयो',
  'prem-pariksha-ra-timro-gayo',
  (SELECT id FROM "artist" WHERE slug = 'elo'),
  '<p>प्रेम परीक्षा र तिम्रो गयो</p><p>[D] [F#m] [E] [Am]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [E] [Am]</p>',
  1996,
  'Am',
  1,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद साथी ले',
  'yaad-sathi-le',
  (SELECT id FROM "artist" WHERE slug = 'supertramp'),
  '<p>याद साथी ले</p><p>[F#m] [Am] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [Am] [F#m] [F#m]</p>',
  2023,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'दिन पनि आगो',
  'din-pani-aago',
  (SELECT id FROM "artist" WHERE slug = 'supertramp'),
  '<p>दिन पनि आगो</p><p>[F] [F#m] [F#m] [G]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [F#m] [G]</p>',
  1999,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु हरू गयो',
  'mutu-haru-gayo',
  (SELECT id FROM "artist" WHERE slug = 'toto'),
  '<p>मुटु हरू गयो</p><p>[F#m] [E] [F] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [F] [C]</p>',
  2010,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी माथि धुन',
  'sathi-mathi-dhun',
  (SELECT id FROM "artist" WHERE slug = 'toto'),
  '<p>साथी माथि धुन</p><p>[F#m] [E] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [F] [F#m]</p>',
  2001,
  'A',
  3,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर ले र',
  'sahar-le-ra',
  (SELECT id FROM "artist" WHERE slug = 'foreigner'),
  '<p>सहर ले र</p><p>[D] [G] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[D] [G] [Am] [Dm]</p>',
  2009,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो मुटु को अघि',
  'mero-mutu-ko-aghi',
  (SELECT id FROM "artist" WHERE slug = 'foreigner'),
  '<p>मेरो मुटु को अघि</p><p>[F] [D] [F] [E]</p><p>Lyrics coming soon...</p><p>[F] [D] [F] [E]</p>',
  2005,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी नै',
  'timi-nai',
  (SELECT id FROM "artist" WHERE slug = 'janis-joplin'),
  '<p>तिमी नै</p><p>[Bb] [F] [Em] [E]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [Em] [E]</p>',
  2002,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा मुस्कान',
  'aankha-muskan',
  (SELECT id FROM "artist" WHERE slug = 'janis-joplin'),
  '<p>आँखा मुस्कान</p><p>[Am] [D] [Dm] [E]</p><p>Lyrics coming soon...</p><p>[Am] [D] [Dm] [E]</p>',
  1996,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड आँखा',
  'bichhod-aankha',
  (SELECT id FROM "artist" WHERE slug = 'grateful-dead'),
  '<p>बिछोड आँखा</p><p>[Am] [Am] [C] [E]</p><p>Lyrics coming soon...</p><p>[Am] [Am] [C] [E]</p>',
  1996,
  'G',
  4,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो र मा गयो',
  'bato-ra-ma-gayo',
  (SELECT id FROM "artist" WHERE slug = 'grateful-dead'),
  '<p>बाटो र मा गयो</p><p>[F] [E] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [E] [D] [Bb]</p>',
  1995,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिमी ले आकाश',
  'timi-le-akash',
  (SELECT id FROM "artist" WHERE slug = 'earth-wind-fire'),
  '<p>तिमी ले आकाश</p><p>[Bb] [Bb] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[Bb] [Bb] [Dm] [D]</p>',
  1997,
  'Dm',
  4,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो पात',
  'haaso-paat',
  (SELECT id FROM "artist" WHERE slug = 'earth-wind-fire'),
  '<p>हाँसो पात</p><p>[Am] [E] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[Am] [E] [D] [Dm]</p>',
  2003,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी हिमाल बिना को',
  'nadi-himal-bina-ko',
  (SELECT id FROM "artist" WHERE slug = 'james-brown'),
  '<p>नदी हिमाल बिना को</p><p>[F#m] [D] [F] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [F] [F]</p>',
  2003,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो संग',
  'mero-sanga',
  (SELECT id FROM "artist" WHERE slug = 'james-brown'),
  '<p>मेरो संग</p><p>[G] [F#m] [Bb] [Em]</p><p>Lyrics coming soon...</p><p>[G] [F#m] [Bb] [Em]</p>',
  2017,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'कथा भित्र रात',
  'katha-bhitra-raat',
  (SELECT id FROM "artist" WHERE slug = 'ray-charles'),
  '<p>कथा भित्र रात</p><p>[G] [Dm] [F] [Dm]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [F] [Dm]</p>',
  2019,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'याद माथि',
  'yaad-mathi',
  (SELECT id FROM "artist" WHERE slug = 'ray-charles'),
  '<p>याद माथि</p><p>[F] [G] [Dm] [Dm]</p><p>Lyrics coming soon...</p><p>[F] [G] [Dm] [Dm]</p>',
  2015,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी याद पात',
  'jindagi-yaad-paat',
  (SELECT id FROM "artist" WHERE slug = 'madonna'),
  '<p>जिन्दगी याद पात</p><p>[Bb] [Dm] [C] [G]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [C] [G]</p>',
  2019,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिम्रो सपना देखि',
  'timro-sapana-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'madonna'),
  '<p>तिम्रो सपना देखि</p><p>[Em] [G] [G] [F]</p><p>Lyrics coming soon...</p><p>[Em] [G] [G] [F]</p>',
  2008,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड पनि',
  'pahad-pani',
  (SELECT id FROM "artist" WHERE slug = 'abba'),
  '<p>पहाड पनि</p><p>[E] [Em] [G] [C]</p><p>Lyrics coming soon...</p><p>[E] [Em] [G] [C]</p>',
  2016,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग मुटु माया नाच्छ',
  'rang-mutu-maya-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'abba'),
  '<p>रंग मुटु माया नाच्छ</p><p>[F#m] [F] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [F] [F#m] [Em]</p>',
  2012,
  'Em',
  4,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल के उडान',
  'phool-ke-udan',
  (SELECT id FROM "artist" WHERE slug = 'bee-gees'),
  '<p>फूल के उडान</p><p>[Am] [G] [C] [C]</p><p>Lyrics coming soon...</p><p>[Am] [G] [C] [C]</p>',
  1996,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति मेरो',
  'shanti-mero',
  (SELECT id FROM "artist" WHERE slug = 'bee-gees'),
  '<p>शान्ति मेरो</p><p>[F] [G] [F#m] [D]</p><p>Lyrics coming soon...</p><p>[F] [G] [F#m] [D]</p>',
  1997,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा सहर र आयो',
  'yatra-sahar-ra-aayo',
  (SELECT id FROM "artist" WHERE slug = 'whitney-houston'),
  '<p>यात्रा सहर र आयो</p><p>[C] [F#m] [E] [Dm]</p><p>Lyrics coming soon...</p><p>[C] [F#m] [E] [Dm]</p>',
  2024,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी के भित्र',
  'chandani-ke-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'whitney-houston'),
  '<p>चाँदनी के भित्र</p><p>[F#m] [E] [Am] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [Am] [Em]</p>',
  1992,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर भरोसा',
  'sahar-bharosa',
  (SELECT id FROM "artist" WHERE slug = 'mariah-carey'),
  '<p>सहर भरोसा</p><p>[C] [Em] [G] [F#m]</p><p>Lyrics coming soon...</p><p>[C] [Em] [G] [F#m]</p>',
  2018,
  'G',
  2,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रंग जस्तो बिछोड परीक्षा',
  'rang-jasto-bichhod-pariksha',
  (SELECT id FROM "artist" WHERE slug = 'mariah-carey'),
  '<p>रंग जस्तो बिछोड परीक्षा</p><p>[Am] [G] [F] [Dm]</p><p>Lyrics coming soon...</p><p>[Am] [G] [F] [Dm]</p>',
  2008,
  'C',
  2,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा बिना रंग',
  'asha-bina-rang',
  (SELECT id FROM "artist" WHERE slug = 'backstreet-boys'),
  '<p>आशा बिना रंग</p><p>[Am] [Bb] [E] [C]</p><p>Lyrics coming soon...</p><p>[Am] [Bb] [E] [C]</p>',
  2008,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो नै',
  'aago-nai',
  (SELECT id FROM "artist" WHERE slug = 'backstreet-boys'),
  '<p>आगो नै</p><p>[Am] [Dm] [E] [E]</p><p>Lyrics coming soon...</p><p>[Am] [Dm] [E] [E]</p>',
  2013,
  'A',
  3,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो शक्ति',
  'haaso-shakti',
  (SELECT id FROM "artist" WHERE slug = 'britney-spears'),
  '<p>हाँसो शक्ति</p><p>[G] [F#m] [C] [D]</p><p>Lyrics coming soon...</p><p>[G] [F#m] [C] [D]</p>',
  2000,
  'D',
  1,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा मेरो ले भित्र',
  'hawa-mero-le-bhitra',
  (SELECT id FROM "artist" WHERE slug = 'britney-spears'),
  '<p>हावा मेरो ले भित्र</p><p>[F] [Dm] [C] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [C] [Bb]</p>',
  2024,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति हरू',
  'shakti-haru',
  (SELECT id FROM "artist" WHERE slug = 'duran-duran'),
  '<p>शक्ति हरू</p><p>[Am] [C] [C] [Am]</p><p>Lyrics coming soon...</p><p>[Am] [C] [C] [Am]</p>',
  2018,
  'Em',
  1,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'यात्रा जून',
  'yatra-joon',
  (SELECT id FROM "artist" WHERE slug = 'duran-duran'),
  '<p>यात्रा जून</p><p>[Dm] [Dm] [D] [Em]</p><p>Lyrics coming soon...</p><p>[Dm] [Dm] [D] [Em]</p>',
  2003,
  'C',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी पानी',
  'jindagi-pani',
  (SELECT id FROM "artist" WHERE slug = 'tears-for-fears'),
  '<p>जिन्दगी पानी</p><p>[Bb] [Dm] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [Bb] [F]</p>',
  2015,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन सम्झना हिँड्छ',
  'dhun-samjhana-hindchha',
  (SELECT id FROM "artist" WHERE slug = 'tears-for-fears'),
  '<p>धुन सम्झना हिँड्छ</p><p>[G] [D] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[G] [D] [Am] [F#m]</p>',
  1994,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा सहर भित्र पनि बिस्तर्छ',
  'bharosa-sahar-bhitra-pani-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'amy-winehouse'),
  '<p>भरोसा सहर भित्र पनि बिस्तर्छ</p><p>[D] [Em] [Em] [D]</p><p>Lyrics coming soon...</p><p>[D] [Em] [Em] [D]</p>',
  1995,
  'Em',
  2,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान मै सम्म',
  'gyan-mai-samma',
  (SELECT id FROM "artist" WHERE slug = 'amy-winehouse'),
  '<p>ज्ञान मै सम्म</p><p>[E] [C] [Em] [F]</p><p>Lyrics coming soon...</p><p>[E] [C] [Em] [F]</p>',
  1995,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड मेरो अघि सुक्छ',
  'pahad-mero-aghi-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'alicia-keys'),
  '<p>पहाड मेरो अघि सुक्छ</p><p>[E] [Bb] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [Em] [Am]</p>',
  2009,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान उडान सम्म',
  'udan-udan-samma',
  (SELECT id FROM "artist" WHERE slug = 'alicia-keys'),
  '<p>उडान उडान सम्म</p><p>[G] [C] [D] [Em]</p><p>Lyrics coming soon...</p><p>[G] [C] [D] [Em]</p>',
  2014,
  'D',
  4,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो मुटु',
  'bato-mutu',
  (SELECT id FROM "artist" WHERE slug = 'norah-jones'),
  '<p>बाटो मुटु</p><p>[D] [Em] [F] [Am]</p><p>Lyrics coming soon...</p><p>[D] [Em] [F] [Am]</p>',
  1999,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात तिम्रो मा ज्ञान',
  'paat-timro-ma-gyan',
  (SELECT id FROM "artist" WHERE slug = 'norah-jones'),
  '<p>पात तिम्रो मा ज्ञान</p><p>[D] [D] [C] [Em]</p><p>Lyrics coming soon...</p><p>[D] [D] [C] [Em]</p>',
  1997,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी आगो लाई',
  'sathi-aago-lai',
  (SELECT id FROM "artist" WHERE slug = 'pink'),
  '<p>साथी आगो लाई</p><p>[F] [Bb] [G] [E]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [G] [E]</p>',
  2011,
  'E',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड धुन ज्ञान मै',
  'pahad-dhun-gyan-mai',
  (SELECT id FROM "artist" WHERE slug = 'pink'),
  '<p>पहाड धुन ज्ञान मै</p><p>[Bb] [Dm] [D] [Em]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [D] [Em]</p>',
  1991,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय हरू',
  'hridaya-haru',
  (SELECT id FROM "artist" WHERE slug = 'avril-lavigne'),
  '<p>हृदय हरू</p><p>[G] [C] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[G] [C] [F] [F#m]</p>',
  2003,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु पानी',
  'mutu-pani',
  (SELECT id FROM "artist" WHERE slug = 'avril-lavigne'),
  '<p>मुटु पानी</p><p>[D] [Em] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[D] [Em] [Em] [Am]</p>',
  1995,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन याद उडान नै',
  'dhun-yaad-udan-nai',
  (SELECT id FROM "artist" WHERE slug = 'kelly-clarkson'),
  '<p>धुन याद उडान नै</p><p>[G] [Dm] [Am] [C]</p><p>Lyrics coming soon...</p><p>[G] [Dm] [Am] [C]</p>',
  2001,
  'Am',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम को जस्तो',
  'prem-ko-jasto',
  (SELECT id FROM "artist" WHERE slug = 'kelly-clarkson'),
  '<p>प्रेम को जस्तो</p><p>[G] [D] [Em] [G]</p><p>Lyrics coming soon...</p><p>[G] [D] [Em] [G]</p>',
  2018,
  'Bb',
  3,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ मा मुस्कान पात',
  'gaun-ma-muskan-paat',
  (SELECT id FROM "artist" WHERE slug = 'pixies'),
  '<p>गाउँ मा मुस्कान पात</p><p>[E] [Bb] [D] [C]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [D] [C]</p>',
  2021,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा ले शक्ति नदी',
  'hawa-le-shakti-nadi',
  (SELECT id FROM "artist" WHERE slug = 'pixies'),
  '<p>हावा ले शक्ति नदी</p><p>[F#m] [E] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [Dm] [D]</p>',
  2022,
  'C',
  5,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना पात कथा बिझ्छ',
  'sapana-paat-katha-bijhchha',
  (SELECT id FROM "artist" WHERE slug = 'shreya-sotang'),
  '<p>सपना पात कथा बिझ्छ</p><p>[C] [Em] [F#m] [Em]</p><p>Lyrics coming soon...</p><p>[C] [Em] [F#m] [Em]</p>',
  2024,
  'Em',
  4,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति सपना',
  'shakti-sapana',
  (SELECT id FROM "artist" WHERE slug = 'shreya-sotang'),
  '<p>शक्ति सपना</p><p>[Em] [F] [Em] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [F] [Em] [Dm]</p>',
  1996,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड जस्तो भित्र दिन सज्छ',
  'bichhod-jasto-bhitra-din-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'melina-rai'),
  '<p>बिछोड जस्तो भित्र दिन सज्छ</p><p>[F] [Dm] [D] [G]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [D] [G]</p>',
  2020,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो रात मुटु अघि',
  'hamro-raat-mutu-aghi',
  (SELECT id FROM "artist" WHERE slug = 'melina-rai'),
  '<p>हाम्रो रात मुटु अघि</p><p>[D] [C] [C] [D]</p><p>Lyrics coming soon...</p><p>[D] [C] [C] [D]</p>',
  2003,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा भित्र जिन्दगी तिर',
  'aankha-bhitra-jindagi-tira',
  (SELECT id FROM "artist" WHERE slug = 'saurabh-adhikari'),
  '<p>आँखा भित्र जिन्दगी तिर</p><p>[D] [Em] [Am] [F]</p><p>Lyrics coming soon...</p><p>[D] [Em] [Am] [F]</p>',
  2004,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान नदी',
  'gyan-nadi',
  (SELECT id FROM "artist" WHERE slug = 'saurabh-adhikari'),
  '<p>ज्ञान नदी</p><p>[E] [D] [E] [Dm]</p><p>Lyrics coming soon...</p><p>[E] [D] [E] [Dm]</p>',
  2003,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ देखि पनि',
  'gaun-dekhi-pani',
  (SELECT id FROM "artist" WHERE slug = 'rajina-rimal'),
  '<p>गाउँ देखि पनि</p><p>[D] [F] [E] [Am]</p><p>Lyrics coming soon...</p><p>[D] [F] [E] [Am]</p>',
  2018,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात को नदी जस्तो',
  'raat-ko-nadi-jasto',
  (SELECT id FROM "artist" WHERE slug = 'rajina-rimal'),
  '<p>रात को नदी जस्तो</p><p>[Am] [F#m] [F#m] [E]</p><p>Lyrics coming soon...</p><p>[Am] [F#m] [F#m] [E]</p>',
  1996,
  'F',
  1,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ ले मा गयो',
  'sanjh-le-ma-gayo',
  (SELECT id FROM "artist" WHERE slug = 'anju-panta'),
  '<p>साँझ ले मा गयो</p><p>[F#m] [Am] [E] [D]</p><p>Lyrics coming soon...</p><p>[F#m] [Am] [E] [D]</p>',
  2018,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो सहर संग',
  'aago-sahar-sanga',
  (SELECT id FROM "artist" WHERE slug = 'anju-panta'),
  '<p>आगो सहर संग</p><p>[Em] [G] [E] [Am]</p><p>Lyrics coming soon...</p><p>[Em] [G] [E] [Am]</p>',
  1996,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय हरू आशा तिर',
  'hridaya-haru-asha-tira',
  (SELECT id FROM "artist" WHERE slug = 'kunti-moktan'),
  '<p>हृदय हरू आशा तिर</p><p>[D] [E] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[D] [E] [Dm] [D]</p>',
  2003,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन र',
  'man-ra',
  (SELECT id FROM "artist" WHERE slug = 'kunti-moktan'),
  '<p>मन र</p><p>[Bb] [F] [Em] [C]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [Em] [C]</p>',
  1993,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान धुन को हिँड्छ',
  'gyan-dhun-ko-hindchha',
  (SELECT id FROM "artist" WHERE slug = 'nima-rumba'),
  '<p>ज्ञान धुन को हिँड्छ</p><p>[Bb] [C] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[Bb] [C] [F#m] [C]</p>',
  2023,
  'Bb',
  5,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी के सम्म',
  'pani-ke-samma',
  (SELECT id FROM "artist" WHERE slug = 'nima-rumba'),
  '<p>पानी के सम्म</p><p>[Em] [Em] [Bb] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [Em] [Bb] [Dm]</p>',
  1991,
  'Am',
  2,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना को',
  'samjhana-ko',
  (SELECT id FROM "artist" WHERE slug = 'rajesh-payal-rai'),
  '<p>सम्झना को</p><p>[G] [E] [C] [G]</p><p>Lyrics coming soon...</p><p>[G] [E] [C] [G]</p>',
  2009,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन हृदय पछि को',
  'dhun-hridaya-pachi-ko',
  (SELECT id FROM "artist" WHERE slug = 'rajesh-payal-rai'),
  '<p>धुन हृदय पछि को</p><p>[F] [Dm] [F] [Am]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [F] [Am]</p>',
  2013,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाँसो हरू सहर गयो',
  'haaso-haru-sahar-gayo',
  (SELECT id FROM "artist" WHERE slug = 'phattiman-rajbhandari'),
  '<p>हाँसो हरू सहर गयो</p><p>[F] [D] [F#m] [C]</p><p>Lyrics coming soon...</p><p>[F] [D] [F#m] [C]</p>',
  2014,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी मुटु',
  'jindagi-mutu',
  (SELECT id FROM "artist" WHERE slug = 'phattiman-rajbhandari'),
  '<p>जिन्दगी मुटु</p><p>[Dm] [Am] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[Dm] [Am] [E] [Bb]</p>',
  1993,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी यात्रा संग उड्छ',
  'sathi-yatra-sanga-udchha',
  (SELECT id FROM "artist" WHERE slug = 'rohit-john-chettri'),
  '<p>साथी यात्रा संग उड्छ</p><p>[E] [Am] [F#m] [Dm]</p><p>Lyrics coming soon...</p><p>[E] [Am] [F#m] [Dm]</p>',
  2013,
  'D',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ आँखा पनि पनि',
  'sanjh-aankha-pani-pani',
  (SELECT id FROM "artist" WHERE slug = 'rohit-john-chettri'),
  '<p>साँझ आँखा पनि पनि</p><p>[D] [D] [Am] [F#m]</p><p>Lyrics coming soon...</p><p>[D] [D] [Am] [F#m]</p>',
  2010,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'परीक्षा संग',
  'pariksha-sanga',
  (SELECT id FROM "artist" WHERE slug = 'underground-tropa'),
  '<p>परीक्षा संग</p><p>[E] [Em] [F#m] [G]</p><p>Lyrics coming soon...</p><p>[E] [Em] [F#m] [G]</p>',
  1999,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु मन लाई सम्म',
  'mutu-man-lai-samma',
  (SELECT id FROM "artist" WHERE slug = 'underground-tropa'),
  '<p>मुटु मन लाई सम्म</p><p>[Bb] [Dm] [Bb] [Bb]</p><p>Lyrics coming soon...</p><p>[Bb] [Dm] [Bb] [Bb]</p>',
  1997,
  'Dm',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी पात तिर',
  'sathi-paat-tira',
  (SELECT id FROM "artist" WHERE slug = 'raju-lama'),
  '<p>साथी पात तिर</p><p>[Bb] [D] [Dm] [Dm]</p><p>Lyrics coming soon...</p><p>[Bb] [D] [Dm] [Dm]</p>',
  2001,
  'Bb',
  4,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान नै गीत ज्ञान',
  'muskan-nai-geet-gyan',
  (SELECT id FROM "artist" WHERE slug = 'raju-lama'),
  '<p>मुस्कान नै गीत ज्ञान</p><p>[Am] [D] [F#m] [D]</p><p>Lyrics coming soon...</p><p>[Am] [D] [F#m] [D]</p>',
  1992,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिहान बिहान',
  'bihan-bihan',
  (SELECT id FROM "artist" WHERE slug = 'ram-chandra-kafle'),
  '<p>बिहान बिहान</p><p>[D] [Em] [Em] [G]</p><p>Lyrics coming soon...</p><p>[D] [Em] [Em] [G]</p>',
  2023,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना लाई बाटो मुस्कान',
  'sapana-lai-bato-muskan',
  (SELECT id FROM "artist" WHERE slug = 'ram-chandra-kafle'),
  '<p>सपना लाई बाटो मुस्कान</p><p>[G] [F] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[G] [F] [D] [Dm]</p>',
  2024,
  'F',
  3,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ हावा पनि दौडन्छ',
  'gaun-hawa-pani-daudanchha',
  (SELECT id FROM "artist" WHERE slug = 'the-black-cats'),
  '<p>गाउँ हावा पनि दौडन्छ</p><p>[E] [Bb] [F] [D]</p><p>Lyrics coming soon...</p><p>[E] [Bb] [F] [D]</p>',
  2005,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना बिहान को तिर गाउँछ',
  'samjhana-bihan-ko-tira-gaunchha',
  (SELECT id FROM "artist" WHERE slug = 'the-black-cats'),
  '<p>सम्झना बिहान को तिर गाउँछ</p><p>[E] [Em] [F#m] [E]</p><p>Lyrics coming soon...</p><p>[E] [Em] [F#m] [E]</p>',
  2014,
  'Am',
  1,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल र माथि',
  'himal-ra-mathi',
  (SELECT id FROM "artist" WHERE slug = 'swor-samrat'),
  '<p>हिमाल र माथि</p><p>[E] [C] [F#m] [Dm]</p><p>Lyrics coming soon...</p><p>[E] [C] [F#m] [Dm]</p>',
  2016,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान धुन हावा सम्म',
  'udan-dhun-hawa-samma',
  (SELECT id FROM "artist" WHERE slug = 'swor-samrat'),
  '<p>उडान धुन हावा सम्म</p><p>[F#m] [D] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [E] [Bb]</p>',
  2021,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु माथि लाई आयो',
  'mutu-mathi-lai-aayo',
  (SELECT id FROM "artist" WHERE slug = 'trishala-gurung'),
  '<p>मुटु माथि लाई आयो</p><p>[C] [Am] [C] [E]</p><p>Lyrics coming soon...</p><p>[C] [Am] [C] [E]</p>',
  2001,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आशा पहाड हृदय धुन',
  'asha-pahad-hridaya-dhun',
  (SELECT id FROM "artist" WHERE slug = 'trishala-gurung'),
  '<p>आशा पहाड हृदय धुन</p><p>[F] [F#m] [E] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [E] [Bb]</p>',
  2023,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात भरोसा बिछोड हाँस्छ',
  'raat-bharosa-bichhod-haschha',
  (SELECT id FROM "artist" WHERE slug = 'sushma-shakya'),
  '<p>रात भरोसा बिछोड हाँस्छ</p><p>[F#m] [Bb] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[F#m] [Bb] [Am] [Dm]</p>',
  1992,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड हरू मा',
  'bichhod-haru-ma',
  (SELECT id FROM "artist" WHERE slug = 'sushma-shakya'),
  '<p>बिछोड हरू मा</p><p>[F#m] [G] [F] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [F] [F]</p>',
  2012,
  'Em',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम लाई फूल साथी',
  'prem-lai-phool-sathi',
  (SELECT id FROM "artist" WHERE slug = 'kiran-pradhan'),
  '<p>प्रेम लाई फूल साथी</p><p>[G] [C] [Em] [F]</p><p>Lyrics coming soon...</p><p>[G] [C] [Em] [F]</p>',
  2020,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मन बिना गयो',
  'man-bina-gayo',
  (SELECT id FROM "artist" WHERE slug = 'kiran-pradhan'),
  '<p>मन बिना गयो</p><p>[Em] [Bb] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[Em] [Bb] [Dm] [D]</p>',
  2000,
  'G',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम धुन सत्य देखि',
  'prem-dhun-satya-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'bijay-bdr-rana'),
  '<p>प्रेम धुन सत्य देखि</p><p>[F#m] [Am] [Em] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [Am] [Em] [Em]</p>',
  2013,
  'Am',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी मै रंग बिना गाउँछ',
  'sathi-mai-rang-bina-gaunchha',
  (SELECT id FROM "artist" WHERE slug = 'bijay-bdr-rana'),
  '<p>साथी मै रंग बिना गाउँछ</p><p>[F#m] [D] [D] [Dm]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [D] [Dm]</p>',
  2004,
  'C',
  1,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बिछोड नदी आँखा',
  'bichhod-nadi-aankha',
  (SELECT id FROM "artist" WHERE slug = 'candrabali'),
  '<p>बिछोड नदी आँखा</p><p>[Dm] [C] [Dm] [F#m]</p><p>Lyrics coming soon...</p><p>[Dm] [C] [Dm] [F#m]</p>',
  2023,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान हाँसो फुल्छ',
  'udan-haaso-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'candrabali'),
  '<p>उडान हाँसो फुल्छ</p><p>[Dm] [Am] [G] [C]</p><p>Lyrics coming soon...</p><p>[Dm] [Am] [G] [C]</p>',
  1996,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया हाम्रो बिछोड',
  'maya-hamro-bichhod',
  (SELECT id FROM "artist" WHERE slug = 'lata-mangeshkar'),
  '<p>माया हाम्रो बिछोड</p><p>[Bb] [Bb] [F#m] [Dm]</p><p>Lyrics coming soon...</p><p>[Bb] [Bb] [F#m] [Dm]</p>',
  2020,
  'Dm',
  4,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी नै हावा सज्छ',
  'sathi-nai-hawa-sajchha',
  (SELECT id FROM "artist" WHERE slug = 'lata-mangeshkar'),
  '<p>साथी नै हावा सज्छ</p><p>[Bb] [E] [F] [D]</p><p>Lyrics coming soon...</p><p>[Bb] [E] [F] [D]</p>',
  1994,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो हिमाल',
  'aago-himal',
  (SELECT id FROM "artist" WHERE slug = 'mohammad-rafi'),
  '<p>आगो हिमाल</p><p>[Am] [Bb] [C] [F]</p><p>Lyrics coming soon...</p><p>[Am] [Bb] [C] [F]</p>',
  2002,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मेरो ले',
  'mero-le',
  (SELECT id FROM "artist" WHERE slug = 'mohammad-rafi'),
  '<p>मेरो ले</p><p>[F#m] [G] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [Am] [Dm]</p>',
  2004,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान अघि मुस्कान',
  'gyan-aghi-muskan',
  (SELECT id FROM "artist" WHERE slug = 'mukesh'),
  '<p>ज्ञान अघि मुस्कान</p><p>[Em] [Bb] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[Em] [Bb] [F#m] [Bb]</p>',
  2020,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर पछि',
  'sahar-pachi',
  (SELECT id FROM "artist" WHERE slug = 'mukesh'),
  '<p>सहर पछि</p><p>[F] [Dm] [D] [Am]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [D] [Am]</p>',
  2005,
  'Em',
  4,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात को हरू हाम्रो उड्छ',
  'paat-ko-haru-hamro-udchha',
  (SELECT id FROM "artist" WHERE slug = 'asha-bhosle'),
  '<p>पात को हरू हाम्रो उड्छ</p><p>[Em] [F] [G] [Em]</p><p>Lyrics coming soon...</p><p>[Em] [F] [G] [Em]</p>',
  2024,
  'A',
  4,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'चाँदनी भित्र माया झर्छ',
  'chandani-bhitra-maya-jharchha',
  (SELECT id FROM "artist" WHERE slug = 'asha-bhosle'),
  '<p>चाँदनी भित्र माया झर्छ</p><p>[G] [C] [F#m] [Bb]</p><p>Lyrics coming soon...</p><p>[G] [C] [F#m] [Bb]</p>',
  1999,
  'Am',
  5,
  'EADGBE',
  'Advanced',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सपना मेरो मुस्कान देखि',
  'sapana-mero-muskan-dekhi',
  (SELECT id FROM "artist" WHERE slug = 'manna-dey'),
  '<p>सपना मेरो मुस्कान देखि</p><p>[C] [Em] [D] [D]</p><p>Lyrics coming soon...</p><p>[C] [Em] [D] [D]</p>',
  2014,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'नदी को सम्झना सम्म',
  'nadi-ko-samjhana-samma',
  (SELECT id FROM "artist" WHERE slug = 'manna-dey'),
  '<p>नदी को सम्झना सम्म</p><p>[Em] [F#m] [C] [F#m]</p><p>Lyrics coming soon...</p><p>[Em] [F#m] [C] [F#m]</p>',
  2001,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हृदय माया गाउँ र',
  'hridaya-maya-gaun-ra',
  (SELECT id FROM "artist" WHERE slug = 'geeta-dutt'),
  '<p>हृदय माया गाउँ र</p><p>[E] [Em] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[E] [Em] [Dm] [G]</p>',
  1991,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति ले हरू',
  'shanti-le-haru',
  (SELECT id FROM "artist" WHERE slug = 'geeta-dutt'),
  '<p>शान्ति ले हरू</p><p>[G] [Em] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[G] [Em] [F#m] [F#m]</p>',
  2009,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'रात मन के को',
  'raat-man-ke-ko',
  (SELECT id FROM "artist" WHERE slug = 'hemant-kumar'),
  '<p>रात मन के को</p><p>[Em] [Dm] [Dm] [Dm]</p><p>Lyrics coming soon...</p><p>[Em] [Dm] [Dm] [Dm]</p>',
  2015,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'बाटो मन',
  'bato-man',
  (SELECT id FROM "artist" WHERE slug = 'hemant-kumar'),
  '<p>बाटो मन</p><p>[G] [E] [Am] [Bb]</p><p>Lyrics coming soon...</p><p>[G] [E] [Am] [Bb]</p>',
  2006,
  'E',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा पछि',
  'bharosa-pachi',
  (SELECT id FROM "artist" WHERE slug = 'talat-mahmood'),
  '<p>भरोसा पछि</p><p>[Em] [G] [C] [C]</p><p>Lyrics coming soon...</p><p>[Em] [G] [C] [C]</p>',
  2008,
  'C',
  1,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी हरू माथि हाँस्छ',
  'sathi-haru-mathi-haschha',
  (SELECT id FROM "artist" WHERE slug = 'talat-mahmood'),
  '<p>साथी हरू माथि हाँस्छ</p><p>[D] [F#m] [D] [C]</p><p>Lyrics coming soon...</p><p>[D] [F#m] [D] [C]</p>',
  1995,
  'C',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन जस्तो पहाड',
  'dhun-jasto-pahad',
  (SELECT id FROM "artist" WHERE slug = 'ar-rahman'),
  '<p>धुन जस्तो पहाड</p><p>[Em] [Em] [C] [C]</p><p>Lyrics coming soon...</p><p>[Em] [Em] [C] [C]</p>',
  2007,
  'Am',
  3,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सम्झना आगो साँझ सहर',
  'samjhana-aago-sanjh-sahar',
  (SELECT id FROM "artist" WHERE slug = 'ar-rahman'),
  '<p>सम्झना आगो साँझ सहर</p><p>[G] [Em] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[G] [Em] [Em] [Am]</p>',
  2023,
  'D',
  4,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु परीक्षा बिहान',
  'mutu-pariksha-bihan',
  (SELECT id FROM "artist" WHERE slug = 'kumar-sanu'),
  '<p>मुटु परीक्षा बिहान</p><p>[G] [Bb] [C] [F]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [C] [F]</p>',
  2022,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'ज्ञान साँझ बिना',
  'gyan-sanjh-bina',
  (SELECT id FROM "artist" WHERE slug = 'kumar-sanu'),
  '<p>ज्ञान साँझ बिना</p><p>[F#m] [C] [G] [Em]</p><p>Lyrics coming soon...</p><p>[F#m] [C] [G] [Em]</p>',
  2009,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु तिर परीक्षा हिमाल आयो',
  'mutu-tira-pariksha-himal-aayo',
  (SELECT id FROM "artist" WHERE slug = 'alka-yagnik'),
  '<p>मुटु तिर परीक्षा हिमाल आयो</p><p>[F] [C] [D] [Bb]</p><p>Lyrics coming soon...</p><p>[F] [C] [D] [Bb]</p>',
  2005,
  'F',
  1,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति ले साथी के',
  'shakti-le-sathi-ke',
  (SELECT id FROM "artist" WHERE slug = 'alka-yagnik'),
  '<p>शक्ति ले साथी के</p><p>[F] [Em] [D] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [Em] [D] [F#m]</p>',
  2002,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा लाई',
  'aankha-lai',
  (SELECT id FROM "artist" WHERE slug = 'udit-narayan'),
  '<p>आँखा लाई</p><p>[D] [D] [Am] [Dm]</p><p>Lyrics coming soon...</p><p>[D] [D] [Am] [Dm]</p>',
  2001,
  'Bb',
  2,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जिन्दगी बिना भरोसा फुल्छ',
  'jindagi-bina-bharosa-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'udit-narayan'),
  '<p>जिन्दगी बिना भरोसा फुल्छ</p><p>[Dm] [E] [Em] [E]</p><p>Lyrics coming soon...</p><p>[Dm] [E] [Em] [E]</p>',
  2001,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा आशा',
  'bharosa-asha',
  (SELECT id FROM "artist" WHERE slug = 'kk'),
  '<p>भरोसा आशा</p><p>[Bb] [Em] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[Bb] [Em] [Em] [Am]</p>',
  1990,
  'Am',
  3,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य तिर सपना तिम्रो',
  'satya-tira-sapana-timro',
  (SELECT id FROM "artist" WHERE slug = 'kk'),
  '<p>सत्य तिर सपना तिम्रो</p><p>[Em] [F#m] [Em] [Am]</p><p>Lyrics coming soon...</p><p>[Em] [F#m] [Em] [Am]</p>',
  2018,
  'Bb',
  2,
  'EADGBE',
  'Beginner',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ मुटु',
  'gaun-mutu',
  (SELECT id FROM "artist" WHERE slug = 'shaan'),
  '<p>गाउँ मुटु</p><p>[D] [C] [Am] [Am]</p><p>Lyrics coming soon...</p><p>[D] [C] [Am] [Am]</p>',
  2023,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा सम्म मै संग आयो',
  'hawa-samma-mai-sanga-aayo',
  (SELECT id FROM "artist" WHERE slug = 'shaan'),
  '<p>हावा सम्म मै संग आयो</p><p>[G] [Bb] [F#m] [F#m]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [F#m] [F#m]</p>',
  2007,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून मुस्कान',
  'joon-muskan',
  (SELECT id FROM "artist" WHERE slug = 'mohit-chauhan'),
  '<p>जून मुस्कान</p><p>[Am] [F] [F#m] [F]</p><p>Lyrics coming soon...</p><p>[Am] [F] [F#m] [F]</p>',
  2024,
  'F',
  1,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'माया मै सम्झना',
  'maya-mai-samjhana',
  (SELECT id FROM "artist" WHERE slug = 'mohit-chauhan'),
  '<p>माया मै सम्झना</p><p>[D] [Am] [F] [D]</p><p>Lyrics coming soon...</p><p>[D] [Am] [F] [D]</p>',
  2002,
  'Bb',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून बाटो',
  'joon-bato',
  (SELECT id FROM "artist" WHERE slug = 'badshah'),
  '<p>जून बाटो</p><p>[Bb] [G] [D] [Em]</p><p>Lyrics coming soon...</p><p>[Bb] [G] [D] [Em]</p>',
  1999,
  'A',
  4,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश संग बोल्छ',
  'akash-sanga-bolchha',
  (SELECT id FROM "artist" WHERE slug = 'badshah'),
  '<p>आकाश संग बोल्छ</p><p>[F] [F] [G] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [F] [G] [F#m]</p>',
  2008,
  'A',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति भरोसा बाटो',
  'shanti-bharosa-bato',
  (SELECT id FROM "artist" WHERE slug = 'nusrat-fateh-ali-khan'),
  '<p>शान्ति भरोसा बाटो</p><p>[F#m] [G] [D] [C]</p><p>Lyrics coming soon...</p><p>[F#m] [G] [D] [C]</p>',
  2007,
  'Bb',
  0,
  'EADGBE',
  'Advanced',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शान्ति रात गयो',
  'shanti-raat-gayo',
  (SELECT id FROM "artist" WHERE slug = 'nusrat-fateh-ali-khan'),
  '<p>शान्ति रात गयो</p><p>[C] [D] [Dm] [G]</p><p>Lyrics coming soon...</p><p>[C] [D] [Dm] [G]</p>',
  2022,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'भरोसा ज्ञान तिमी हाँसो',
  'bharosa-gyan-timi-haaso',
  (SELECT id FROM "artist" WHERE slug = 'jagjit-singh'),
  '<p>भरोसा ज्ञान तिमी हाँसो</p><p>[F] [C] [Dm] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [C] [Dm] [F#m]</p>',
  2024,
  'F',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हिमाल जिन्दगी फुल्छ',
  'himal-jindagi-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'jagjit-singh'),
  '<p>हिमाल जिन्दगी फुल्छ</p><p>[F] [Bb] [Bb] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [Bb] [Bb] [F#m]</p>',
  2006,
  'Bb',
  0,
  'EADGBE',
  'Beginner',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम सम्म बिना बिस्तर्छ',
  'prem-samma-bina-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'hariharan'),
  '<p>प्रेम सम्म बिना बिस्तर्छ</p><p>[C] [D] [Dm] [D]</p><p>Lyrics coming soon...</p><p>[C] [D] [Dm] [D]</p>',
  1998,
  'G',
  1,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर हाम्रो को',
  'sahar-hamro-ko',
  (SELECT id FROM "artist" WHERE slug = 'hariharan'),
  '<p>सहर हाम्रो को</p><p>[Bb] [Em] [F] [D]</p><p>Lyrics coming soon...</p><p>[Bb] [Em] [F] [D]</p>',
  2001,
  'D',
  3,
  'EADGBE',
  'Advanced',
  'Pop Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'उडान यात्रा अघि',
  'udan-yatra-aghi',
  (SELECT id FROM "artist" WHERE slug = 'kavita-krishnamurthy'),
  '<p>उडान यात्रा अघि</p><p>[Em] [C] [C] [Bb]</p><p>Lyrics coming soon...</p><p>[Em] [C] [C] [Bb]</p>',
  2005,
  'G',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आँखा आशा र भित्र दौडन्छ',
  'aankha-asha-ra-bhitra-daudanchha',
  (SELECT id FROM "artist" WHERE slug = 'kavita-krishnamurthy'),
  '<p>आँखा आशा र भित्र दौडन्छ</p><p>[F#m] [D] [F] [F]</p><p>Lyrics coming soon...</p><p>[F#m] [D] [F] [F]</p>',
  1992,
  'Dm',
  0,
  'EADGBE',
  'Intermediate',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पानी को तिमी फूल',
  'pani-ko-timi-phool',
  (SELECT id FROM "artist" WHERE slug = 'shankar-mahadevan'),
  '<p>पानी को तिमी फूल</p><p>[G] [G] [Bb] [G]</p><p>Lyrics coming soon...</p><p>[G] [G] [Bb] [G]</p>',
  2005,
  'Bb',
  4,
  'EADGBE',
  'Intermediate',
  'Modern',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सहर आगो फुल्छ',
  'sahar-aago-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'shankar-mahadevan'),
  '<p>सहर आगो फुल्छ</p><p>[D] [Em] [F#m] [E]</p><p>Lyrics coming soon...</p><p>[D] [Em] [F#m] [E]</p>',
  2014,
  'F',
  2,
  'EADGBE',
  'Intermediate',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ ले बिहान',
  'sanjh-le-bihan',
  (SELECT id FROM "artist" WHERE slug = 'abhijeet'),
  '<p>साँझ ले बिहान</p><p>[F] [Dm] [D] [Am]</p><p>Lyrics coming soon...</p><p>[F] [Dm] [D] [Am]</p>',
  1997,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हाम्रो हृदय अघि कथा बढ्छ',
  'hamro-hridaya-aghi-katha-badhchha',
  (SELECT id FROM "artist" WHERE slug = 'abhijeet'),
  '<p>हाम्रो हृदय अघि कथा बढ्छ</p><p>[Bb] [F] [Dm] [Em]</p><p>Lyrics coming soon...</p><p>[Bb] [F] [Dm] [Em]</p>',
  2022,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'फूल तिमी फुल्छ',
  'phool-timi-fulchha',
  (SELECT id FROM "artist" WHERE slug = 'anuradha-paudwal'),
  '<p>फूल तिमी फुल्छ</p><p>[Em] [Bb] [F] [Bb]</p><p>Lyrics coming soon...</p><p>[Em] [Bb] [F] [Bb]</p>',
  2007,
  'F',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'तिम्रो हरू अघि दौडन्छ',
  'timro-haru-aghi-daudanchha',
  (SELECT id FROM "artist" WHERE slug = 'anuradha-paudwal'),
  '<p>तिम्रो हरू अघि दौडन्छ</p><p>[Em] [Am] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[Em] [Am] [Bb] [F]</p>',
  2004,
  'D',
  0,
  'EADGBE',
  'Intermediate',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी मै',
  'sathi-mai',
  (SELECT id FROM "artist" WHERE slug = 'ghulam-ali'),
  '<p>साथी मै</p><p>[Am] [Am] [G] [G]</p><p>Lyrics coming soon...</p><p>[Am] [Am] [G] [G]</p>',
  2022,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश ले जून',
  'akash-le-joon',
  (SELECT id FROM "artist" WHERE slug = 'ghulam-ali'),
  '<p>आकाश ले जून</p><p>[F#m] [Dm] [Am] [Bb]</p><p>Lyrics coming soon...</p><p>[F#m] [Dm] [Am] [Bb]</p>',
  2005,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आकाश ले आकाश',
  'akash-le-akash',
  (SELECT id FROM "artist" WHERE slug = 'sunidhi-chauhan'),
  '<p>आकाश ले आकाश</p><p>[C] [Dm] [C] [F]</p><p>Lyrics coming soon...</p><p>[C] [Dm] [C] [F]</p>',
  2013,
  'Em',
  1,
  'EADGBE',
  'Intermediate',
  'Folk Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'धुन मै तिर आयो',
  'dhun-mai-tira-aayo',
  (SELECT id FROM "artist" WHERE slug = 'sunidhi-chauhan'),
  '<p>धुन मै तिर आयो</p><p>[E] [Dm] [F] [G]</p><p>Lyrics coming soon...</p><p>[E] [Dm] [F] [G]</p>',
  2001,
  'C',
  3,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'जून सपना',
  'joon-sapana',
  (SELECT id FROM "artist" WHERE slug = 'arun-thapa'),
  '<p>जून सपना</p><p>[E] [E] [F#m] [E]</p><p>Lyrics coming soon...</p><p>[E] [E] [F#m] [E]</p>',
  1996,
  'Am',
  1,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'सत्य मै',
  'satya-mai',
  (SELECT id FROM "artist" WHERE slug = 'arun-thapa'),
  '<p>सत्य मै</p><p>[F] [C] [F] [F#m]</p><p>Lyrics coming soon...</p><p>[F] [C] [F] [F#m]</p>',
  1993,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साँझ आशा भित्र रुन्छ',
  'sanjh-asha-bhitra-runchha',
  (SELECT id FROM "artist" WHERE slug = 'deepak-jangam'),
  '<p>साँझ आशा भित्र रुन्छ</p><p>[F#m] [E] [G] [Am]</p><p>Lyrics coming soon...</p><p>[F#m] [E] [G] [Am]</p>',
  1995,
  'Em',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'साथी माया तिर पनि',
  'sathi-maya-tira-pani',
  (SELECT id FROM "artist" WHERE slug = 'deepak-jangam'),
  '<p>साथी माया तिर पनि</p><p>[G] [Bb] [Dm] [Am]</p><p>Lyrics coming soon...</p><p>[G] [Bb] [Dm] [Am]</p>',
  2014,
  'A',
  2,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुस्कान सत्य को बिस्तर्छ',
  'muskan-satya-ko-bistantchha',
  (SELECT id FROM "artist" WHERE slug = 'mukti-revival'),
  '<p>मुस्कान सत्य को बिस्तर्छ</p><p>[C] [Em] [Em] [F]</p><p>Lyrics coming soon...</p><p>[C] [Em] [Em] [F]</p>',
  2011,
  'Am',
  0,
  'EADGBE',
  'Intermediate',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'आगो साँझ नाच्छ',
  'aago-sanjh-nachchha',
  (SELECT id FROM "artist" WHERE slug = 'mukti-revival'),
  '<p>आगो साँझ नाच्छ</p><p>[D] [F] [Am] [C]</p><p>Lyrics coming soon...</p><p>[D] [F] [Am] [C]</p>',
  2001,
  'Dm',
  0,
  'EADGBE',
  'Beginner',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पहाड बिना भरोसा हावा',
  'pahad-bina-bharosa-hawa',
  (SELECT id FROM "artist" WHERE slug = 'kumar-basnet'),
  '<p>पहाड बिना भरोसा हावा</p><p>[F] [F#m] [D] [E]</p><p>Lyrics coming soon...</p><p>[F] [F#m] [D] [E]</p>',
  1999,
  'G',
  0,
  'EADGBE',
  'Advanced',
  'Classic',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गाउँ पानी मन मुटु',
  'gaun-pani-man-mutu',
  (SELECT id FROM "artist" WHERE slug = 'kumar-basnet'),
  '<p>गाउँ पानी मन मुटु</p><p>[G] [F] [E] [C]</p><p>Lyrics coming soon...</p><p>[G] [F] [E] [C]</p>',
  2013,
  'A',
  0,
  'EADGBE',
  'Beginner',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'गीत आगो सुक्छ',
  'geet-aago-sukchha',
  (SELECT id FROM "artist" WHERE slug = 'nabin-k-bhattarai'),
  '<p>गीत आगो सुक्छ</p><p>[C] [C] [C] [F#m]</p><p>Lyrics coming soon...</p><p>[C] [C] [C] [F#m]</p>',
  2023,
  'A',
  0,
  'EADGBE',
  'Advanced',
  'Soul',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'पात पछि दौडन्छ',
  'paat-pachi-daudanchha',
  (SELECT id FROM "artist" WHERE slug = 'nabin-k-bhattarai'),
  '<p>पात पछि दौडन्छ</p><p>[G] [D] [Am] [D]</p><p>Lyrics coming soon...</p><p>[G] [D] [Am] [D]</p>',
  2011,
  'C',
  1,
  'EADGBE',
  'Intermediate',
  'Rock',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'शक्ति मै बिना बिछोड',
  'shakti-mai-bina-bichhod',
  (SELECT id FROM "artist" WHERE slug = 'sashi-rawal'),
  '<p>शक्ति मै बिना बिछोड</p><p>[Em] [G] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[Em] [G] [Bb] [F]</p>',
  2015,
  'E',
  0,
  'EADGBE',
  'Intermediate',
  'Folk',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'मुटु तिर तिमी मा',
  'mutu-tira-timi-ma',
  (SELECT id FROM "artist" WHERE slug = 'sashi-rawal'),
  '<p>मुटु तिर तिमी मा</p><p>[C] [Em] [Bb] [F]</p><p>Lyrics coming soon...</p><p>[C] [Em] [Bb] [F]</p>',
  2023,
  'D',
  0,
  'EADGBE',
  'Beginner',
  'Pop',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'हावा आगो मन सम्झना',
  'hawa-aago-man-samjhana',
  (SELECT id FROM "artist" WHERE slug = 'amrit-gurung'),
  '<p>हावा आगो मन सम्झना</p><p>[E] [Am] [Dm] [F]</p><p>Lyrics coming soon...</p><p>[E] [Am] [Dm] [F]</p>',
  1992,
  'Em',
  0,
  'EADGBE',
  'Advanced',
  'Bhajan',
  true
)
ON CONFLICT (slug) DO NOTHING;
INSERT INTO "song" ("title", "slug", "artistId", "content", "year", "key", "capo", "tuning", "difficulty", "genre", "isActive")
VALUES (
  'प्रेम को',
  'prem-ko',
  (SELECT id FROM "artist" WHERE slug = 'amrit-gurung'),
  '<p>प्रेम को</p><p>[Bb] [E] [Am] [E]</p><p>Lyrics coming soon...</p><p>[Bb] [E] [Am] [E]</p>',
  1994,
  'C',
  0,
  'EADGBE',
  'Advanced',
  'R&B',
  true
)
ON CONFLICT (slug) DO NOTHING;

COMMIT;
