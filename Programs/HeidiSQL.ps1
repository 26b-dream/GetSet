winget install HeidiSQL.HeidiSQL --location "C:\Programs\HeidiSQL"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "HeidiSQL"
