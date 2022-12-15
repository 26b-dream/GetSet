# Installer has no method to modify install path
winget install Discord.Discord --location C:\Programs\Discord

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Discord"
