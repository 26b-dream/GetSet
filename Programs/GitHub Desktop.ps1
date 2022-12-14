# No GUI, no way to modify install path
winget install GitHub.GitHubDesktop --location C:\Programs\GitHub -i

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "GitHub Desktop"
