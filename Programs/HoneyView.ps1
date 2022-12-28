# winget has a hash mismatch causing installation to fail
choco install HoneyView --install-args "/D=C:\Programs\HoneyView"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "HoneyView"
