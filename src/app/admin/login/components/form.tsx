"use client"
import React from 'react'
import { Loader2 } from 'lucide-react'

import { Button } from '@/components/ui/button/button'
import { Input } from '@/components/ui/form/input'
import { Label } from '@/components/ui/form/label'

import useAdminLogin from '../hook/useAdminLogin'

export default function LoginForm() {
    const { form, onSubmit } = useAdminLogin()
    const { register, formState: { isSubmitting, errors } } = form

    return (
        <form className='space-y-5' onSubmit={onSubmit}>
            <div className='space-y-2'>
                <Label htmlFor="email">Email</Label>
                <Input
                    id="email"
                    type="email"
                    placeholder="admin@example.com"
                    {...register("email")}
                    className={errors.email ? 'border-red-500 focus-visible:ring-red-500' : ''}
                />
                {errors.email && <p className="text-xs text-red-500">{errors.email.message}</p>}
            </div>
            <div className='space-y-2'>
                <Label htmlFor="password">Password</Label>
                <Input
                    id="password"
                    type="password"
                    placeholder="••••••••"
                    {...register("password")}
                    className={errors.password ? 'border-red-500 focus-visible:ring-red-500' : ''}
                />
                {errors.password && <p className="text-xs text-red-500">{errors.password.message}</p>}
            </div>
            <Button type='submit' disabled={isSubmitting} className="w-full gap-2">
                {isSubmitting && <Loader2 className="h-4 w-4 animate-spin" />}
                {isSubmitting ? 'Signing in...' : 'Sign in'}
            </Button>
        </form>
    )
}
