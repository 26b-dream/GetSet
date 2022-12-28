winget install --id AntibodySoftware.WizTree --location "C:\Programs\WizTree"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "WizTree"
