winget install Anki.Anki --location C:\Programs\Anki

#Requires -RunAsAdministrator
# Shortcut cannot be removed unless run as administrator
shortcut = C:\Users\Public\Desktop\Anki.lnk
if (Test-Path $shortcut) {
    Remove-Item -Path $shortcut -Force
}

Write-Host "Login to Anki" -ForegroundColor DarkYellow
