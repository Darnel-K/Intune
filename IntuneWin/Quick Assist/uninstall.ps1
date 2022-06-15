Get-AppxPackage -AllUsers "*QuickAssist*" | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object { $_.packagename –like "*QuickAssist*" } | remove-appxprovisionedpackage –online
