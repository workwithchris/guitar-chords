import { fetchActiveArtistsWithSongCount } from "@/store/api/artist.api";
import ArtistsList from "./components/list";
import Header from "./components/header";
import type { Metadata } from 'next'

export const revalidate = 0;

export const metadata: Metadata = {
  title: 'All Artists - Guitar Chords',
  description: 'Browse guitar chords and lyrics by your favorite artists.',
}

export default async function ArtistsPage() {
    const data: any = await fetchActiveArtistsWithSongCount();
    return (
        <div className="space-y-8">
            <Header />
            <div className="border-t border-neutral-200 dark:border-neutral-800" />
            <ArtistsList artists={data ?? []} />
        </div>
    );
}
