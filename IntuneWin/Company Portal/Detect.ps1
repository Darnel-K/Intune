$app = "Company Portal"
if (Get-AppxPackage -Name *CompanyPortal* -AllUsers) {
    Write-Output "$app App Installed"
    Exit 0
}
else {
    Write-Error "Error: $app Not Installed"
    Exit 1
}
