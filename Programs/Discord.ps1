# Impossible to modify installation path using installer
winget install Discord.Discord --location C:\Programs\Discord

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Discord"
