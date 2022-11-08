$Services = ("AzureAD", "MSOnline", "ExchangeOnline", 'SharePoint', 'SharePointPnP', 'SecAndCompCenter', 'Teams')
Foreach ($Service in $Services) {
    Write-Host Checking install status for $Service...
    Switch ($Service) {
        ExchangeOnline {
            $Module = Get-InstalledModule -Name ExchangeOnlineManagement -MinimumVersion 2.0.3 -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host Exchange Online'(EXO V2)' module is installed... Uninstalling...  -ForegroundColor yellow
                Uninstall-Module ExchangeOnlineManagement -Force
            }
            else {
                Write-Host Exchange Online'(EXO V2)' module is not installed  -ForegroundColor green
            }
        }

        MSOnline {
            $Module = Get-Module -Name MSOnline -ListAvailable -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host MSOnline module is installed... Uninstalling...  -ForegroundColor yellow
                Uninstall-Module MSOnline -Force
            }
            else {
                Write-Host MSOnline module is not installed  -ForegroundColor green
            }
        }

        AzureAD {
            $Module = Get-Module -Name AzureAD -ListAvailable -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host AzureAD module is installed... Uninstalling...  -ForegroundColor yellow
                Uninstall-Module AzureAD -Force
            }
            else {
                Write-Host AzureAD module is not installed  -ForegroundColor green
            }
        }

        SharePoint {
            $Module = Get-Module -Name Microsoft.Online.SharePoint.PowerShell -ListAvailable -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host SharePoint Online PowerShell module is installed... Uninstalling...  -ForegroundColor yellow
                Uninstall-Module Microsoft.Online.SharePoint.PowerShell -Force
            }
            else {
                Write-Host SharePoint Online PowerShell module is not installed  -ForegroundColor green
            }
        }

        SharePointPnP {
            $Module = Get-InstalledModule -Name SharePointPnPPowerShellOnline -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host SharePoint PnP module module is installed... Uninstalling...  -ForegroundColor yellow
                Uninstall-Module -Name SharePointPnPPowerShellOnline -Force
            }
            else {
                Write-Host SharePoint PnP module module is not installed  -ForegroundColor green
            }
        }

        SecAndCompCenter {
            $Module = Get-InstalledModule -Name ExchangeOnlineManagement -MinimumVersion 2.0.3 -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host Exchange Online'(EXO V2)' module is installed... Uninstalling...  -ForegroundColor yellow
                Uninstall-Module ExchangeOnlineManagement -Force
            }
            else {
                Write-Host Exchange Online'(EXO V2)' module is not installed  -ForegroundColor green
            }
        }

        Teams {
            $Module = Get-InstalledModule -Name MicrosoftTeams -MinimumVersion 4.0.0 -ErrorAction SilentlyContinue
            if ($Module.count -ne 0) {
                Write-Host MicrosoftTeams module is installed... Uninstalling...  -ForegroundColor yellow
                Uninstall-Module MicrosoftTeams -Force
            }
            else {
                Write-Host MicrosoftTeams module is not installed  -ForegroundColor green
            }
        }
    }
}
