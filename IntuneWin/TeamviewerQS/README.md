[Download TeamViewer Quick Support](https://www.teamviewer.com/en/info/quicksupport/)

Copy install.ps1, uninstall.ps1 and the TeamViewer QS executable to your IntuneWin source folder.

When adding the intunewin file to Endpoint Manager use the install and uninstall commands below.

### Install

```powershell.exe -executionpolicy bypass .\install.ps1```

### Uninstall

```powershell.exe -executionpolicy bypass .\uninstall.ps1```

To detect if the install was successful set the detection method to "file or folder exists" and detect the path below.

### Path

```C:\Users\Public\Desktop```

### File

```TeamViewerQS.exe```