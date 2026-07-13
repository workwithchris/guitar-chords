export interface Song {
    id: number
    title: string
    slug: string
    content?: string
    key?: string | null
    capo?: number
    tuning?: string
    difficulty?: string
    genre?: string | null
    year?: number | null
    writtenBy?: string | null
    image?: string | null
    videoUrl?: string | null
    artistId: number
    isActive: boolean
    createdAt: string
    updatedAt?: string
    artist?: Pick<Artist, 'id' | 'name' | 'slug' | 'isActive' | 'image'>
}

export interface Artist {
    id: number
    name: string
    slug: string
    image?: string | null
    bio?: string | null
    isActive: boolean
    createdAt: string
    updatedAt?: string
    songCount?: number
}

export interface BlogPost {
    id: number
    title: string
    slug: string
    content: string
    excerpt?: string | null
    image?: string | null
    authorName?: string | null
    published: boolean
    createdAt: string
    updatedAt?: string
}

export interface HomeStats {
    totalSongs: number
    totalArtists: number
    totalGenres: number
    beginnerCount: number
}

export interface PaginatedResult<T> {
    data: T[]
    totalCount: number
    page: number
    totalPages: number
}

export interface DashboardStats {
    totalSongs: number
    activeSongs: number
    totalArtists: number
    activeArtists: number
    genres: string[]
}
