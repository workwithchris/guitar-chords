/** @type {import('next').NextConfig} */
const nextConfig = {
    images: {
        formats: ['image/avif', 'image/webp'],
        remotePatterns: [
            { hostname: "cdn-images.dzcdn.net" },
            { hostname: "upload.wikimedia.org" }
        ]
    }
};

export default nextConfig;
