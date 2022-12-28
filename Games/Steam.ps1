winget install Valve.Steam --location C:\Games\Steam

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Steam"
