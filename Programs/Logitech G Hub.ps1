# Installer has no method to modify install path
winget install Logitech.GHUB

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Logitech G HUB"
