import { NextRequest, NextResponse } from "next/server";

export default function proxy(request: NextRequest) {
    const pathname: string = request.nextUrl.pathname;

    const session: string | undefined = request.cookies.get("session")?.value;
    const user: string | undefined = request.cookies.get("user")?.value;

    if (session && user && (pathname === "/admin/login")) {
        return NextResponse.redirect(new URL("/admin/", request.url));
    }

    if ((!session || !user) && pathname.startsWith("/admin/") && pathname !== "/admin/login") {
        return NextResponse.redirect(new URL("/admin/login", request.url));
    }

    return NextResponse.next();
}

export const config = {
    matcher: "/admin/:path*"
}
