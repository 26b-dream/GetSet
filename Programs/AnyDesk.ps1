# Installs into the wrong path
#   winget install AnyDeskSoftwareGmbH.AnyDesk --location "C:\Programs\AnyDesk"
winget install AnyDeskSoftwareGmbH.AnyDesk --override "INSTALL=C:\Programs\AnyDesk"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "AnyDesk MSI"
