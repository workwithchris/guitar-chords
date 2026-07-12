INSERT INTO artist (name, slug, bio, image, "isActive") VALUES
    ('John Mayer', 'john-mayer', 'American singer-songwriter and guitarist. Known for blues-rock and pop hits.', NULL, TRUE),
    ('Taylor Swift', 'taylor-swift', 'American singer-songwriter. One of the best-selling music artists of all time.', NULL, TRUE),
    ('Ed Sheeran', 'ed-sheeran', 'English singer-songwriter known for acoustic pop and folk-infused music.', NULL, TRUE),
    ('Radiohead', 'radiohead', 'English rock band formed in 1985. Known for experimental and alternative rock.', NULL, TRUE),
    ('Tommy Emmanuel', 'tommy-emmanuel', 'Australian acoustic guitarist known for complex fingerstyle technique.', NULL, TRUE);

INSERT INTO song (title, slug, "artistId", content, "videoUrl", year, "writtenBy") VALUES
    ('Gravity', 'gravity', (SELECT id FROM artist WHERE slug = 'john-mayer'),
        '<pre>Am  C  G  F  C  G<br/><br/>[Verse]<br/>Am          C              G<br/>Gravity is working against me<br/>F          C           G<br/>And gravity wants to bring me down<br/><br/>[Chorus]<br/>F              C              G<br/>Oh, gravity, stay the hell away from me</pre>',
        '<iframe src="https://www.youtube.com/embed/yGZipVOwXkU" frameborder="0" allowfullscreen></iframe>',
        2006, 'John Mayer'),

    ('Love Story', 'love-story', (SELECT id FROM artist WHERE slug = 'taylor-swift'),
        '<pre>G  C  Em  D<br/><br/>[Verse]<br/>G                C<br/>We were both young when I first saw you<br/>Em                  D<br/>I close my eyes and the flashback starts<br/><br/>[Chorus]<br/>G         C              Em         D<br/>Romeo, take me somewhere we can be alone</pre>',
        '<iframe src="https://www.youtube.com/embed/8xg3vE8Ie_E" frameborder="0" allowfullscreen></iframe>',
        2008, 'Taylor Swift'),

    ('Perfect', 'perfect', (SELECT id FROM artist WHERE slug = 'ed-sheeran'),
        '<pre>C  G  Am  F<br/><br/>[Verse]<br/>C                G<br/>I found a love for me<br/>Am                     F<br/>Darling, just dive right in and follow my lead<br/><br/>[Chorus]<br/>C               G               Am              F<br/>And darling, you look perfect tonight</pre>',
        '<iframe src="https://www.youtube.com/embed/2Vv-BfVoq4g" frameborder="0" allowfullscreen></iframe>',
        2017, 'Ed Sheeran'),

    ('Creep', 'creep', (SELECT id FROM artist WHERE slug = 'radiohead'),
        '<pre>G  B  C  Cm<br/><br/>[Verse]<br/>G                    B<br/>When you were here before<br/>C                        Cm<br/>Could not look you in the eye<br/><br/>[Chorus]<br/>G           B            C              Cm<br/>But I''m a creep, I''m a weirdo, what the hell am I doing here?</pre>',
        '<iframe src="https://www.youtube.com/embed/XFkzRNyygfk" frameborder="0" allowfullscreen></iframe>',
        1992, 'Radiohead'),

    ('Classical Gas', 'classical-gas', (SELECT id FROM artist WHERE slug = 'tommy-emmanuel'),
        '<pre>Am  G/B  C  Dm  E7  Am<br/><br/>[Verse]<br/>Am      G/B    C        Dm<br/>Fingerstyle melody in A minor<br/>E7                        Am<br/>Original by Mason Williams</pre>',
        '<iframe src="https://www.youtube.com/embed/6D3OP7w_g7I" frameborder="0" allowfullscreen></iframe>',
        2005, 'Tommy Emmanuel');
