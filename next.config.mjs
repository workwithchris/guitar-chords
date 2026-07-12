/** @type {import('next').NextConfig} */
const nextConfig = {
    images: {
        remotePatterns: [
            { hostname: "cdn-images.dzcdn.net" },
            { hostname: "upload.wikimedia.org" }
        ]
    }
};

export default nextConfig;
