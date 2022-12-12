winget install Anki.Anki --location C:\Programs\Anki

#Requires -RunAsAdministrator
# Shortcut cannot be removed unless run as administrator
Remove-Item -Path C:\Users\Public\Desktop\Anki.lnk -Force

Write-Host "Login to Anki" -ForegroundColor DarkYellow
