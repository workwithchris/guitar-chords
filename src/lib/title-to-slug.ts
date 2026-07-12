export function titleToSlug(title: string) {
    // Convert to lowercase and replace non-alphanumeric characters with dashes
    const slug = title.toLowerCase().replace(/[^a-zA-Z0-9]/g, '-');

    // Remove consecutive dashes and leading/trailing dashes
    return slug.replace(/-+/g, '-').replace(/^-+|-+$/g, '');
}