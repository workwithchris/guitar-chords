const MS_7_DAYS = 7 * 24 * 60 * 60 * 1000

export function isNew(dateStr: string): boolean {
  const created = new Date(dateStr).getTime()
  return Date.now() - created < MS_7_DAYS
}

export function daysAgo(dateStr: string): number {
  const diff = Date.now() - new Date(dateStr).getTime()
  return Math.floor(diff / (24 * 60 * 60 * 1000))
}
