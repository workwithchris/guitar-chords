"use client"

import { useEffect, useRef, useState } from "react"
import ChordDiagram from "@/components/ui/chord-diagram"
import { createPortal } from "react-dom"

type PopoverState = { chord: string; x: number; y: number } | null

export default function ChordPopoverContainer({
  containerRef,
  capo,
}: {
  containerRef: React.RefObject<HTMLElement | null>
  capo: number
}) {
  const [popover, setPopover] = useState<PopoverState>(null)
  const hideTimer = useRef<ReturnType<typeof setTimeout> | null>(null)

  useEffect(() => {
    const el = containerRef.current
    if (!el) return

    const show = (target: Element, x: number, y: number) => {
      const chord = target.getAttribute("data-chord")
      if (!chord) return
      if (hideTimer.current) {
        clearTimeout(hideTimer.current)
        hideTimer.current = null
      }
      setPopover({ chord, x, y })
    }

    const onMove = (e: MouseEvent) => {
      const target = (e.target as Element)?.closest?.("[data-chord]")
      if (target) show(target, e.clientX, e.clientY)
    }

    const onLeave = () => {
      hideTimer.current = setTimeout(() => setPopover(null), 120)
    }

    const onClick = (e: MouseEvent) => {
      const target = (e.target as Element)?.closest?.("[data-chord]")
      if (target) {
        show(target, e.clientX, e.clientY)
      }
    }

    el.addEventListener("mousemove", onMove)
    el.addEventListener("mouseleave", onLeave)
    el.addEventListener("click", onClick)
    return () => {
      el.removeEventListener("mousemove", onMove)
      el.removeEventListener("mouseleave", onLeave)
      el.removeEventListener("click", onClick)
      if (hideTimer.current) clearTimeout(hideTimer.current)
    }
  }, [containerRef])

  if (!popover) return null

  const tip = (
    <div
      className="pointer-events-none fixed z-50 -translate-x-1/2 -translate-y-full mt-[-12px] px-3 py-2 rounded-xl border border-border bg-card shadow-lg"
      style={{ left: popover.x, top: popover.y - 12 }}
    >
      <ChordDiagram chord={popover.chord} capo={capo} size={96} />
    </div>
  )

  return typeof document !== "undefined" ? createPortal(tip, document.body) : null
}