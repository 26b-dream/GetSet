# --location does not work
winget install AnyDeskSoftwareGmbH.AnyDesk --override "INSTALL=C:\Programs\AnyDesk"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "AnyDesk MSI"
