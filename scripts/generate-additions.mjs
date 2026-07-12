import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

const __dirname = path.dirname(fileURLToPath(import.meta.url))

function toSlug(text) {
  return text.toLowerCase().replace(/[^a-z0-9]/g, '-').replace(/-+/g, '-').replace(/^-+|-+$/g, '')
}

const CHORDS_BY_KEY = {
  C: ['C', 'G', 'Am', 'F'], G: ['G', 'D', 'Em', 'C'], D: ['D', 'G', 'A', 'Bm'],
  A: ['A', 'D', 'E', 'F#m'], E: ['E', 'A', 'B', 'C#m'],
  Am: ['Am', 'G', 'F', 'E7'], Em: ['Em', 'C', 'G', 'D'], Dm: ['Dm', 'Am', 'Bb', 'C'],
  F: ['F', 'Bb', 'C', 'Dm'], Bb: ['Bb', 'F', 'Gm', 'Eb'],
}

function content(title, artist, key) {
  const c = CHORDS_BY_KEY[key] || CHORDS_BY_KEY.C
  return `<pre>${c.join('  ')}\n\n[Verse]\n${c[0]}  ${c[1]}  ${c[2]}  ${c[3]}\n${title} - ${artist}\n\n[Chorus]\n${c[0]}  ${c[2]}  ${c[1]}  ${c[3]}\nPlay with feeling\n\n[Outro]\n${c[0]}  ${c[3]}</pre>`
}

function escapeVal(v) {
  if (v === null || v === undefined) return 'NULL'
  if (typeof v === 'number') return String(v)
  if (typeof v === 'boolean') return v ? 'TRUE' : 'FALSE'
  const s = String(v).replace(/'/g, "''")
  return `'${s}'`
}

const artists = {

  'david-bowie': { name: 'David Bowie', bio: 'English singer-songwriter. Iconic, influential artist across five decades.', songs: [
    ['Space Oddity', 'Intermediate', 'Art Rock', 'C', 1969],
    ['Heroes', 'Intermediate', 'Art Rock', 'G', 1977],
    ['Life on Mars', 'Advanced', 'Art Rock', 'C', 1971],
    ['Ziggy Stardust', 'Intermediate', 'Glam Rock', 'D', 1972],
    ['Suffragette City', 'Intermediate', 'Glam Rock', 'A', 1972],
    ['Rebel Rebel', 'Beginner', 'Glam Rock', 'E', 1974],
    ['Young Americans', 'Intermediate', 'Funk Rock', 'G', 1975],
    ['Fame', 'Intermediate', 'Funk Rock', 'G', 1975],
    ['Golden Years', 'Intermediate', 'Funk Rock', 'G', 1976],
    ['Let\'s Dance', 'Intermediate', 'Dance Rock', 'G', 1983],
    ['China Girl', 'Intermediate', 'Rock', 'G', 1983],
    ['Modern Love', 'Intermediate', 'Rock', 'G', 1983],
    ['Under Pressure', 'Intermediate', 'Rock', 'D', 1981],
    ['Changes', 'Beginner', 'Glam Rock', 'C', 1971],
    ['Starman', 'Intermediate', 'Glam Rock', 'C', 1972],
  ]},

  'ac-dc': { name: 'AC/DC', bio: 'Australian rock band formed in 1973. Hard rock legends.', songs: [
    ['Back in Black', 'Advanced', 'Hard Rock', 'E', 1980],
    ['Highway to Hell', 'Intermediate', 'Hard Rock', 'G', 1979],
    ['You Shook Me All Night Long', 'Intermediate', 'Hard Rock', 'G', 1980],
    ['Thunderstruck', 'Advanced', 'Hard Rock', 'E', 1990],
    ['Whole Lotta Rosie', 'Advanced', 'Hard Rock', 'E', 1977],
    ['T.N.T.', 'Intermediate', 'Hard Rock', 'E', 1975],
    ['Dirty Deeds Done Dirt Cheap', 'Intermediate', 'Hard Rock', 'G', 1976],
    ['Hell Bells', 'Advanced', 'Hard Rock', 'E', 1980],
    ['Shoot to Thrill', 'Advanced', 'Hard Rock', 'G', 1980],
    ['Rock and Roll Ain\'t Noise Pollution', 'Intermediate', 'Hard Rock', 'G', 1980],
    ['For Those About to Rock', 'Advanced', 'Hard Rock', 'G', 1981],
    ['Let There Be Rock', 'Advanced', 'Hard Rock', 'E', 1977],
    ['Jailbreak', 'Intermediate', 'Hard Rock', 'G', 1976],
    ['Who Made Who', 'Intermediate', 'Hard Rock', 'G', 1986],
    ['Heatseeker', 'Advanced', 'Hard Rock', 'E', 1988],
  ]},

  'guns-n-roses': { name: 'Guns N\' Roses', bio: 'American hard rock band formed in 1985.', songs: [
    ['Sweet Child O\' Mine', 'Advanced', 'Hard Rock', 'D', 1987],
    ['Welcome to the Jungle', 'Advanced', 'Hard Rock', 'E', 1987],
    ['Paradise City', 'Advanced', 'Hard Rock', 'G', 1987],
    ['November Rain', 'Advanced', 'Hard Rock', 'C', 1991],
    ['Don\'t Cry', 'Intermediate', 'Hard Rock', 'G', 1991],
    ['Patience', 'Intermediate', 'Hard Rock', 'G', 1988],
    ['Knockin\' on Heaven\'s Door', 'Beginner', 'Hard Rock', 'G', 1991],
    ['Civil War', 'Advanced', 'Hard Rock', 'Am', 1991],
    ['Nightrain', 'Advanced', 'Hard Rock', 'E', 1987],
    ['Rocket Queen', 'Advanced', 'Hard Rock', 'G', 1987],
    ['Used to Love Her', 'Beginner', 'Hard Rock', 'G', 1988],
    ['You Could Be Mine', 'Advanced', 'Hard Rock', 'E', 1991],
  ]},

  'van-halen': { name: 'Van Halen', bio: 'American rock band formed in 1972. Legendary guitar-driven hard rock.', songs: [
    ['Jump', 'Intermediate', 'Hard Rock', 'C', 1984],
    ['Panama', 'Advanced', 'Hard Rock', 'E', 1984],
    ['Hot for Teacher', 'Advanced', 'Hard Rock', 'G', 1984],
    ['Running with the Devil', 'Intermediate', 'Hard Rock', 'E', 1978],
    ['Eruption', 'Advanced', 'Instrumental Rock', 'E', 1978],
    ['Ain\'t Talkin\' \'Bout Love', 'Intermediate', 'Hard Rock', 'Am', 1978],
    ['You Really Got Me', 'Beginner', 'Hard Rock', 'G', 1978],
    ['Jamie\'s Cryin\'', 'Intermediate', 'Hard Rock', 'G', 1978],
    ['And the Cradle Will Rock', 'Intermediate', 'Hard Rock', 'G', 1980],
    ['Unchained', 'Advanced', 'Hard Rock', 'E', 1981],
    ['Dance the Night Away', 'Intermediate', 'Hard Rock', 'G', 1979],
    ['Beautiful Girls', 'Intermediate', 'Hard Rock', 'G', 1979],
  ]},

  'aerosmith': { name: 'Aerosmith', bio: 'American rock band formed in 1970. The Bad Boys from Boston.', songs: [
    ['Dream On', 'Intermediate', 'Rock', 'C', 1973],
    ['Walk This Way', 'Advanced', 'Rock', 'C', 1975],
    ['Sweet Emotion', 'Intermediate', 'Rock', 'E', 1975],
    ['Toys in the Attic', 'Advanced', 'Rock', 'E', 1975],
    ['Back in the Saddle', 'Advanced', 'Rock', 'E', 1976],
    ['Last Child', 'Intermediate', 'Rock', 'G', 1976],
    ['I Don\'t Want to Miss a Thing', 'Intermediate', 'Rock', 'G', 1998],
    ['Cryin\'', 'Intermediate', 'Rock', 'G', 1993],
    ['Crazy', 'Intermediate', 'Rock', 'G', 1993],
    ['Amazing', 'Intermediate', 'Rock', 'G', 1993],
    ['Janie\'s Got a Gun', 'Advanced', 'Rock', 'G', 1989],
    ['Love in an Elevator', 'Intermediate', 'Rock', 'G', 1989],
  ]},

  'bon-jovi': { name: 'Bon Jovi', bio: 'American rock band formed in 1983. Arena rock icons.', songs: [
    ['Livin\' on a Prayer', 'Beginner', 'Rock', 'G', 1986],
    ['You Give Love a Bad Name', 'Intermediate', 'Rock', 'C', 1986],
    ['Wanted Dead or Alive', 'Beginner', 'Rock', 'G', 1986],
    ['Always', 'Intermediate', 'Rock', 'G', 1994],
    ['Bed of Roses', 'Intermediate', 'Rock', 'G', 1992],
    ['It\'s My Life', 'Intermediate', 'Rock', 'G', 2000],
    ['Blaze of Glory', 'Intermediate', 'Rock', 'G', 1990],
    ['Bad Medicine', 'Intermediate', 'Rock', 'G', 1988],
    ['Born to Be My Baby', 'Intermediate', 'Rock', 'G', 1988],
    ['I\'ll Be There for You', 'Intermediate', 'Rock', 'G', 1988],
  ]},

  'journey': { name: 'Journey', bio: 'American rock band formed in 1973. Arena rock legends.', songs: [
    ['Don\'t Stop Believin\'', 'Beginner', 'Arena Rock', 'G', 1981],
    ['Any Way You Want It', 'Intermediate', 'Arena Rock', 'G', 1980],
    ['Wheel in the Sky', 'Intermediate', 'Arena Rock', 'G', 1978],
    ['Lights', 'Beginner', 'Arena Rock', 'G', 1978],
    ['Open Arms', 'Beginner', 'Arena Rock', 'G', 1981],
    ['Faithfully', 'Intermediate', 'Arena Rock', 'G', 1983],
    ['Separate Ways', 'Intermediate', 'Arena Rock', 'G', 1983],
    ['Who\'s Crying Now', 'Intermediate', 'Arena Rock', 'G', 1981],
    ['Stone in Love', 'Intermediate', 'Arena Rock', 'G', 1981],
    ['Feeling That Way', 'Intermediate', 'Arena Rock', 'G', 1978],
  ]},

  'dire-straits': { name: 'Dire Straits', bio: 'English rock band formed in 1977. Mark Knopfler\'s guitar mastery.', songs: [
    ['Sultans of Swing', 'Advanced', 'Rock', 'D', 1978],
    ['Money for Nothing', 'Intermediate', 'Rock', 'G', 1985],
    ['Brothers in Arms', 'Intermediate', 'Rock', 'G', 1985],
    ['Romeo and Juliet', 'Intermediate', 'Folk Rock', 'G', 1980],
    ['Walk of Life', 'Beginner', 'Rock', 'G', 1985],
    ['So Far Away', 'Intermediate', 'Rock', 'G', 1985],
    ['Your Latest Trick', 'Advanced', 'Rock', 'G', 1985],
    ['Tunnel of Love', 'Advanced', 'Rock', 'G', 1980],
    ['Down to the Waterline', 'Intermediate', 'Rock', 'G', 1978],
    ['Lady Writer', 'Intermediate', 'Rock', 'G', 1979],
  ]},

  'zz-top': { name: 'ZZ Top', bio: 'American rock band formed in 1969. Blues rock with a distinct style.', songs: [
    ['La Grange', 'Advanced', 'Blues Rock', 'A', 1973],
    ['Tush', 'Intermediate', 'Blues Rock', 'E', 1975],
    ['Sharp Dressed Man', 'Intermediate', 'Blues Rock', 'G', 1983],
    ['Gimme All Your Lovin\'', 'Intermediate', 'Blues Rock', 'G', 1983],
    ['Legs', 'Intermediate', 'Blues Rock', 'G', 1983],
    ['Cheap Sunglasses', 'Intermediate', 'Blues Rock', 'G', 1979],
    ['Jesus Just Left Chicago', 'Intermediate', 'Blues Rock', 'G', 1973],
    ['I\'m Bad I\'m Nationwide', 'Intermediate', 'Blues Rock', 'G', 1979],
    ['Pearl Necklace', 'Intermediate', 'Blues Rock', 'G', 1981],
    ['Sleeping Bag', 'Intermediate', 'Blues Rock', 'G', 1985],
  ]},

  'the-police': { name: 'The Police', bio: 'English rock band formed in 1977. New wave and reggae rock pioneers.', songs: [
    ['Every Breath You Take', 'Beginner', 'New Wave', 'G', 1983],
    ['Roxanne', 'Intermediate', 'New Wave', 'Am', 1978],
    ['Message in a Bottle', 'Intermediate', 'New Wave', 'Am', 1979],
    ['Don\'t Stand So Close to Me', 'Intermediate', 'New Wave', 'G', 1980],
    ['Every Little Thing She Does Is Magic', 'Intermediate', 'New Wave', 'G', 1981],
    ['Walking on the Moon', 'Beginner', 'Reggae Rock', 'G', 1979],
    ['So Lonely', 'Intermediate', 'Reggae Rock', 'Am', 1978],
    ['Can\'t Stand Losing You', 'Intermediate', 'Reggae Rock', 'Am', 1978],
    ['King of Pain', 'Intermediate', 'New Wave', 'Am', 1983],
    ['Synchronicity II', 'Intermediate', 'New Wave', 'G', 1983],
  ]},

  'smashing-pumpkins': { name: 'The Smashing Pumpkins', bio: 'American alternative rock band formed in 1988.', songs: [
    ['1979', 'Intermediate', 'Alternative', 'G', 1995],
    ['Tonight Tonight', 'Intermediate', 'Alternative', 'G', 1995],
    ['Bullet with Butterfly Wings', 'Advanced', 'Alternative', 'G', 1995],
    ['Disarm', 'Intermediate', 'Alternative', 'C', 1993],
    ['Cherub Rock', 'Advanced', 'Alternative', 'G', 1993],
    ['Today', 'Intermediate', 'Alternative', 'G', 1993],
    ['Zero', 'Advanced', 'Alternative', 'G', 1995],
    ['Ava Adore', 'Intermediate', 'Alternative', 'G', 1998],
  ]},

  'alice-in-chains': { name: 'Alice in Chains', bio: 'American grunge band formed in 1987. Heavy, dark alternative.', songs: [
    ['Man in the Box', 'Advanced', 'Grunge', 'E', 1990],
    ['Would?', 'Advanced', 'Grunge', 'E', 1992],
    ['Rooster', 'Advanced', 'Grunge', 'E', 1992],
    ['Down in a Hole', 'Intermediate', 'Grunge', 'Am', 1992],
    ['No Excuses', 'Intermediate', 'Grunge', 'E', 1994],
    ['Them Bones', 'Advanced', 'Grunge', 'E', 1992],
    ['Heaven Beside You', 'Intermediate', 'Grunge', 'G', 1995],
    ['Nutshell', 'Intermediate', 'Grunge', 'Em', 1994],
    ['Angry Chair', 'Advanced', 'Grunge', 'E', 1992],
    ['Got Me Wrong', 'Intermediate', 'Grunge', 'G', 1992],
  ]},

  'weezer': { name: 'Weezer', bio: 'American alternative rock band formed in 1992. Power pop icons.', songs: [
    ['Say It Ain\'t So', 'Intermediate', 'Alternative', 'G', 1994],
    ['Buddy Holly', 'Intermediate', 'Alternative', 'G', 1994],
    ['Undone the Sweater Song', 'Intermediate', 'Alternative', 'G', 1994],
    ['Hash Pipe', 'Intermediate', 'Alternative', 'G', 2001],
    ['Island in the Sun', 'Beginner', 'Alternative', 'G', 2001],
    ['Beverly Hills', 'Intermediate', 'Alternative', 'G', 2005],
    ['Perfect Situation', 'Intermediate', 'Alternative', 'G', 2005],
    ['Pork and Beans', 'Intermediate', 'Alternative', 'G', 2008],
    ['El Scorcho', 'Intermediate', 'Alternative', 'G', 1996],
  ]},

  'counting-crows': { name: 'Counting Crows', bio: 'American rock band formed in 1991. Folk-influenced alternative rock.', songs: [
    ['Mr. Jones', 'Intermediate', 'Alternative', 'D', 1993],
    ['Round Here', 'Intermediate', 'Alternative', 'G', 1993],
    ['A Long December', 'Intermediate', 'Alternative', 'G', 1996],
    ['Hanginaround', 'Intermediate', 'Alternative', 'G', 1999],
    ['Colorblind', 'Beginner', 'Alternative', 'C', 1999],
    ['Accidentally in Love', 'Intermediate', 'Alternative', 'G', 2004],
    ['Omaha', 'Intermediate', 'Alternative', 'G', 1993],
    ['Rain King', 'Intermediate', 'Alternative', 'G', 1994],
  ]},

  'the-cranberries': { name: 'The Cranberries', bio: 'Irish rock band formed in 1989. Alternative rock with Dolores O\'Riordan\'s distinctive voice.', songs: [
    ['Zombie', 'Intermediate', 'Alternative', 'Em', 1994],
    ['Linger', 'Beginner', 'Alternative', 'C', 1993],
    ['Dreams', 'Intermediate', 'Alternative', 'G', 1993],
    ['Ode to My Family', 'Intermediate', 'Alternative', 'G', 1994],
    ['Salvation', 'Intermediate', 'Alternative', 'G', 1996],
    ['When You\'re Gone', 'Beginner', 'Alternative', 'G', 1996],
    ['Free to Decide', 'Intermediate', 'Alternative', 'G', 1996],
  ]},

  'alanis-morissette': { name: 'Alanis Morissette', bio: 'Canadian-American singer-songwriter. 90s alt-rock icon.', songs: [
    ['You Oughta Know', 'Advanced', 'Alternative', 'G', 1995],
    ['Ironic', 'Intermediate', 'Alternative', 'G', 1995],
    ['Hand in My Pocket', 'Beginner', 'Alternative', 'G', 1995],
    ['Head over Feet', 'Intermediate', 'Alternative', 'G', 1995],
    ['Uninvited', 'Intermediate', 'Alternative', 'Am', 1998],
    ['Thank U', 'Intermediate', 'Alternative', 'G', 1998],
    ['Everything', 'Intermediate', 'Alternative', 'G', 2004],
  ]},

  'no-doubt': { name: 'No Doubt', bio: 'American ska punk band formed in 1986. Gwen Stefani fronted.', songs: [
    ['Don\'t Speak', 'Beginner', 'Ska Punk', 'G', 1995],
    ['Just a Girl', 'Intermediate', 'Ska Punk', 'G', 1995],
    ['Spiderwebs', 'Intermediate', 'Ska Punk', 'G', 1995],
    ['Sunday Morning', 'Intermediate', 'Ska Punk', 'G', 1995],
    ['Simple Kind of Life', 'Intermediate', 'Ska Punk', 'G', 2000],
    ['Hey Baby', 'Intermediate', 'Ska Punk', 'G', 2001],
    ['Hella Good', 'Intermediate', 'Ska Punk', 'G', 2001],
  ]},

  'sublime': { name: 'Sublime', bio: 'American ska punk band formed in 1988. Reggae punk fusion.', songs: [
    ['What I Got', 'Beginner', 'Ska Punk', 'G', 1996],
    ['Santeria', 'Beginner', 'Ska Punk', 'G', 1996],
    ['Wrong Way', 'Intermediate', 'Ska Punk', 'G', 1996],
    ['Doin\' Time', 'Beginner', 'Ska Punk', 'G', 1996],
    ['Date Rape', 'Intermediate', 'Ska Punk', 'G', 1992],
    ['Badfish', 'Beginner', 'Ska Punk', 'G', 1992],
    ['40oz to Freedom', 'Intermediate', 'Ska Punk', 'G', 1992],
  ]},

  'dave-matthews-band': { name: 'Dave Matthews Band', bio: 'American rock band formed in 1991. Jam band legends.', songs: [
    ['Crash into Me', 'Intermediate', 'Rock', 'D', 1996],
    ['Ants Marching', 'Advanced', 'Rock', 'D', 1994],
    ['Satellite', 'Intermediate', 'Rock', 'G', 1994],
    ['The Space Between', 'Intermediate', 'Rock', 'G', 2001],
    ['What Would You Say', 'Intermediate', 'Rock', 'G', 1994],
    ['Tripping Billies', 'Advanced', 'Rock', 'G', 1996],
    ['Don\'t Drink the Water', 'Intermediate', 'Rock', 'G', 1998],
    ['Everyday', 'Intermediate', 'Rock', 'G', 2001],
    ['Where Are You Going', 'Beginner', 'Rock', 'G', 2002],
  ]},

  'the-strokes': { name: 'The Strokes', bio: 'American rock band formed in 1998. Garage rock revival pioneers.', songs: [
    ['Last Nite', 'Beginner', 'Indie Rock', 'G', 2001],
    ['Someday', 'Intermediate', 'Indie Rock', 'G', 2001],
    ['Hard to Explain', 'Intermediate', 'Indie Rock', 'G', 2001],
    ['Reptilia', 'Intermediate', 'Indie Rock', 'G', 2003],
    ['12:51', 'Intermediate', 'Indie Rock', 'G', 2003],
    ['Juicebox', 'Intermediate', 'Indie Rock', 'G', 2006],
    ['You Only Live Once', 'Intermediate', 'Indie Rock', 'G', 2006],
  ]},

  'white-stripes': { name: 'The White Stripes', bio: 'American rock duo formed in 1997. Jack White\'s garage blues rock.', songs: [
    ['Seven Nation Army', 'Beginner', 'Garage Rock', 'E', 2003],
    ['Fell in Love with a Girl', 'Intermediate', 'Garage Rock', 'G', 2001],
    ['The Hardest Button to Button', 'Intermediate', 'Garage Rock', 'E', 2003],
    ['Dead Leaves and the Dirty Ground', 'Intermediate', 'Garage Rock', 'G', 2001],
    ['We\'re Going to Be Friends', 'Beginner', 'Folk Rock', 'C', 2001],
    ['Hotel Yorba', 'Beginner', 'Garage Rock', 'G', 2001],
    ['Icky Thump', 'Advanced', 'Garage Rock', 'G', 2007],
  ]},

  'the-killers': { name: 'The Killers', bio: 'American rock band formed in 2001. Indie rock superstars.', songs: [
    ['Mr. Brightside', 'Intermediate', 'Indie Rock', 'G', 2004],
    ['Somebody Told Me', 'Intermediate', 'Indie Rock', 'G', 2004],
    ['When You Were Young', 'Intermediate', 'Indie Rock', 'G', 2006],
    ['Read My Mind', 'Intermediate', 'Indie Rock', 'G', 2006],
    ['Smile Like You Mean It', 'Intermediate', 'Indie Rock', 'G', 2004],
    ['All These Things That I\'ve Done', 'Intermediate', 'Indie Rock', 'G', 2004],
    ['Human', 'Intermediate', 'Indie Rock', 'G', 2008],
  ]},

  'the-verve': { name: 'The Verve', bio: 'English rock band formed in 1990. Britpop and space rock.', songs: [
    ['Bitter Sweet Symphony', 'Intermediate', 'Britpop', 'E', 1997],
    ['Lucky Man', 'Intermediate', 'Britpop', 'G', 1997],
    ['The Drugs Don\'t Work', 'Intermediate', 'Britpop', 'G', 1997],
    ['Sonnet', 'Intermediate', 'Britpop', 'G', 1997],
    ['Love Is Noise', 'Intermediate', 'Britpop', 'G', 2008],
  ]},

  'fleet-foxes': { name: 'Fleet Foxes', bio: 'American indie folk band formed in 2006. Harmony-rich folk rock.', songs: [
    ['White Winter Hymnal', 'Beginner', 'Indie Folk', 'G', 2008],
    ['Mykonos', 'Intermediate', 'Indie Folk', 'G', 2008],
    ['Blue Ridge Mountains', 'Intermediate', 'Indie Folk', 'G', 2008],
    ['Ragged Wood', 'Intermediate', 'Indie Folk', 'G', 2008],
    ['Helplessness Blues', 'Intermediate', 'Indie Folk', 'G', 2011],
  ]},

  'the-cure': { name: 'The Cure', bio: 'English rock band formed in 1976. Gothic and alternative rock icons.', songs: [
    ['Boys Don\'t Cry', 'Beginner', 'New Wave', 'G', 1979],
    ['Just Like Heaven', 'Intermediate', 'New Wave', 'G', 1987],
    ['Friday I\'m in Love', 'Beginner', 'Alternative', 'G', 1992],
    ['Pictures of You', 'Intermediate', 'Alternative', 'G', 1989],
    ['Lullaby', 'Intermediate', 'Alternative', 'G', 1989],
    ['Close to Me', 'Intermediate', 'New Wave', 'G', 1985],
    ['In Between Days', 'Intermediate', 'New Wave', 'G', 1985],
    ['Heaven Knows I\'m Miserable Now', 'Intermediate', 'New Wave', 'G', 1984],
  ]},

  'prince': { name: 'Prince', bio: 'American singer-songwriter, multi-instrumentalist. Funk, pop, and rock genius.', songs: [
    ['Purple Rain', 'Advanced', 'Funk Rock', 'G', 1984],
    ['When Doves Cry', 'Advanced', 'Funk', 'Am', 1984],
    ['Let\'s Go Crazy', 'Intermediate', 'Funk Rock', 'G', 1984],
    ['Kiss', 'Intermediate', 'Funk', 'G', 1986],
    ['Raspberry Beret', 'Intermediate', 'Pop', 'G', 1985],
    ['Little Red Corvette', 'Intermediate', 'Funk', 'G', 1982],
    ['1999', 'Intermediate', 'Funk', 'G', 1982],
    ['Sign o\' the Times', 'Intermediate', 'Funk', 'G', 1987],
  ]},

  'boston': { name: 'Boston', bio: 'American rock band formed in 1975. Arena rock with soaring harmonies.', songs: [
    ['More Than a Feeling', 'Intermediate', 'Arena Rock', 'G', 1976],
    ['Peace of Mind', 'Intermediate', 'Arena Rock', 'G', 1976],
    ['Foreplay Long Time', 'Advanced', 'Arena Rock', 'G', 1976],
    ['Don\'t Look Back', 'Intermediate', 'Arena Rock', 'G', 1978],
    ['Rock and Roll Band', 'Intermediate', 'Arena Rock', 'G', 1976],
    ['Amanda', 'Intermediate', 'Arena Rock', 'G', 1986],
  ]},

  'heart': { name: 'Heart', bio: 'American rock band formed in 1973. Pioneering women-led hard rock.', songs: [
    ['Barracuda', 'Advanced', 'Hard Rock', 'Am', 1977],
    ['Crazy on You', 'Advanced', 'Hard Rock', 'Am', 1976],
    ['Magic Man', 'Advanced', 'Hard Rock', 'Am', 1976],
    ['What About Love', 'Intermediate', 'Hard Rock', 'G', 1985],
    ['These Dreams', 'Intermediate', 'Rock', 'G', 1985],
    ['Alone', 'Intermediate', 'Hard Rock', 'G', 1987],
  ]},

  'the-cars': { name: 'The Cars', bio: 'American rock band formed in 1976. New wave and power pop icons.', songs: [
    ['Drive', 'Intermediate', 'New Wave', 'G', 1984],
    ['Just What I Needed', 'Beginner', 'New Wave', 'G', 1978],
    ['My Best Friend\'s Girl', 'Beginner', 'New Wave', 'G', 1978],
    ['Let\'s Go', 'Intermediate', 'New Wave', 'G', 1979],
    ['Shake It Up', 'Intermediate', 'New Wave', 'G', 1981],
    ['You Might Think', 'Intermediate', 'New Wave', 'G', 1984],
  ]},

  'blondie': { name: 'Blondie', bio: 'American rock band formed in 1974. New wave and punk pioneers.', songs: [
    ['Heart of Glass', 'Intermediate', 'New Wave', 'G', 1979],
    ['Call Me', 'Intermediate', 'New Wave', 'G', 1980],
    ['One Way or Another', 'Beginner', 'New Wave', 'G', 1978],
    ['Dreaming', 'Intermediate', 'New Wave', 'G', 1979],
    ['The Tide Is High', 'Beginner', 'New Wave', 'G', 1980],
    ['Atomic', 'Intermediate', 'New Wave', 'G', 1980],
  ]},
}

const artistNames = Object.keys(artists)
const OUT_PATH = path.resolve(__dirname, '..', 'supabase/migrations/20250714000000_seed_additions.sql')

let sql = `-- Migration: Seed additions — 70s-2000s popular songs (separate file)
-- Generated: ${new Date().toISOString()}
-- ${artistNames.length} artists

BEGIN;

INSERT INTO artist (name, slug, bio, "isActive") VALUES\n`

const artistRows = artistNames.map((slug) => {
  const a = artists[slug]
  return `  (${escapeVal(a.name)}, ${escapeVal(slug)}, ${escapeVal(a.bio || null)}, TRUE)`
})
sql += artistRows.join(',\n') + '\n'
sql += `ON CONFLICT (slug) DO NOTHING;\n\n`

sql += `-- Songs\n`
let totalSongs = 0

for (const [slug, artist] of Object.entries(artists)) {
  for (const [title, difficulty, genre, key, year] of artist.songs) {
    const songSlug = toSlug(title) + '-' + slug
    const cnt = content(title, artist.name, key)

    sql += `INSERT INTO song (title, slug, "artistId", difficulty, genre, key, year, content, "isActive")\n`
    sql += `VALUES (${escapeVal(title)}, ${escapeVal(songSlug)}, (SELECT id FROM artist WHERE slug = ${escapeVal(slug)}),\n`
    sql += `  ${escapeVal(difficulty)}, ${escapeVal(genre)}, ${escapeVal(key)}, ${escapeVal(year)},\n`
    sql += `  $song_content$${cnt}$song_content$,\n`
    sql += `  TRUE)\n`
    sql += `ON CONFLICT (slug) DO NOTHING;\n`
    totalSongs++
  }
}

sql += `\nCOMMIT;\n`

fs.writeFileSync(OUT_PATH, sql, 'utf-8')
console.log(`✅ Generated ${OUT_PATH}`)
console.log(`   ${artistNames.length} artists, ${totalSongs} songs`)
