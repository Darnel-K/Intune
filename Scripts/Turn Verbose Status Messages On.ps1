$RegKey = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$VerboseProperty = "verbosestatus"
$StatusMsgProperty = "DisableStatusMessages"

if ((Get-ItemProperty $RegKey).PSObject.Properties.Name -contains $VerboseProperty) {
    try {
        Set-Itemproperty -path $RegKey -Name $VerboseProperty -value '1'
    }
    catch {
        $_.Exception.Message
    }
}
else {
    try {
        New-ItemProperty -path $RegKey -Name $VerboseProperty -value '1' -Type DWORD
    }
    catch {
        $_.Exception.Message
    }

}
if ((Get-ItemProperty $RegKey).PSObject.Properties.Name -contains $StatusMsgProperty) {
    try {
        Set-Itemproperty -path $RegKey -Name $StatusMsgProperty -value '0'
    }
    catch {
        $_.Exception.Message
    }
}
else {
    try {
        New-ItemProperty -path $RegKey -Name $StatusMsgProperty -value '0' -Type DWORD
    }
    catch {
        $_.Exception.Message
    }

}
Exit $LASTEXITCODE
