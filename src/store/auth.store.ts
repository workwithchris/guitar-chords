import supabase from "@/core/supabase/client";
import { AuthTokenResponsePassword } from "@supabase/supabase-js";
import { deleteCookie, setCookie } from "cookies-next";
import { create } from "zustand";

export const useAuthStore = create((set) => ({
    user: null,
    session: null,
    setUser: (user: AuthTokenResponsePassword) => set({ user }),
    signIn: async (email: string, password: string) => {
        const { data, error }: AuthTokenResponsePassword = await supabase.auth.signInWithPassword({ email, password });
        if (error) throw error;
        setCookie("user", JSON.stringify(data.user))
        setCookie("session", JSON.stringify(data.session));
        set({ user: data.user, session: data.session });
    },
    signOut: async () => {
        const { error } = await supabase.auth.signOut();
        if (error) throw error;
        set({ user: null, session: null });
        deleteCookie("user");
        deleteCookie("session");
        return true;
    },
}));