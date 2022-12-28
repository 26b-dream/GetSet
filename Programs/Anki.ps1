winget install Anki.Anki --location C:\Programs\Anki

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Anki"

Write-Host "Login to Anki" -ForegroundColor DarkYellow
