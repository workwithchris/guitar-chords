import React from 'react'
import type { Metadata } from 'next'
import Breadcrumbs from '@/components/ui/breadcrumbs'

const baseUrl = process.env.NEXT_PUBLIC_SHARE_BASE_URL ?? 'https://guitarchords.techyatraa.com'

export const metadata: Metadata = {
  title: 'Privacy Policy',
  description: 'Privacy policy for Guitar Chords. Learn how we collect, use, and protect your information.',
  openGraph: {
    title: 'Privacy Policy - Guitar Chords',
    description: 'Privacy policy for Guitar Chords.',
    url: '/privacy',
  },
  alternates: { canonical: `${baseUrl}/privacy` },
  robots: { index: false },
}

export default function PrivacyPage() {
  return (
    <div className="max-w-3xl mx-auto space-y-8 pb-16">
      <Breadcrumbs items={[{ label: 'Privacy Policy' }]} />

      <h1 className="text-3xl md:text-4xl font-bold tracking-tight text-foreground">
        Privacy Policy
      </h1>

      <div className="prose prose-neutral dark:prose-invert max-w-none text-sm leading-relaxed space-y-4 text-muted-foreground">
        <p>Last updated: {new Date().toLocaleDateString('en-US', { year: 'numeric', month: 'long', day: 'numeric' })}</p>

        <h2 className="text-lg font-semibold text-foreground">Information We Collect</h2>
        <p>
          We collect minimal information to improve your experience. This includes anonymous page views
          (which songs you visit) to understand popular content. We do not require an account to browse
          or use the site.
        </p>

        <h2 className="text-lg font-semibold text-foreground">Local Storage</h2>
        <p>
          We use local storage in your browser to save your favorite songs. This data stays on your device
          and is not transmitted to our servers. You can clear this at any time via your browser settings.
        </p>

        <h2 className="text-lg font-semibold text-foreground">Cookies</h2>
        <p>
          We use minimal cookies for essential functionality (theme preference, admin session).
          We do not use tracking cookies or third-party advertising cookies.
        </p>

        <h2 className="text-lg font-semibold text-foreground">Data Sharing</h2>
        <p>
          We do not sell, trade, or share your personal information with third parties.
          Anonymous analytics data (page views) is stored in our database to help us understand
          which content is most valuable to our users.
        </p>

        <h2 className="text-lg font-semibold text-foreground">Contact</h2>
        <p>
          If you have questions about this privacy policy, please contact us through our{' '}
          <a href="/contact-us" className="text-foreground underline underline-offset-2 hover:no-underline">
            contact page
          </a>.
        </p>
      </div>
    </div>
  )
}
