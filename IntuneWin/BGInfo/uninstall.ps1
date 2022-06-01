
Remove-Item -Path "C:\Program Files\BGInfo" -Recurse -Force -Confirm:$false
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\BGInfo.lnk" -Force -Confirm:$false

Return 0
