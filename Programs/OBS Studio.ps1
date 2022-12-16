# Installer has no GUI and no method to modify install path
winget install OBSProject.OBSStudio --location "C:\Programs\OBS Studio"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "OBS Studio"

Write-Host "Configure OBS Studio" -ForegroundColor DarkYellow
