/** @type {import('next').NextConfig} */
const nextConfig = {
    images: {
        remotePatterns: [
            { hostname: "otbjwgxsfwclozomqmsg.supabase.co" },
            { hostname: "printler.com" },
            { hostname: "encrypted-tbn0.gstatic.com" },
            { hostname: "noodlerex.com.np" },
        ]
    }
};

export default nextConfig;
