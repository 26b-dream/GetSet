winget install Audacity.Audacity --location C:\Programs\Audacity

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Audacity"
