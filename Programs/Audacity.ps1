winget install Audacity.Audacity --location C:\Programs\Audacity

#Requires -RunAsAdministrator
# Shortcut cannot be removed unless run as administrator
$shortcut = "C:\Users\Public\Desktop\Audacity.lnk"
if (Test-Path $shortcut) {
    Remove-Item -Path $shortcut -Force
}
