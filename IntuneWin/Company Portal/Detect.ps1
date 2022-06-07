$app = "Company Portal"
if (Get-AppxPackage -Name *CompanyPortal*) {
    write-host "$app App Installed"
    Exit 0
}
else {
    Write-Error "Error: $app Not Installed"
    Exit 1
}
