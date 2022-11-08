[Download Adobe Reader](https://get.adobe.com/reader/enterprise/)
 - Operating System: Choose the one you are using / deploying to
 - Language: All Languages (MUI)
 - Version: Choose 64-bit unless you 100% need 32-bit



Install Command (Replace EXE with correct file name)

```Powershell
powershell.exe -executionpolicy bypass {if (Test-Path C:\Intune\AdobeReader) {Remove-Item -Path C:\Intune\AdobeReader -Force -Recurse | Out-Null}}; New-Item -ItemType Directory -Path "C:\Intune\AdobeReader" -Force | Out-Null; Copy-Item -Path .\* -Destination "C:\Intune\AdobeReader" -Recurse | Out-Null; msiexec.exe /i "C:\Intune\AdobeReader\AcroPro.msi" PATCH="C:\Intune\AdobeReader\AcroRdrDCx64Upd2200320258_MUI.msp" /L*V C:\Intune\AdobeReader\AdobeReader.log /qn
```

Uninstall Command

```Powershell
msiexec /x "{AC76BA86-1033-FF00-7760-BC15014EA700}" /qn
```
