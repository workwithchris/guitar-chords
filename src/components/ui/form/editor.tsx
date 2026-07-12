"use client";
import React, { useCallback, useEffect, useRef, useState } from "react";
import { cn } from "@/lib/utils";

type QuillInstance = {
  root: HTMLElement;
  on: (event: string, handler: () => void) => void;
  enable: (enabled: boolean) => void;
  disable: () => void;
  clipboard: { dangerouslyPasteHTML: (index: number, html: string) => void; convert: (html: string) => unknown };
  setSelection: (index: number, length?: number) => void;
  getSelection: () => { index: number; length: number } | null;
  getText: () => string;
  insertText: (index: number, text: string) => void;
};

type QuillStatic = {
  new (container: HTMLElement | string, options: Record<string, unknown>): QuillInstance;
  sources: { USER: string; SILENT: string };
};

declare global {
  interface Window {
    Quill: QuillStatic;
  }
}

const TOOLBAR = [
  [{ header: [false, 2, 3] }],
  ["bold", "italic", "underline", "strike"],
  [{ color: [] }, { background: [] }],
  ["blockquote", "code-block"],
  [{ list: "ordered" }, { list: "bullet" }],
  ["clean"],
];

const CSS_URL = "https://cdn.jsdelivr.net/npm/quill@2.0.3/dist/quill.snow.css";
const JS_URL = "https://cdn.jsdelivr.net/npm/quill@2.0.3/dist/quill.js";

type Props = {
  editorValues: string;
  getEditorValues: (value: string) => void;
  className?: string;
  disabled?: boolean;
  placeholder?: string;
};

const QUICK_CHORDS = ["G", "C", "D", "Am", "Em", "F", "A", "E", "Bm", "Dm", "G7", "C7", "D7", "Fmaj7", "Bdim"];

export default function TextEditor({ editorValues, getEditorValues, className, disabled, placeholder }: Props) {
  const containerRef = useRef<HTMLDivElement>(null);
  const wrapperRef = useRef<HTMLDivElement>(null);
  const quillRef = useRef<QuillInstance | null>(null);
  const [ready, setReady] = useState(false);
  const [focused, setFocused] = useState(false);
  const suppressRef = useRef(false);

  const emit = useCallback(() => {
    if (!quillRef.current || suppressRef.current) return;
    const html = quillRef.current.root.innerHTML;
    const clean = html === "<p><br></p>" ? "" : html;
    getEditorValues(clean);
  }, [getEditorValues]);

  const insertChord = useCallback(
    (chord: string) => {
      const q = quillRef.current;
      if (!q) return;
      const sel = q.getSelection();
      const index = sel ? sel.index : q.getText().length;
      suppressRef.current = true;
      q.insertText(index, `[${chord}]`);
      q.setSelection(index + chord.length + 2);
      suppressRef.current = false;
      emit();
    },
    [emit]
  );

  useEffect(() => {
    const css = document.createElement("link");
    css.rel = "stylesheet";
    css.href = CSS_URL;
    document.head.appendChild(css);

    const js = document.createElement("script");
    js.src = JS_URL;
    js.async = true;
    js.onload = () => setReady(true);
    document.body.appendChild(js);

    return () => {
      css.remove();
      js.remove();
    };
  }, []);

  useEffect(() => {
    if (!ready || !containerRef.current || quillRef.current) return;

    containerRef.current.innerHTML = "";
    const q = new window.Quill(containerRef.current, {
      theme: "snow",
      modules: { toolbar: TOOLBAR },
      placeholder: placeholder ?? "Write lyrics and chords here...",
    });

    q.on("text-change", () => emit());

    const initial = editorValues || "<p><br></p>";
    suppressRef.current = true;
    q.clipboard.dangerouslyPasteHTML(0, initial);
    q.setSelection(0, 0);
    suppressRef.current = false;

    quillRef.current = q;
  }, [ready, emit, editorValues, placeholder]);

  useEffect(() => {
    if (!quillRef.current) return;
    if (disabled) quillRef.current.disable();
    else quillRef.current.enable(true);
  }, [disabled]);

  useEffect(() => {
    if (!quillRef.current || suppressRef.current) return;
    const current = quillRef.current.root.innerHTML;
    const incoming = editorValues || "<p><br></p>";
    if (current !== incoming) {
      suppressRef.current = true;
      quillRef.current.clipboard.dangerouslyPasteHTML(0, incoming);
      suppressRef.current = false;
    }
  }, [editorValues]);

  return (
    <div
      ref={wrapperRef}
      tabIndex={-1}
      onFocus={() => setFocused(true)}
      onBlur={() => setFocused(false)}
      className={cn(
        "quill-wrapper rounded-xl transition-all duration-200",
        focused && "ring-1 ring-neutral-400 dark:ring-neutral-500",
        className
      )}
    >
      {!ready ? (
        <div className="flex min-h-[300px] items-center justify-center gap-2 rounded-xl border border-neutral-200 text-sm text-neutral-400 dark:border-neutral-800">
          <div className="h-4 w-4 animate-spin rounded-full border-2 border-neutral-300 border-t-neutral-600" />
          Loading editor...
        </div>
      ) : (
        <>
          <div className="flex flex-wrap items-center gap-1.5 px-3 py-2 border-b border-neutral-200 dark:border-neutral-800 bg-neutral-50 dark:bg-neutral-900 rounded-t-xl">
            <span className="text-xs font-medium text-neutral-400 dark:text-neutral-500 mr-1">Chords</span>
            {QUICK_CHORDS.map((chord) => (
              <button
                key={chord}
                type="button"
                disabled={disabled}
                onClick={() => insertChord(chord)}
                className="inline-flex h-7 items-center rounded-md px-2.5 text-xs font-bold text-emerald-600 dark:text-emerald-400 hover:bg-emerald-50 dark:hover:bg-emerald-950/50 disabled:opacity-30 transition-colors"
              >
                {chord}
              </button>
            ))}
          </div>
          <div ref={containerRef} />
        </>
      )}
    </div>
  );
}
