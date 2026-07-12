"use client"

import React, { useState, useEffect, useMemo, useCallback, useRef } from 'react'
import { fetchRelatedSongs } from '@/store/api/song.api'
import {
  Pause, Play, Share2, User, Calendar, PenLine, ArrowLeft,
  Music, ChevronUp, ChevronDown, Heart, Printer, Plus, Minus,
  PictureInPicture2, Maximize2, Minimize2, X,
} from 'lucide-react'
import Image from 'next/image'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import { motion, AnimatePresence } from 'framer-motion'
import { gsap } from 'gsap'
import { ScrollTrigger } from 'gsap/ScrollTrigger'

gsap.registerPlugin(ScrollTrigger)
import { useFavorites } from '@/lib/use-favorites'
import { trackPageView } from '@/store/api/analytics.api'
import { ChordDiagramList } from '@/components/ui/chord-diagram'
import ChordPopoverContainer from '@/components/ui/chord-popover'
import { preferFlatsForKey, transposeChordToken, wrapChords, extractChordsFromHtml } from '@/lib/chords'
import ChordSheetRenderer, { hasHtmlTags, parseChordSheet } from '@/components/chord-sheet-renderer'
import {
  EmailIcon, EmailShareButton, FacebookIcon, FacebookShareButton,
  LinkedinIcon, LinkedinShareButton, RedditIcon, RedditShareButton,
  TelegramIcon, TelegramShareButton, TwitterIcon, TwitterShareButton,
  WhatsappIcon, WhatsappShareButton,
} from 'react-share'

const iconStyle = { borderRadius: '50%', height: 36, width: 36 }
const FONT_SIZES = [13, 15, 17, 19, 22]
const SPEED_OPTIONS = [0.8, 1.5, 3, 5]

function SectionReveal({ children, className }: { children: React.ReactNode; className?: string }) {
  return (
    <motion.div
      initial={{ opacity: 0, y: 24 }}
      whileInView={{ opacity: 1, y: 0 }}
      viewport={{ once: true, margin: '-80px' }}
      transition={{ duration: 0.5, ease: 'easeOut' }}
      className={className}
    >
      {children}
    </motion.div>
  )
}

function StaggerRow({ children, className }: { children: React.ReactNode; className?: string }) {
  return (
    <motion.div
      initial="hidden"
      animate="visible"
      variants={{ visible: { transition: { staggerChildren: 0.05 } } }}
      className={className}
    >
      {children}
    </motion.div>
  )
}

const itemVar = {
  hidden: { opacity: 0, y: 8 },
  visible: { opacity: 1, y: 0 },
}

const SongDetail = ({ data }: any) => {
  const [isPlaying, setIsPlaying] = useState(false)
  const [showShare, setShowShare] = useState(false)
  const [transpose, setTranspose] = useState(0)
  const [useFlats, setUseFlats] = useState(false)
  const [concertPitch, setConcertPitch] = useState(false)
  const [scrollSpeed, setScrollSpeed] = useState(1.5)
  const [fontSize, setFontSize] = useState(15)
  const [related, setRelated] = useState<any[]>([])
  const [videoFloating, setVideoFloating] = useState(false)
  const [videoMinimized, setVideoMinimized] = useState(false)

  const pathName = usePathname()
  const lyricsRef = useRef<HTMLDivElement>(null)
  const progressRef = useRef<HTMLDivElement>(null)
  const manualScrollRef = useRef(false)
  const isAutoScrollingRef = useRef(false)
  const manualScrollTimer = useRef<ReturnType<typeof setTimeout> | null>(null)
  const sectionRefs = useRef<(HTMLDivElement | null)[]>([])
  const heroRef = useRef<HTMLDivElement>(null)

  const song = data?.song
  const artist = data?.artist
  const capo = Number(song?.capo ?? 0)

  const { isFavorite, toggleFavorite } = useFavorites()
  const fav = song ? isFavorite(song.id) : false

  useEffect(() => {
    const ctx = gsap.context(() => {
      sectionRefs.current.forEach((el) => {
        if (!el) return
        gsap.fromTo(el,
          { autoAlpha: 0, y: 24 },
          {
            autoAlpha: 1, y: 0, duration: 0.6, ease: 'power2.out',
            scrollTrigger: { trigger: el, start: 'top 88%', toggleActions: 'play none none none' },
          }
        )
      })
    })

    return () => {
      ctx.revert()
      ScrollTrigger.getAll().forEach((st) => st.kill())
    }
  }, [])

  useEffect(() => {
    if (song) {
      const key = song.key as string | undefined
      if (key) setUseFlats(preferFlatsForKey(key))
    }
  }, [song?.key])

  const effectiveTranspose = useMemo(() => {
    if (concertPitch && capo > 0) return transpose + capo
    return transpose
  }, [transpose, concertPitch, capo])

  const legacyHtml = useMemo(() => {
    const raw = song?.content ?? ''
    return raw ? hasHtmlTags(raw) : false
  }, [song?.content])

  const contentChords = useMemo(() => {
    const raw = song?.content ?? ''
    if (!raw) return []
    if (legacyHtml) {
      return extractChordsFromHtml(wrapChords(raw, effectiveTranspose, useFlats))
    }
    const { chords } = parseChordSheet(raw)
    return chords.map((c) =>
      effectiveTranspose === 0 ? c : transposeChordToken(c, effectiveTranspose, useFlats)
    )
  }, [song?.content, legacyHtml, effectiveTranspose, useFlats])

  useEffect(() => {
    if (!song) return
    fetchRelatedSongs(song.id, song.genre, song.key, song.artistId)
      .then(setRelated)
      .catch(() => {})
  }, [song])

  useEffect(() => {
    if (song) trackPageView(pathName, song.id)
  }, [song, pathName])

  useEffect(() => {
    const updateProgress = () => {
      if (!progressRef.current) return
      const doc = document.documentElement
      const total = doc.scrollHeight - doc.clientHeight
      const width = total > 0 ? (window.scrollY / total) * 100 : 0
      progressRef.current.style.width = `${width}%`
    }

    const onScroll = () => {
      updateProgress()
      if (isAutoScrollingRef.current) return
      manualScrollRef.current = true
      if (manualScrollTimer.current) clearTimeout(manualScrollTimer.current)
      manualScrollTimer.current = setTimeout(() => {
        manualScrollRef.current = false
      }, 400)
    }

    window.addEventListener('scroll', onScroll, { passive: true })
    return () => {
      window.removeEventListener('scroll', onScroll)
      if (manualScrollTimer.current) clearTimeout(manualScrollTimer.current)
    }
  }, [])

  useEffect(() => {
    if (!isPlaying) return

    const updateProgress = () => {
      if (!progressRef.current) return
      const doc = document.documentElement
      const total = doc.scrollHeight - doc.clientHeight
      const width = total > 0 ? (window.scrollY / total) * 100 : 0
      progressRef.current.style.width = `${width}%`
    }

    let rafId = 0
    let lastTime = performance.now()
    let accumulator = 0

    const tick = (now: number) => {
      const dt = Math.min(now - lastTime, 100)
      lastTime = now

      if (!manualScrollRef.current) {
        const pixelsPerSecond = scrollSpeed * (1000 / 150)
        accumulator += (pixelsPerSecond * dt) / 1000
        const scrollBy = Math.floor(accumulator)
        if (scrollBy > 0) {
          isAutoScrollingRef.current = true
          window.scrollTo({ top: window.scrollY + scrollBy, behavior: 'smooth' })
          Promise.resolve().then(() => {
            isAutoScrollingRef.current = false
          })
          accumulator -= scrollBy
        }
      }

      updateProgress()
      rafId = requestAnimationFrame(tick)
    }

    rafId = requestAnimationFrame(tick)
    return () => {
      cancelAnimationFrame(rafId)
      isAutoScrollingRef.current = false
    }
  }, [isPlaying, scrollSpeed])

  const togglePlayback = useCallback(() => setIsPlaying((p) => !p), [])
  const handlePrint = useCallback(() => window.print(), [])

  const decreaseFont = useCallback(() => {
    setFontSize((s) => {
      const idx = FONT_SIZES.indexOf(s)
      return FONT_SIZES[Math.max(0, idx - 1)] ?? FONT_SIZES[0]
    })
  }, [])
  const increaseFont = useCallback(() => {
    setFontSize((s) => {
      const idx = FONT_SIZES.indexOf(s)
      return FONT_SIZES[Math.min(FONT_SIZES.length - 1, idx + 1)] ?? FONT_SIZES[FONT_SIZES.length - 1]
    })
  }, [])

  const shareBaseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'
  const shareUrl = shareBaseUrl + pathName
  const ogTitle = `${song?.title} by ${artist?.name} - Guitar Chords`

  const handleTransposeUp = useCallback(() => setTranspose((t) => t + 1), [])
  const handleTransposeDown = useCallback(() => setTranspose((t) => t - 1), [])

  const displayKey = useMemo(() => {
    if (!song?.key) return null
    const base = song.key as string
    if (effectiveTranspose === 0) return base
    const idx = (['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B'].indexOf(base)
      + effectiveTranspose + 12) % 12
    const scale = useFlats
      ? ['C', 'Db', 'D', 'Eb', 'E', 'F', 'Gb', 'G', 'Ab', 'A', 'Bb', 'B']
      : ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
    return scale[idx]
  }, [song?.key, effectiveTranspose, useFlats])

  const isYoutubeEmbed = !!song?.videoUrl && (song.videoUrl.includes('youtube.com/embed') || song.videoUrl.includes('youtu.be'))
  const youtubeSrc = isYoutubeEmbed
    ? song.videoUrl
      .replace('youtu.be/', 'youtube.com/embed/')
      .replace(/youtube\.com\/watch\?v=([A-Za-z0-9_-]+).*/, 'youtube.com/embed/$1')
    : null

  const renderVideoEmbed = (className: string) =>
    isYoutubeEmbed ? (
      <iframe
        src={youtubeSrc ?? undefined}
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowFullScreen
        className={className}
      />
    ) : (
      <div className={className} dangerouslySetInnerHTML={{ __html: song?.videoUrl ?? '' }} />
    )

  const VideoDockedPlaceholder = () => (
    <button
      onClick={() => setVideoFloating(false)}
      className="aspect-video w-full rounded-2xl border border-dashed border-neutral-300 dark:border-neutral-700 bg-neutral-50 dark:bg-neutral-900/50 flex flex-col items-center justify-center gap-2 text-neutral-400 dark:text-neutral-600 hover:text-neutral-600 dark:hover:text-neutral-400 hover:border-neutral-400 dark:hover:border-neutral-600 transition-colors"
    >
      <PictureInPicture2 className="h-6 w-6" />
      <span className="text-xs font-medium">Playing in floating player — click to dock back</span>
    </button>
  )

  return (
    <motion.div
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 0.35 }}
      className="space-y-12"
    >
      {isPlaying && (
        <motion.div
          initial={{ width: 0 }}
          ref={progressRef}
          className="scroll-progress"
          style={{ width: 0 }}
        />
      )}

      <motion.div
        initial={{ opacity: 0, x: -12 }}
        animate={{ opacity: 1, x: 0 }}
        transition={{ duration: 0.3, delay: 0.08 }}
      >
        <Link
          href="/songs"
          className="inline-flex items-center gap-1.5 text-sm text-neutral-500 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
        >
          <ArrowLeft className="h-3.5 w-3.5" />
          Back to songs
        </Link>
      </motion.div>

      <div ref={heroRef} className="grid grid-cols-1 md:grid-cols-[280px_1fr] lg:grid-cols-[280px_1fr_400px] gap-10 md:gap-14">
        <motion.div
          initial={{ opacity: 0, y: 16 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.5, delay: 0.12 }}
          className="flex justify-center md:justify-start"
        >
          {(song?.image || artist?.image) ? (
            <div className="flex flex-row md:flex-col gap-4 no-print">
              {song?.image && (
                <motion.div
                  whileHover={{ scale: 1.02 }}
                  transition={{ type: 'spring', stiffness: 300, damping: 20 }}
                >
                  <Image
                    src={song.image}
                    width={280}
                    height={280}
                    alt={`${song?.title ?? ''} album art`}
                    className="rounded-2xl object-cover shadow-xl ring-1 ring-neutral-200/50 dark:ring-neutral-800/50"
                  />
                </motion.div>
              )}
              {artist?.image && !song?.image && (
                <Image
                  src={artist.image}
                  width={280}
                  height={280}
                  alt={artist?.name ?? ''}
                  className="rounded-2xl object-cover shadow-xl ring-1 ring-neutral-200/50 dark:ring-neutral-800/50"
                />
              )}
            </div>
          ) : (
            <div className="h-[280px] w-[280px] rounded-2xl bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center">
              <Music className="h-14 w-14 text-neutral-400" />
            </div>
          )}
        </motion.div>

        <div className="min-w-0 flex flex-col justify-center space-y-6">
          <motion.div
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 0.18 }}
            className="space-y-3"
          >
            <div className="space-y-1.5">
              <h1 className="text-3xl md:text-4xl lg:text-5xl font-bold tracking-tight text-neutral-900 dark:text-neutral-100 leading-[1.08]">
                {song?.title}
              </h1>
              <Link
                href={`/artists/${artist?.slug}`}
                className="inline-flex items-center gap-1.5 text-lg text-neutral-600 dark:text-neutral-400 hover:text-neutral-900 dark:hover:text-neutral-100 transition-colors"
              >
                <User className="h-4 w-4" />
                {artist?.name}
              </Link>
            </div>

            {(song?.year || song?.writtenBy) && (
              <div className="flex flex-wrap items-center gap-x-5 gap-y-1 text-sm text-neutral-500 dark:text-neutral-400">
                {song?.year && (
                  <span className="inline-flex items-center gap-1.5">
                    <Calendar className="h-3.5 w-3.5" />
                    {song.year}
                  </span>
                )}
                {song?.writtenBy && (
                  <span className="inline-flex items-center gap-1.5">
                    <PenLine className="h-3.5 w-3.5" />
                    {song.writtenBy}
                  </span>
                )}
              </div>
            )}
          </motion.div>

          <StaggerRow className="flex flex-wrap items-center gap-2.5">
            <motion.div variants={itemVar}>
              <motion.button
                whileTap={{ scale: 0.96 }}
                onClick={togglePlayback}
                className="inline-flex items-center gap-2 px-5 py-2.5 rounded-full bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900 text-sm font-semibold hover:bg-neutral-800 dark:hover:bg-neutral-200 transition-colors shadow-sm"
              >
                {isPlaying ? <Pause className="h-4 w-4" /> : <Play className="h-4 w-4" />}
                {isPlaying ? 'Pause' : 'Auto-scroll'}
              </motion.button>
            </motion.div>
            <motion.div variants={itemVar}>
              <motion.button
                whileTap={{ scale: 0.96 }}
                onClick={() => toggleFavorite({
                  id: song.id, slug: song.slug, title: song.title,
                  artistName: artist?.name ?? '', artistSlug: artist?.slug ?? '',
                })}
                className="inline-flex items-center gap-2 px-5 py-2.5 rounded-full border border-neutral-200 dark:border-neutral-800 text-sm font-medium transition-colors hover:bg-neutral-100 dark:hover:bg-neutral-800 hover:border-neutral-300 dark:hover:border-neutral-700"
              >
                <motion.div
                  animate={fav ? { scale: [1, 1.3, 1] } : {}}
                  transition={{ duration: 0.3 }}
                >
                  <Heart className={`h-4 w-4 ${fav ? 'fill-red-500 text-red-500' : 'text-neutral-700 dark:text-neutral-300'}`} />
                </motion.div>
                {fav ? 'Saved' : 'Save'}
              </motion.button>
            </motion.div>
            <motion.div variants={itemVar}>
              <motion.button
                whileTap={{ scale: 0.96 }}
                onClick={() => setShowShare(!showShare)}
                className="inline-flex items-center gap-2 px-5 py-2.5 rounded-full border border-neutral-200 dark:border-neutral-800 text-neutral-700 dark:text-neutral-300 text-sm font-medium transition-colors hover:bg-neutral-100 dark:hover:bg-neutral-800 hover:border-neutral-300 dark:hover:border-neutral-700"
              >
                <Share2 className="h-4 w-4" />
                Share
              </motion.button>
            </motion.div>
            <motion.div variants={itemVar} className="hidden md:block">
              <motion.button
                whileTap={{ scale: 0.96 }}
                onClick={handlePrint}
                aria-label="Print"
                className="inline-flex items-center justify-center h-10 w-10 rounded-full border border-neutral-200 dark:border-neutral-800 text-neutral-700 dark:text-neutral-300 transition-colors hover:bg-neutral-100 dark:hover:bg-neutral-800 hover:border-neutral-300 dark:hover:border-neutral-700"
              >
                <Printer className="h-4 w-4" />
              </motion.button>
            </motion.div>
          </StaggerRow>

          <AnimatePresence>
            {showShare && (
              <motion.div
                initial={{ opacity: 0, height: 0 }}
                animate={{ opacity: 1, height: 'auto' }}
                exit={{ opacity: 0, height: 0 }}
                transition={{ duration: 0.2 }}
                className="overflow-hidden"
              >
                <div className="flex flex-wrap gap-3 p-4 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 share-buttons no-print">
                  <FacebookShareButton url={shareUrl} title={ogTitle}><FacebookIcon className="hover:scale-110 transition-transform" style={iconStyle} /></FacebookShareButton>
                  <TwitterShareButton url={shareUrl} title={ogTitle}><TwitterIcon className="hover:scale-110 transition-transform" style={iconStyle} /></TwitterShareButton>
                  <WhatsappShareButton url={shareUrl} title={ogTitle}><WhatsappIcon className="hover:scale-110 transition-transform" style={iconStyle} /></WhatsappShareButton>
                  <TelegramShareButton url={shareUrl} title={ogTitle}><TelegramIcon className="hover:scale-110 transition-transform" style={iconStyle} /></TelegramShareButton>
                  <LinkedinShareButton url={shareUrl} title={ogTitle}><LinkedinIcon className="hover:scale-110 transition-transform" style={iconStyle} /></LinkedinShareButton>
                  <RedditShareButton url={shareUrl} title={ogTitle}><RedditIcon className="hover:scale-110 transition-transform" style={iconStyle} /></RedditShareButton>
                  <EmailShareButton url={shareUrl} subject={ogTitle}><EmailIcon className="hover:scale-110 transition-transform" style={iconStyle} /></EmailShareButton>
                </div>
              </motion.div>
            )}
          </AnimatePresence>

          <StaggerRow className="flex flex-wrap items-center gap-2">
            {displayKey && (
              <motion.span
                variants={itemVar}
                className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-neutral-100 dark:bg-neutral-800 text-xs font-semibold text-neutral-700 dark:text-neutral-300"
              >
                <Music className="h-3 w-3" />
                {displayKey}
              </motion.span>
            )}
            {capo > 0 && (
              <motion.span
                variants={itemVar}
                className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-neutral-100 dark:bg-neutral-800 text-xs font-semibold text-neutral-700 dark:text-neutral-300"
              >
                Capo {capo}
              </motion.span>
            )}
            {song?.tuning && song.tuning !== 'EADGBE' && (
              <motion.span
                variants={itemVar}
                className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-neutral-100 dark:bg-neutral-800 text-xs font-semibold text-neutral-700 dark:text-neutral-300"
              >
                {song.tuning}
              </motion.span>
            )}
            {song?.difficulty && (
              <motion.span
                variants={itemVar}
                className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-neutral-100 dark:bg-neutral-800 text-xs font-semibold text-neutral-700 dark:text-neutral-300"
              >
                {song.difficulty}
              </motion.span>
            )}
            {song?.genre && (
              <motion.span
                variants={itemVar}
                className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-neutral-100 dark:bg-neutral-800 text-xs font-semibold text-neutral-700 dark:text-neutral-300"
              >
                {song.genre}
              </motion.span>
            )}
          </StaggerRow>
        </div>

        {song?.videoUrl && (
          <motion.div
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 0.25 }}
            className="hidden lg:block no-print"
          >
            <div className="space-y-3">
              <div className="flex items-center justify-between">
                <h2 className="text-sm font-semibold text-neutral-500 dark:text-neutral-400 uppercase tracking-wider">
                  Video
                </h2>
                {!videoFloating && (
                  <button
                    onClick={() => setVideoFloating(true)}
                    aria-label="Pop out video"
                    title="Pop out video"
                    className="p-1 rounded-md text-neutral-400 hover:text-neutral-700 dark:hover:text-neutral-300 hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
                  >
                    <PictureInPicture2 className="h-3.5 w-3.5" />
                  </button>
                )}
              </div>
              {videoFloating ? (
                <VideoDockedPlaceholder />
              ) : (
                <div className="aspect-video rounded-2xl overflow-hidden shadow-md ring-1 ring-neutral-200/50 dark:ring-neutral-800/50">
                  {renderVideoEmbed('w-full h-full')}
                </div>
              )}
            </div>
          </motion.div>
        )}
      </div>

      {song?.videoUrl && (
        <div className="lg:hidden">
          <SectionReveal>
            <div className="space-y-4 no-print">
              <div className="flex items-center justify-between">
                <h2 className="text-sm font-semibold text-neutral-500 dark:text-neutral-400 uppercase tracking-wider">
                  Video
                </h2>
                {!videoFloating && (
                  <button
                    onClick={() => setVideoFloating(true)}
                    aria-label="Pop out video"
                    title="Pop out video"
                    className="p-1 rounded-md text-neutral-400 hover:text-neutral-700 dark:hover:text-neutral-300 hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
                  >
                    <PictureInPicture2 className="h-3.5 w-3.5" />
                  </button>
                )}
              </div>
              <motion.div
                initial={{ opacity: 0, scale: 0.98 }}
                whileInView={{ opacity: 1, scale: 1 }}
                viewport={{ once: true }}
                transition={{ duration: 0.5 }}
                className="flex justify-center"
              >
                {videoFloating ? (
                  <div className="w-full max-w-2xl">
                    <VideoDockedPlaceholder />
                  </div>
                ) : (
                  <motion.div
                    whileHover={{ scale: 1.005 }}
                    className="relative w-full max-w-2xl aspect-video rounded-2xl overflow-hidden shadow-md ring-1 ring-neutral-200/50 dark:ring-neutral-800/50"
                  >
                    {renderVideoEmbed('absolute inset-0 w-full h-full')}
                  </motion.div>
                )}
              </motion.div>
            </div>
          </SectionReveal>
        </div>
      )}

      <SectionReveal>
        <div className="flex flex-wrap items-center gap-2 p-3.5 rounded-2xl bg-white dark:bg-neutral-900 border border-neutral-200 dark:border-neutral-800 shadow-sm no-print">
          <div className="flex items-center gap-1.5 mr-2">
            <span className="text-xs font-medium text-neutral-500 dark:text-neutral-400">Scroll</span>
            {SPEED_OPTIONS.map((speed) => (
              <motion.button
                key={speed}
                whileTap={{ scale: 0.92 }}
                onClick={() => setScrollSpeed(speed)}
                className={`px-2.5 py-1 rounded-lg text-xs font-medium transition-colors ${
                  scrollSpeed === speed
                    ? 'bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                    : 'text-neutral-600 dark:text-neutral-400 hover:bg-neutral-100 dark:hover:bg-neutral-800'
                }`}
              >
                {speed}x
              </motion.button>
            ))}
          </div>

          <span className="h-5 w-px bg-neutral-200 dark:bg-neutral-700" />

          <span className="text-xs font-medium text-neutral-500 dark:text-neutral-400 ml-1">Key</span>
          <div className="flex items-center gap-0.5">
            <motion.button
              whileTap={{ scale: 0.9 }}
              onClick={handleTransposeDown}
              className="p-1 rounded-md hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
              aria-label="Transpose down"
            >
              <ChevronDown className="h-4 w-4 text-neutral-700 dark:text-neutral-300" />
            </motion.button>
            <motion.span
              key={effectiveTranspose}
              initial={{ y: -6, opacity: 0 }}
              animate={{ y: 0, opacity: 1 }}
              className="text-sm font-mono font-bold text-neutral-900 dark:text-neutral-100 w-8 text-center tabular-nums"
            >
              {effectiveTranspose === 0 ? '0' : effectiveTranspose > 0 ? `+${effectiveTranspose}` : effectiveTranspose}
            </motion.span>
            <motion.button
              whileTap={{ scale: 0.9 }}
              onClick={handleTransposeUp}
              className="p-1 rounded-md hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
              aria-label="Transpose up"
            >
              <ChevronUp className="h-4 w-4 text-neutral-700 dark:text-neutral-300" />
            </motion.button>
          </div>
          {transpose !== 0 && (
            <motion.button
              initial={{ opacity: 0, scale: 0.8 }}
              animate={{ opacity: 1, scale: 1 }}
              whileTap={{ scale: 0.9 }}
              onClick={() => setTranspose(0)}
              className="ml-0.5 px-2 py-1 text-xs rounded-lg text-neutral-500 dark:text-neutral-400 hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
            >
              Reset
            </motion.button>
          )}

          <span className="h-5 w-px bg-neutral-200 dark:bg-neutral-700 ml-1" />

          {capo > 0 && (
            <>
              <motion.button
                whileTap={{ scale: 0.92 }}
                onClick={() => setConcertPitch((v) => !v)}
                className={`px-2.5 py-1 text-xs font-medium rounded-lg border transition-colors ${
                  concertPitch
                    ? 'border-neutral-900 dark:border-neutral-100 bg-neutral-900 dark:bg-neutral-100 text-neutral-50 dark:text-neutral-900'
                    : 'border-transparent text-neutral-600 dark:text-neutral-400 hover:bg-neutral-100 dark:hover:bg-neutral-800'
                }`}
              >
                {concertPitch ? 'Concert' : 'As played'}
              </motion.button>
              <span className="h-5 w-px bg-neutral-200 dark:bg-neutral-700" />
            </>
          )}

          <motion.button
            whileTap={{ scale: 0.92 }}
            onClick={() => setUseFlats((v) => !v)}
            className={`px-2.5 py-1 text-xs font-medium rounded-lg transition-colors ${
              useFlats
                ? 'bg-neutral-100 dark:bg-neutral-800 text-neutral-900 dark:text-neutral-100'
                : 'text-neutral-600 dark:text-neutral-400 hover:bg-neutral-100 dark:hover:bg-neutral-800'
            }`}
          >
            {useFlats ? '♭' : '♯'}
          </motion.button>

          <span className="h-5 w-px bg-neutral-200 dark:bg-neutral-700" />

          <div className="flex items-center gap-1 ml-auto">
            <motion.button
              whileTap={{ scale: 0.9 }}
              onClick={decreaseFont}
              className="p-1 rounded-md hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
              aria-label="Decrease font size"
            >
              <Minus className="h-3.5 w-3.5 text-neutral-700 dark:text-neutral-300" />
            </motion.button>
            <span className="text-xs text-neutral-500 dark:text-neutral-400 w-6 text-center font-medium tabular-nums">{fontSize}</span>
            <motion.button
              whileTap={{ scale: 0.9 }}
              onClick={increaseFont}
              className="p-1 rounded-md hover:bg-neutral-100 dark:hover:bg-neutral-800 transition-colors"
              aria-label="Increase font size"
            >
              <Plus className="h-3.5 w-3.5 text-neutral-700 dark:text-neutral-300" />
            </motion.button>
          </div>
        </div>
      </SectionReveal>

      {contentChords.length > 0 && (
        <SectionReveal>
          <div ref={(el) => { sectionRefs.current[0] = el }}>
            <h2 className="text-sm font-semibold text-neutral-500 dark:text-neutral-400 uppercase tracking-wider mb-4">
              Chord Diagrams
            </h2>
            <div className="p-5 rounded-2xl bg-white dark:bg-neutral-900 border border-neutral-200 dark:border-neutral-800 shadow-sm">
              <ChordDiagramList chords={contentChords} capo={concertPitch ? 0 : capo} />
            </div>
          </div>
        </SectionReveal>
      )}

      <SectionReveal>
        <div ref={lyricsRef}>
          <h2 className="text-sm font-semibold text-neutral-500 dark:text-neutral-400 uppercase tracking-wider mb-4">
            Chords & Lyrics
          </h2>
          <div className="p-6 md:p-8 rounded-2xl bg-white dark:bg-neutral-900 border border-neutral-200 dark:border-neutral-800 shadow-sm">
            {legacyHtml ? (
              <div
                className="chords-lyrics prose prose-neutral dark:prose-invert max-w-none"
                style={{ fontSize: `${fontSize}px` }}
                dangerouslySetInnerHTML={{ __html: wrapChords(song?.content ?? '', effectiveTranspose, useFlats) }}
              />
            ) : (
              <div style={{ fontSize: `${fontSize}px` }}>
                <ChordSheetRenderer
                  raw={song?.content ?? ''}
                  semitones={effectiveTranspose}
                  useFlats={useFlats}
                />
              </div>
            )}
          </div>
          <ChordPopoverContainer containerRef={lyricsRef} capo={concertPitch ? 0 : capo} />
        </div>
      </SectionReveal>

      {related.length > 0 && (
        <SectionReveal>
          <div className="space-y-4">
            <div className="border-t border-neutral-200 dark:border-neutral-800" />
            <h2 className="text-sm font-semibold text-neutral-500 dark:text-neutral-400 uppercase tracking-wider">
              Related Songs
            </h2>
            <motion.div
              initial="hidden"
              whileInView="visible"
              viewport={{ once: true }}
              variants={{ visible: { transition: { staggerChildren: 0.04 } } }}
              className="grid grid-cols-1 sm:grid-cols-2 gap-3"
            >
              {related.map((r: any) => (
                <motion.div
                  key={r.id}
                  variants={{
                    hidden: { opacity: 0, y: 10 },
                    visible: { opacity: 1, y: 0 },
                  }}
                >
                  <Link
                    href={`/songs/${r.slug}`}
                    className="flex items-center gap-3 p-3 rounded-xl border border-neutral-200 dark:border-neutral-800 bg-white dark:bg-neutral-900 hover:border-neutral-300 dark:hover:border-neutral-700 hover:shadow-sm transition-all group"
                  >
                    {r.image ? (
                      <Image src={r.image} width={36} height={36} alt="" className="rounded-lg object-cover shrink-0" />
                    ) : (
                      <div className="h-9 w-9 rounded-lg bg-neutral-100 dark:bg-neutral-800 flex items-center justify-center shrink-0">
                        <Music className="h-4 w-4 text-neutral-500" />
                      </div>
                    )}
                    <div className="min-w-0">
                      <p className="text-sm font-medium text-neutral-900 dark:text-neutral-100 truncate">
                        {r.title}
                      </p>
                      <p className="text-xs text-neutral-500 dark:text-neutral-400 truncate">{r.artist?.name}</p>
                    </div>
                  </Link>
                </motion.div>
              ))}
            </motion.div>
          </div>
        </SectionReveal>
      )}

      <AnimatePresence>
        {videoFloating && song?.videoUrl && (
          <motion.div
            initial={{ opacity: 0, y: 24, scale: 0.92 }}
            animate={{ opacity: 1, y: 0, scale: 1 }}
            exit={{ opacity: 0, y: 24, scale: 0.92 }}
            transition={{ duration: 0.25, ease: 'easeOut' }}
            className={`fixed bottom-4 right-4 z-50 no-print rounded-2xl overflow-hidden shadow-2xl ring-1 ring-neutral-200/50 dark:ring-neutral-800/50 bg-white dark:bg-neutral-900 ${
              videoMinimized ? 'w-56' : 'w-[calc(100vw-2rem)] sm:w-96'
            }`}
          >
            <div className="flex items-center justify-between gap-2 px-3 py-2 bg-neutral-900 dark:bg-neutral-800">
              <span className="text-xs font-medium text-neutral-200 truncate">{song?.title}</span>
              <div className="flex items-center gap-1 shrink-0">
                <button
                  onClick={() => setVideoMinimized((v) => !v)}
                  aria-label={videoMinimized ? 'Expand video' : 'Minimize video'}
                  title={videoMinimized ? 'Expand' : 'Minimize'}
                  className="p-1 rounded-md hover:bg-white/10 transition-colors"
                >
                  {videoMinimized ? <Maximize2 className="h-3.5 w-3.5 text-neutral-300" /> : <Minimize2 className="h-3.5 w-3.5 text-neutral-300" />}
                </button>
                <button
                  onClick={() => setVideoFloating(false)}
                  aria-label="Dock video back"
                  title="Dock back"
                  className="p-1 rounded-md hover:bg-white/10 transition-colors"
                >
                  <X className="h-3.5 w-3.5 text-neutral-300" />
                </button>
              </div>
            </div>
            {!videoMinimized && (
              <div className="aspect-video">
                {renderVideoEmbed('w-full h-full')}
              </div>
            )}
          </motion.div>
        )}
      </AnimatePresence>
    </motion.div>
  )
}

export default SongDetail
