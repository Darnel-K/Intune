# Change GroupName to the name of the group
# Run this on the local AD server

$group = Get-ADGroup GroupName
Get-ADUser -Properties memberof -Filter 'enabled -eq $true' | Where-Object { $group.DistinguishedName -notin $_.memberof } | Format-Table DistinguishedName
