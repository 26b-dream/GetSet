winget install Bitwarden.Bitwarden --location C:\Programs\Bitwarden

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Bitwarden"
