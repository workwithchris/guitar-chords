"use client"
import { Plus, Pencil } from 'lucide-react'
import React from 'react'
import AddArtistForm from './form'
import CusDrawer from '@/components/ui/drawer/cus.drawer'
import { useArtistStore } from '@/store/artist.store'
import { Button } from '@/components/ui/button/button'

export default function AddArtist() {
    const { showModal, handleShow, handleClose, selectedArtist }: any = useArtistStore()
    const isEditing = !!selectedArtist

    return (
        <>
            <Button onClick={handleShow} className="gap-2">
                {isEditing ? <Pencil className="h-4 w-4" /> : <Plus className="h-4 w-4" />}
                {isEditing ? 'Edit Artist' : 'Add Artist'}
            </Button>
            <CusDrawer show={showModal} handleOpen={handleShow}
                handleClose={handleClose}
                title={isEditing ? 'Edit Artist' : 'Add Artist'}>
                <AddArtistForm />
            </CusDrawer>
        </>
    )
}
