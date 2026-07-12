import supabase from "@/core/supabase/client";

export async function fetchBlogPosts() {
    const { data, error } = await supabase
        .from("blog_post")
        .select("*")
        .order("createdAt", { ascending: false });
    if (error) throw new Error(error.message);
    return data;
}

export async function fetchPublishedPosts() {
    const { data, error } = await supabase
        .from("blog_post")
        .select("*")
        .eq("published", true)
        .order("createdAt", { ascending: false });
    if (error) throw new Error(error.message);
    return data;
}

export async function fetchBlogPostBySlug(slug: string) {
    const { data, error } = await supabase
        .from("blog_post")
        .select("*")
        .eq("slug", slug)
        .single();
    if (error) throw new Error(error.message);
    return data;
}

export async function fetchBlogPostById(id: number) {
    const { data, error } = await supabase
        .from("blog_post")
        .select("*")
        .eq("id", id)
        .single();
    if (error) throw new Error(error.message);
    return data;
}

export async function addBlogPost(formData: any) {
    return supabase.from("blog_post").insert(formData);
}

export async function updateBlogPost(id: number, formData: any) {
    return supabase.from("blog_post").update(formData).eq("id", id);
}

export async function deleteBlogPost(id: number) {
    return supabase.from("blog_post").delete().eq("id", id);
}
