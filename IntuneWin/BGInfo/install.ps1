New-Item -ItemType Directory -Force -Path "c:\Program Files\BGInfo" | Out-Null
#Start-BitsTransfer -Source "https://live.sysinternals.com/Bginfo64.exe" -Destination "C:\Program Files\BGInfo"
Copy-Item -Path "$PSScriptRoot\Bginfo64.exe" -Destination "C:\Program Files\BGInfo\Bginfo64.exe"
Copy-Item -Path "$PSScriptRoot\Config.bgi" -Destination "C:\Program Files\BGInfo\Config.bgi"
Copy-Item -Path "$PSScriptRoot\Wallpaper.jpg" -Destination "C:\Program Files\BGInfo\Wallpaper.jpg"
Copy-Item -Path "$PSScriptRoot\Production1.txt" -Destination "C:\Program Files\BGInfo\Production1.txt"

$Shell = New-Object -ComObject ("WScript.Shell")
$ShortCut = $Shell.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\BGInfo.lnk")
$ShortCut.TargetPath = "`"C:\Program Files\BGInfo\Bginfo64.exe`""
$ShortCut.Arguments = "`"C:\Program Files\BGInfo\Config.bgi`" /timer:0 /silent /nolicprompt"
$ShortCut.IconLocation = "Bginfo64.exe, 0";
$ShortCut.Save()

$CheckAdminScript = @"
Dim WshShell, colItems, objItem, objGroup, objUser
Dim strUser, strAdministratorsGroup, bAdmin
bAdmin = False

On Error Resume Next
Set WshShell = CreateObject("WScript.Shell")
strUser = WshShell.ExpandEnvironmentStrings("%Username%")

winmgt = "winmgmts:{impersonationLevel=impersonate}!//"
Set colItems = GetObject(winmgt).ExecQuery("Select Name from Win32_Group where SID='S-1-5-32-544'",,48)

For Each objItem in colItems
     strAdministratorsGroup = objItem.Name
Next

Set objGroup = GetObject("WinNT://./" & strAdministratorsGroup)

For Each objUser in objGroup.Members
    If objUser.Name = strUser Then
         bAdmin = True
         Exit For
    End If
Next
On Error Goto 0

If bAdmin Then
     Echo "Admin"
Else
     Echo "User"
End If
"@

$CheckAdminScript | Out-File -FilePath "C:\Program Files\BGInfo\CheckAdmin.vbs" -Encoding utf8 -Force -Confirm:$false

Return 0
