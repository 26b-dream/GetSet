# Installer has no GUI and no method to modify install path
#   See: https://bugs.chromium.org/p/chromium/issues/detail?id=302491
winget install Google.Chrome --location C:\Programs\Chrome

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Google Chrome"
