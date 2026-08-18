import React from 'react'
import { Card, CardContent } from '@/components/ui/card'

const DashboardCard = ({
    title,
    value,
    subtitle,
    icon
}: {
    title: string,
    value: any,
    subtitle?: string,
    icon?: React.ReactNode
}) => {
    return (
        <Card className="flex-1 min-w-[200px] relative overflow-hidden group">
            <CardContent className="p-6">
                <div className="flex items-start justify-between">
                    <div className="space-y-1">
                        <p className="text-sm font-medium text-muted-foreground">{title}</p>
                        <p className="text-3xl font-bold tracking-tight">{value ?? 0}</p>
                        {subtitle && (
                            <p className="text-xs text-muted-foreground">{subtitle}</p>
                        )}
                    </div>
                    {icon && (
                        <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-secondary text-muted-foreground group-hover:scale-110 transition-transform">
                            {icon}
                        </div>
                    )}
                </div>
            </CardContent>
        </Card>
    )
}

export default DashboardCard
