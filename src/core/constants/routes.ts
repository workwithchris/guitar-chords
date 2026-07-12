export const publicRoutes = {
    home: '/',
    songs: '/songs',
    song: (slug: string) => `/songs/${slug}`,
    artists: '/artists',
    artist: (slug: string) => `/artists/${slug}`,
    search: '/search',
    searchQuery: (query: string) => `/search?query=${encodeURIComponent(query)}`,
    aboutUs: '/about-us',
    contactUs: '/contact-us',
    request: '/request',
} as const

export const adminRoutes = {
    home: '/admin',
    login: '/admin/login',
    songs: '/admin/songs',
    artists: '/admin/artists',
    addSong: '/admin/songs/add',
} as const
