export const publicRoutes = {
    home: '/',
    songs: '/songs',
    song: (slug: string) => `/songs/${slug}`,
    artists: '/artists',
    artist: (slug: string) => `/artists/${slug}`,
    search: '/search',
    searchQuery: (query: string) => `/search?query=${encodeURIComponent(query)}`,
    favorites: '/favorites',
    aboutUs: '/about-us',
    contactUs: '/contact-us',
    request: '/request',
    blog: '/blog',
    blogPost: (slug: string) => `/blog/${slug}`,
} as const

export const adminRoutes = {
    home: '/admin',
    login: '/admin/login',
    songs: '/admin/songs',
    artists: '/admin/artists',
    addSong: '/admin/songs/add',
    editSong: (id: number) => `/admin/songs/${id}/edit`,
    bulkImport: '/admin/songs/bulk',
    blog: '/admin/blog',
    addBlog: '/admin/blog/add',
    editBlog: (id: number) => `/admin/blog/${id}/edit`,
} as const
