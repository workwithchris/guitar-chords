"use client"

import React, { useState, useEffect, useMemo, useCallback } from 'react';
import { fetchRelatedSongs } from '@/store/api/song.api'
import {
    Pause, Play, Share2, User, Calendar, PenLine, ArrowLeft,
    Music, ChevronUp, ChevronDown, Download, Heart
} from 'lucide-react';
import Image from 'next/image';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { useFavorites } from '@/lib/use-favorites'
import {
    EmailIcon, EmailShareButton, FacebookIcon, FacebookShareButton,
    LinkedinIcon, LinkedinShareButton, RedditIcon, RedditShareButton,
    TelegramIcon, TelegramShareButton, TwitterIcon, TwitterShareButton,
    WhatsappIcon, WhatsappShareButton,
} from "react-share";

const ALL_CHORDS = [
    'C', 'C#', 'Db', 'D', 'D#', 'Eb', 'E', 'F', 'F#', 'Gb', 'G', 'G#', 'Ab', 'A', 'A#', 'Bb', 'B',
]
const SHARP_KEYS = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
const FLAT_KEYS = ['C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab', 'A', 'Bb', 'B']

type ChordMatch = {
    index: number
    endIndex: number
    original: string
    root: string
    quality: string
    bass: string
}

function parseChordsFromText(text: string): ChordMatch[] {
    const chordRegex = /([A-G](?:#|b)?(?:m|maj|min|dim|aug|sus[24]|7|9|11|13)?(?:\/[A-G](?:#|b)?)?)/g
    const matches: ChordMatch[] = []
    let match: RegExpExecArray | null

    while ((match = chordRegex.exec(text)) !== null) {
        const full = match[0]
        const rootMatch = full.match(/^[A-G](?:#|b)?/)
        const root = rootMatch ? rootMatch[0] : ''
        const rest = full.slice(root.length)
        const bassMatch = rest.match(/\/([A-G](?:#|b)?)$/)
        const bass = bassMatch ? bassMatch[1] : ''
        const quality = bass ? rest.slice(0, rest.lastIndexOf('/')) : rest
        matches.push({
            index: match.index,
            endIndex: match.index + full.length,
            original: full,
            root,
            quality,
            bass,
        })
    }

    return matches
}

function transposeChords(html: string, semitones: number): string {
    if (semitones === 0) return html

    const chordRegex = />([A-G](?:#|b)?(?:m|maj|min|dim|aug|sus[24]|7|9|11|13)?(?:\/[A-G](?:#|b)?)?)</g

    return html.replace(chordRegex, (_fullMatch, chord: string) => {
        const rootMatch = chord.match(/^[A-G](?:#|b)?/)
        if (!rootMatch) return `>${chord}<`

        const root = rootMatch[0]
        const rest = chord.slice(root.length)
        const useSharp = root.includes('#') || (!root.includes('b') && !root.includes('#'))
        const scale = useSharp ? SHARP_KEYS : FLAT_KEYS
        const currentIndex = scale.indexOf(root)
        if (currentIndex === -1) return `>${chord}<`

        const newIndex = (currentIndex + semitones + 12) % 12
        const newRoot = scale[newIndex]
        return `>${newRoot}${rest}<`
    })
}

function semitoneStep(from: string, to: string): number {
    const idx1 = SHARP_KEYS.indexOf(from)
    const idx2 = SHARP_KEYS.indexOf(to)
    if (idx1 === -1 || idx2 === -1) return 0
    return idx2 - idx1
}

const SongDetail = ({ data }: any) => {
    const [isPlaying, setIsPlaying] = useState(false);
    const [showShare, setShowShare] = useState(false);
    const [transpose, setTranspose] = useState(0);
    const [scrollSpeed, setScrollSpeed] = useState(1.5);
    const [related, setRelated] = useState<any[]>([])
    const pathName = usePathname();

    const song = data?.song
    const artist = data?.artist
    const { isFavorite, toggleFavorite } = useFavorites()
    const fav = song ? isFavorite(song.id) : false

    const transposedContent = useMemo(
        () => transposeChords(song?.content ?? '', transpose),
        [song?.content, transpose]
    )

    useEffect(() => {
        if (!song) return
        fetchRelatedSongs(song.id, song.genre, song.key, song.artistId)
            .then(setRelated)
            .catch(() => {})
    }, [song])

    useEffect(() => {
        let intervalId: NodeJS.Timeout;
        if (!data || !isPlaying) return;
        intervalId = setInterval(() => {
            window.scrollBy({ top: scrollSpeed, behavior: 'smooth' });
        }, 150);
        return () => clearInterval(intervalId);
    }, [data, isPlaying, scrollSpeed]);

    const togglePlayback = () => setIsPlaying(!isPlaying);

    const shareBaseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? "https://guitarchords.techyatraa.com";
    const shareUrl = shareBaseUrl + pathName;
    const title = `${song?.title} by ${artist?.name} - Guitar Chords`;

    const handleTransposeUp = useCallback(() => {
        setTranspose((t) => t + 1)
    }, [])

    const handleTransposeDown = useCallback(() => {
        setTranspose((t) => t - 1)
    }, [])

    return (
        <div className="space-y-8">
            <Link
                href="/songs"
                className="inline-flex items-center gap-1.5 text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
            >
                <ArrowLeft className="h-3.5 w-3.5" />
                Back to songs
            </Link>

            <div className="flex flex-col md:flex-row md:items-start md:justify-between gap-6">
                <div className="space-y-3 min-w-0">
                    <h1 className="text-2xl md:text-3xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100">
                        {song?.title}
                    </h1>
                    <Link
                        href={`/artists/${artist?.slug}`}
                        className="inline-flex items-center gap-1.5 text-sm text-neutral-600 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
                    >
                        <User className="h-3.5 w-3.5" />
                        {artist?.name}
                    </Link>
                    <div className="flex flex-wrap items-center gap-4 text-xs text-neutral-500 dark:text-neutral-400">
                        {song?.year && (
                            <span className="inline-flex items-center gap-1">
                                <Calendar className="h-3 w-3" />
                                {song.year}
                            </span>
                        )}
                        {song?.writtenBy && (
                            <span className="inline-flex items-center gap-1">
                                <PenLine className="h-3 w-3" />
                                {song.writtenBy}
                            </span>
                        )}
                    </div>
                </div>

                <div className="flex items-center gap-3 shrink-0">
                    <button
                        onClick={togglePlayback}
                        className="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900 text-sm font-medium hover:bg-neutral-800 dark:hover:bg-neutral-200 transition-colors"
                    >
                        {isPlaying ? <Pause className="h-4 w-4" /> : <Play className="h-4 w-4" />}
                        {isPlaying ? 'Pause' : 'Auto-scroll'}
                    </button>
                    <button
                        onClick={() => toggleFavorite({ id: song.id, slug: song.slug, title: song.title, artistName: artist?.name ?? '', artistSlug: artist?.slug ?? '' })}
                        className="inline-flex items-center gap-2 px-4 py-2 rounded-full border border-neutral-200 dark:border-neutral-800 text-sm font-medium transition-colors"
                    >
                        <Heart className={`h-4 w-4 ${fav ? 'fill-red-500 text-red-500' : 'text-neutral-700 dark:text-neutral-300'}`} />
                        {fav ? 'Saved' : 'Save'}
                    </button>
                    <button
                        onClick={() => setShowShare(!showShare)}
                        className="inline-flex items-center gap-2 px-4 py-2 rounded-full border border-neutral-200 dark:border-neutral-800 text-neutral-700 dark:text-neutral-300 text-sm font-medium hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
                    >
                        <Share2 className="h-4 w-4" />
                        Share
                    </button>
                </div>
            </div>

            {song && (
                <div className="flex flex-wrap items-center gap-3 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900">
                    {song.key && (
                        <span className="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md bg-neutral-100 dark:bg-neutral-800 text-xs font-medium text-neutral-700 dark:text-neutral-300">
                            <Music className="h-3 w-3" />
                            Key: {song.key}
                        </span>
                    )}
                    {song.capo > 0 && (
                        <span className="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md bg-neutral-100 dark:bg-neutral-800 text-xs font-medium text-neutral-700 dark:text-neutral-300">
                            Capo: {song.capo}
                        </span>
                    )}
                    {song.tuning && song.tuning !== 'EADGBE' && (
                        <span className="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md bg-neutral-100 dark:bg-neutral-800 text-xs font-medium text-neutral-700 dark:text-neutral-300">
                            Tuning: {song.tuning}
                        </span>
                    )}
                    {song.difficulty && (
                        <span className="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md bg-neutral-100 dark:bg-neutral-800 text-xs font-medium text-neutral-700 dark:text-neutral-300">
                            {song.difficulty}
                        </span>
                    )}
                    {song.genre && (
                        <span className="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-md bg-neutral-100 dark:bg-neutral-800 text-xs font-medium text-neutral-700 dark:text-neutral-300">
                            {song.genre}
                        </span>
                    )}
                </div>
            )}

            {artist?.image && (
                <div className="flex justify-center">
                    <Image
                        src={artist.image}
                        width={180}
                        height={180}
                        alt={artist?.name ?? ''}
                        className="rounded-2xl object-cover shadow-sm"
                    />
                </div>
            )}

            {showShare && (
                <div className="flex flex-wrap gap-3 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900">
                    <FacebookShareButton url={shareUrl} title={title}>
                        <FacebookIcon className="hover:scale-110 transition-transform" style={iconStyle} />
                    </FacebookShareButton>
                    <TwitterShareButton url={shareUrl} title={title}>
                        <TwitterIcon className="hover:scale-110 transition-transform" style={iconStyle} />
                    </TwitterShareButton>
                    <WhatsappShareButton url={shareUrl} title={title}>
                        <WhatsappIcon className="hover:scale-110 transition-transform" style={iconStyle} />
                    </WhatsappShareButton>
                    <TelegramShareButton url={shareUrl} title={title}>
                        <TelegramIcon className="hover:scale-110 transition-transform" style={iconStyle} />
                    </TelegramShareButton>
                    <LinkedinShareButton url={shareUrl} title={title}>
                        <LinkedinIcon className="hover:scale-110 transition-transform" style={iconStyle} />
                    </LinkedinShareButton>
                    <RedditShareButton url={shareUrl} title={title}>
                        <RedditIcon className="hover:scale-110 transition-transform" style={iconStyle} />
                    </RedditShareButton>
                    <EmailShareButton url={shareUrl} subject={title}>
                        <EmailIcon className="hover:scale-110 transition-transform" style={iconStyle} />
                    </EmailShareButton>
                </div>
            )}

            <div className="border-t border-neutral-200 dark:border-neutral-800" />

            {isPlaying && (
                <div className="flex items-center gap-3">
                    <span className="text-xs text-neutral-500 dark:text-neutral-400">Scroll speed:</span>
                    {[0.8, 1.5, 3, 5].map((speed) => (
                        <button
                            key={speed}
                            onClick={() => setScrollSpeed(speed)}
                            className={`px-2.5 py-1 rounded-md text-xs font-medium transition-colors ${
                                scrollSpeed === speed
                                    ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                                    : 'bg-neutral-100 dark:bg-neutral-800 text-neutral-600 dark:text-neutral-400 hover:bg-neutral-200 dark:hover:bg-neutral-700'
                            }`}
                        >
                            {speed}x
                        </button>
                    ))}
                </div>
            )}

            <div className="flex items-center gap-2">
                <span className="text-xs font-medium text-neutral-500 dark:text-neutral-400">Transpose:</span>
                <button
                    onClick={handleTransposeDown}
                    className="p-1.5 rounded-md bg-neutral-100 dark:bg-neutral-800 hover:bg-neutral-200 dark:hover:bg-neutral-700 transition-colors"
                >
                    <ChevronDown className="h-4 w-4 text-neutral-700 dark:text-neutral-300" />
                </button>
                <span className="text-sm font-mono font-bold text-neutral-900 dark:text-neutral-100 w-10 text-center">
                    {transpose === 0 ? '0' : transpose > 0 ? `+${transpose}` : transpose}
                </span>
                <button
                    onClick={handleTransposeUp}
                    className="p-1.5 rounded-md bg-neutral-100 dark:bg-neutral-800 hover:bg-neutral-200 dark:hover:bg-neutral-700 transition-colors"
                >
                    <ChevronUp className="h-4 w-4 text-neutral-700 dark:text-neutral-300" />
                </button>
                {transpose !== 0 && (
                    <button
                        onClick={() => setTranspose(0)}
                        className="ml-2 px-2 py-1 text-xs rounded-md border border-neutral-200 dark:border-neutral-800 text-neutral-500 dark:text-neutral-400 hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
                    >
                        Reset
                    </button>
                )}
            </div>

            <div>
                <h2 className="text-lg font-semibold text-neutral-900 dark:text-neutral-100 mb-4">
                    Chords & Lyrics
                </h2>
                <div
                    className="prose prose-neutral dark:prose-invert max-w-none prose-pre:bg-neutral-100 dark:prose-pre:bg-neutral-900 prose-pre:text-sm"
                    dangerouslySetInnerHTML={{ __html: transposedContent }}
                />
            </div>

            {song?.videoUrl && (
                <>
                    <div className="border-t border-neutral-200 dark:border-neutral-800" />
                    <div>
                        <h2 className="text-lg font-semibold text-neutral-900 dark:text-neutral-100 mb-4">
                            Video
                        </h2>
                        <div className="flex justify-center">
                            {song.videoUrl.includes('youtube.com/embed') || song.videoUrl.includes('youtu.be') ? (
                                <div className="relative w-full max-w-2xl aspect-video rounded-xl overflow-hidden shadow-sm">
                                    <iframe
                                        src={song.videoUrl.includes('youtu.be')
                                            ? song.videoUrl.replace('youtu.be/', 'youtube.com/embed/')
                                            : song.videoUrl}
                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                        allowFullScreen
                                        className="absolute inset-0 w-full h-full"
                                    />
                                </div>
                            ) : (
                                <div
                                    className="song-detail-player rounded-xl overflow-hidden shadow-sm"
                                    dangerouslySetInnerHTML={{ __html: song.videoUrl }}
                                />
                            )}
                        </div>
                    </div>
                </>
            )}

            {related.length > 0 && (
                <>
                    <div className="border-t border-neutral-200 dark:border-neutral-800" />
                    <div>
                        <h2 className="text-lg font-semibold text-neutral-900 dark:text-neutral-100 mb-4">
                            Related Songs
                        </h2>
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                            {related.map((r: any) => (
                                <Link
                                    key={r.id}
                                    href={`/songs/${r.slug}`}
                                    className="flex items-center gap-3 p-3 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all group"
                                >
                                    <div className="h-9 w-9 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0">
                                        <Music className="h-4 w-4 text-neutral-500" />
                                    </div>
                                    <div className="min-w-0">
                                        <p className="text-sm font-medium text-neutral-900 dark:text-neutral-100 truncate group-hover:text-neutral-700 dark:group-hover:text-neutral-300 transition-colors">
                                            {r.title}
                                        </p>
                                        <p className="text-xs text-neutral-500 truncate">{r.artist?.name}</p>
                                    </div>
                                </Link>
                            ))}
                        </div>
                    </div>
                </>
            )}
        </div>
    );
};

const iconStyle = { borderRadius: "50%", height: 36, width: 36 };

export default SongDetail;
