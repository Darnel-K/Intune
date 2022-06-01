$User = "Administrator"
try {
    $Result = (Get-LocalUser -Name $user -ErrorAction Stop).Enabled
    try {
        if ($Result) {
            Disable-LocalUser -Name $User
        }
    }
    catch {
        $_.Exception.Message #in case disable fails
    }
}
catch {
    $_.Exception.Message #if user doesnt exist
}
