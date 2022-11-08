$Services = ("AzureAD", "MSOnline", "ExchangeOnline", 'SharePoint', 'SharePointPnP', 'SecAndCompCenter', 'Teams')
Foreach ($Service in $Services) {
    Write-Host Checking install status for $Service...
    Switch ($Service) {
        ExchangeOnline {
            $Module = Get-InstalledModule -Name ExchangeOnlineManagement -MinimumVersion 2.0.3 -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host Exchange Online'(EXO V2)' module is installed!  -ForegroundColor green
                Continue
            }
            else {
                Write-Host Exchange Online'(EXO V2)' module is not installed  -ForegroundColor red
                Exit 1
            }
        }

        MSOnline {
            $Module = Get-Module -Name MSOnline -ListAvailable -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host MSOnline module is installed!  -ForegroundColor green
                Continue
            }
            else {
                Write-Host MSOnline module is not installed  -ForegroundColor red
                Exit 1
            }
        }

        AzureAD {
            $Module = Get-Module -Name AzureAD -ListAvailable -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host AzureAD module is installed!  -ForegroundColor green
                Continue
            }
            else {
                Write-Host AzureAD module is not installed  -ForegroundColor red
                Exit 1
            }
        }

        SharePoint {
            $Module = Get-Module -Name Microsoft.Online.SharePoint.PowerShell -ListAvailable -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host SharePoint Online PowerShell module is installed!  -ForegroundColor green
                Continue
            }
            else {
                Write-Host SharePoint Online PowerShell module is not installed  -ForegroundColor red
                Exit 1
            }
        }

        SharePointPnP {
            $Module = Get-InstalledModule -Name SharePointPnPPowerShellOnline -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host SharePoint PnP module module is installed!  -ForegroundColor green
                Continue
            }
            else {
                Write-Host SharePoint PnP module module is not installed  -ForegroundColor red
                Exit 1
            }
        }

        SecAndCompCenter {
            $Module = Get-InstalledModule -Name ExchangeOnlineManagement -MinimumVersion 2.0.3 -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host Exchange Online'(EXO V2)' module is installed!  -ForegroundColor green
                Continue
            }
            else {
                Write-Host Exchange Online'(EXO V2)' module is not installed  -ForegroundColor red
                Exit 1
            }
        }

        Teams {
            $Module = Get-InstalledModule -Name MicrosoftTeams -MinimumVersion 4.0.0 -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host MicrosoftTeams module is installed!  -ForegroundColor green
                Continue
            }
            else {
                Write-Host MicrosoftTeams module is not installed  -ForegroundColor red
                Exit 1
            }
        }
    }
}
Write-Host All Installed! -ForegroundColor green
Exit 0
