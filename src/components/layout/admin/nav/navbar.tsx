"use client"

import { Button } from '@/components/ui/button/button'
import { ModeToggle } from '@/components/ui/button/toggle-mode'
import { useAuthStore } from '@/store/auth.store'
import { useRouter } from 'next/navigation'
import React from 'react'
import { NavItems } from './nav.items'

export default function Navbar() {
  const router = useRouter();
  const { signOut }: any = useAuthStore()
  return (
    <div className="flex justify-between py-8">
      <h4 className="text-xl font-semibold">
        Admin
      </h4>
      <NavItems />
      <div className='flex gap-5'>
        <ModeToggle />
        <Button onClick={() => {
          signOut()
            .then(() => { router.push("/admin/login") })
        }}>Logout</Button>
      </div>
    </div>
  )
}
