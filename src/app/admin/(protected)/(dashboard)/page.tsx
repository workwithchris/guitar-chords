import React from 'react'
import DashboardCard from './components/card'
import { getRecentSongs, getRecentArtists } from '@/store/api/dashboard.server'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import Link from 'next/link'
import { ArrowRight, Music, Users, Album, MicVocal, Eye, TrendingUp, Calendar } from 'lucide-react'
import { getTotalViews, getViewsToday, getViewsThisWeek, getTopSongs, getDashboardStats } from '@/store/api/dashboard.server'

export const revalidate = 0

export default async function AdminDashboard() {
    const [stats, songs, artists, totalViews, viewsToday, viewsThisWeek, topSongs] = await Promise.all([
        getDashboardStats(),
        getRecentSongs(5),
        getRecentArtists(5),
        getTotalViews(),
        getViewsToday(),
        getViewsThisWeek(),
        getTopSongs(),
    ])
    const { totalSongs, activeSongs: activeSongsCount, totalArtists, activeArtists: activeArtistsCount, genres } = stats

    return (
        <div className="space-y-8">
            <div>
                <h1 className="text-2xl font-bold tracking-tight">Dashboard</h1>
                <p className="mt-1 text-sm text-neutral-500 dark:text-neutral-400">
                    Overview of your guitar chords library
                </p>
            </div>

            <div className="flex flex-wrap gap-4">
                <DashboardCard
                    title="Total Songs"
                    value={totalSongs}
                    subtitle={`${activeSongsCount} active`}
                    icon={<Music className="h-5 w-5" />}
                />
                <DashboardCard
                    title="Total Artists"
                    value={totalArtists}
                    subtitle={`${activeArtistsCount} active`}
                    icon={<Users className="h-5 w-5" />}
                />
                <DashboardCard
                    title="Active Songs"
                    value={activeSongsCount}
                    subtitle={totalSongs - activeSongsCount > 0 ? `${totalSongs - activeSongsCount} inactive` : 'All active'}
                    icon={<Album className="h-5 w-5" />}
                />
                <DashboardCard
                    title="Genres"
                    value={genres.length}
                    subtitle={genres.length > 0 ? genres.slice(0, 3).join(', ') + (genres.length > 3 ? '...' : '') : 'No genres'}
                    icon={<MicVocal className="h-5 w-5" />}
                />
            </div>

            <div className="flex flex-wrap gap-4">
                <DashboardCard
                    title="Total Views"
                    value={totalViews.toLocaleString()}
                    icon={<Eye className="h-5 w-5" />}
                />
                <DashboardCard
                    title="Views Today"
                    value={viewsToday.toLocaleString()}
                    icon={<TrendingUp className="h-5 w-5" />}
                />
                <DashboardCard
                    title="Views This Week"
                    value={viewsThisWeek.toLocaleString()}
                    icon={<Calendar className="h-5 w-5" />}
                />
            </div>

            <div className="grid gap-6 md:grid-cols-2">
                <Card>
                    <CardHeader className="flex flex-row items-center justify-between">
                        <CardTitle className="text-lg">Recent Songs</CardTitle>
                        <Link href="/admin/songs" className="text-sm text-neutral-500 hover:text-neutral-900 dark:hover:text-neutral-50 flex items-center gap-1 transition-colors">
                            View all <ArrowRight className="h-3 w-3" />
                        </Link>
                    </CardHeader>
                    <CardContent>
                        {songs.length === 0 ? (
                            <div className="flex flex-col items-center py-8 text-center">
                                <Music className="h-8 w-8 text-neutral-300 dark:text-neutral-700 mb-3" />
                                <p className="text-sm text-neutral-500">No songs yet</p>
                                <Link href="/admin/songs/add" className="text-sm text-neutral-900 dark:text-neutral-50 font-medium mt-1 hover:underline">
                                    Add your first song
                                </Link>
                            </div>
                        ) : (
                            <ul className="space-y-3">
                                {songs.map((song: any) => (
                                    <li key={song.id} className="flex items-center gap-3">
                                        <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-neutral-100 dark:bg-neutral-800 shrink-0">
                                            <Music className="h-4 w-4 text-neutral-500" />
                                        </div>
                                        <div className="flex-1 min-w-0">
                                            <p className="text-sm font-medium truncate">{song.title}</p>
                                            <p className="text-xs text-neutral-500 truncate">{song.artist?.name ?? 'Unknown artist'}</p>
                                        </div>
                                    </li>
                                ))}
                            </ul>
                        )}
                    </CardContent>
                </Card>

                <Card>
                    <CardHeader className="flex flex-row items-center justify-between">
                        <CardTitle className="text-lg">Recent Artists</CardTitle>
                        <Link href="/admin/artists" className="text-sm text-neutral-500 hover:text-neutral-900 dark:hover:text-neutral-50 flex items-center gap-1 transition-colors">
                            View all <ArrowRight className="h-3 w-3" />
                        </Link>
                    </CardHeader>
                    <CardContent>
                        {artists.length === 0 ? (
                            <div className="flex flex-col items-center py-8 text-center">
                                <Users className="h-8 w-8 text-neutral-300 dark:text-neutral-700 mb-3" />
                                <p className="text-sm text-neutral-500">No artists yet</p>
                                <p className="text-sm text-neutral-900 dark:text-neutral-50 font-medium mt-1">
                                    Artists appear when you add songs
                                </p>
                            </div>
                        ) : (
                            <ul className="space-y-3">
                                {artists.map((artist: any) => (
                                    <li key={artist.id} className="flex items-center gap-3">
                                        <div className="flex h-8 w-8 items-center justify-center rounded-full bg-neutral-100 dark:bg-neutral-800 shrink-0 text-sm font-medium text-neutral-600 dark:text-neutral-400">
                                            {artist.name?.charAt(0)?.toUpperCase()}
                                        </div>
                                        <div className="flex-1 min-w-0">
                                            <p className="text-sm font-medium truncate">{artist.name}</p>
                                            <p className="text-xs text-neutral-500 truncate">
                                                {artist.bio ? artist.bio.substring(0, 60) + '...' : 'No bio'}
                                            </p>
                                        </div>
                                    </li>
                                ))}
                            </ul>
                        )}
                    </CardContent>
                </Card>
            </div>

            {topSongs.length > 0 && (
                <Card>
                    <CardHeader>
                        <CardTitle className="text-lg">Top Songs (by views)</CardTitle>
                    </CardHeader>
                    <CardContent>
                        <ul className="space-y-3">
                            {topSongs.map((song: any, idx: number) => (
                                <li key={song.id} className="flex items-center gap-3">
                                    <span className="text-sm font-bold text-neutral-400 w-6">{idx + 1}</span>
                                    <div className="flex-1 min-w-0">
                                        <p className="text-sm font-medium truncate">{song.title}</p>
                                        <p className="text-xs text-neutral-500 truncate">{song.artist?.name}</p>
                                    </div>
                                    <span className="text-xs text-neutral-400">{song.views} views</span>
                                </li>
                            ))}
                        </ul>
                    </CardContent>
                </Card>
            )}
        </div>
    )
}
