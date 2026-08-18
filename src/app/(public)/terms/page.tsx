import React from 'react'
import type { Metadata } from 'next'
import Breadcrumbs from '@/components/ui/breadcrumbs'

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export const metadata: Metadata = {
  title: 'Terms of Service',
  description: 'Terms of service for Guitar Chords. Please read our terms before using the website.',
  openGraph: {
    title: 'Terms of Service - Guitar Chords',
    description: 'Terms of service for Guitar Chords.',
    url: '/terms',
  },
  alternates: { canonical: `${baseUrl}/terms` },
  robots: { index: false },
}

export default function TermsPage() {
  return (
    <div className="max-w-3xl mx-auto space-y-8 pb-16">
      <Breadcrumbs items={[{ label: 'Terms of Service' }]} />

      <h1 className="text-3xl md:text-4xl font-bold tracking-tight text-foreground">
        Terms of Service
      </h1>

      <div className="prose prose-neutral dark:prose-invert max-w-none text-sm leading-relaxed space-y-4 text-muted-foreground">
        <p>Last updated: {new Date().toLocaleDateString('en-US', { year: 'numeric', month: 'long', day: 'numeric' })}</p>

        <h2 className="text-lg font-semibold text-foreground">Use of Service</h2>
        <p>
          Guitar Chords provides guitar chord and lyric content for personal, educational use.
          Content is submitted by contributors and may contain errors. We make no guarantees
          about accuracy or completeness.
        </p>

        <h2 className="text-lg font-semibold text-foreground">Copyright</h2>
        <p>
          Song lyrics and chord arrangements are provided for educational purposes. All song
          copyrights belong to their respective owners. If you believe content infringes on
          your copyright, please contact us to request removal.
        </p>

        <h2 className="text-lg font-semibold text-foreground">Limitation of Liability</h2>
        <p>
          Guitar Chords is provided &quot;as is&quot; without any warranty. We are not liable for any
          damages arising from the use of this service.
        </p>

        <h2 className="text-lg font-semibold text-foreground">Changes</h2>
        <p>
          We reserve the right to update these terms at any time. Continued use of the site
          after changes constitutes acceptance of the new terms.
        </p>

        <h2 className="text-lg font-semibold text-foreground">Contact</h2>
        <p>
          For questions about these terms, please{' '}
          <a href="/contact-us" className="text-foreground underline underline-offset-2 hover:no-underline">
            contact us
          </a>.
        </p>
      </div>
    </div>
  )
}
