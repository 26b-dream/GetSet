# winget install AnyDeskSoftwareGmbH.AnyDesk --override "INSTALL=C:\Programs\AnyDesk"

#Requires -RunAsAdministrator
# Shortcut cannot be removed unless run as administrator
$shortcut = "C:\Users\Public\Desktop\AnyDesk MSI.lnk"
if (Test-Path $shortcut) {
    Remove-Item -Path $shortcut -Force
}
