$app = "Quick Assist"
if (Get-AppxPackage -Name *QuickAssist* -AllUsers) {
    Write-Output "$app App Installed"
    Exit 0
}
else {
    Write-Error "Error: $app Not Installed"
    Exit 1
}
