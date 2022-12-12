# winget install AnyDeskSoftwareGmbH.AnyDesk --override "INSTALL=C:\Programs\AnyDesk"

#Requires -RunAsAdministrator
# Shortcut cannot be removed unless run as administrator
Remove-Item -Path "C:\Users\Public\Desktop\AnyDesk MSI.lnk" -Force
