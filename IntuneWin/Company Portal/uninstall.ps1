Get-AppxPackage -AllUsers "*CompanyPortal*" | Remove-AppxPackage
Get-appxprovisionedpackage –online | where-object { $_.packagename –like "*CompanyPortal*" } | remove-appxprovisionedpackage –online
