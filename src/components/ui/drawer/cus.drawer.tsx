"use client"
import React from 'react'
import { Drawer, DrawerClose, DrawerContent, DrawerDescription, DrawerFooter, DrawerHeader, DrawerTitle } from '@/components/ui/drawer/drawer'
import { Button } from '../button/button'
import { X } from 'lucide-react'

export default function CusDrawer({ title, children, show, handleOpen, handleClose }:
    {
        title: string,
        children: React.ReactNode, show: boolean, handleClose: any, handleOpen: any
    }) {
    return (
        <Drawer closeThreshold={2} open={show} onClose={handleClose}>
            <DrawerContent className='max-w-2xl mx-auto'>
                <div className='flex items-center justify-between border-b border-neutral-100 dark:border-neutral-800 px-6 py-4'>
                    <DrawerHeader className="p-0">
                        <DrawerTitle>{title}</DrawerTitle>
                        <DrawerDescription>Manage artist details</DrawerDescription>
                    </DrawerHeader>
                    <DrawerClose onClick={handleClose}>
                        <Button variant="ghost" size="icon" className="rounded-full">
                            <X className="h-4 w-4" />
                        </Button>
                    </DrawerClose>
                </div>
                <DrawerFooter className="px-6 py-4">
                    {children}
                </DrawerFooter>
            </DrawerContent>
        </Drawer>
    )
}
