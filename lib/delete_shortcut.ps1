# This is required to catch permsission denied errors
$erroractionPreference = "stop"

function delete_shortcut([string]$name) {
    $shortcut = "$env:USERPROFILE\Desktop\$name.lnk"
    if (Test-Path $shortcut) {
        Remove-Item -Path $shortcut -Force
    }

    $shortcut = "C:\Users\Public\Desktop\$name.lnk"
    if (Test-Path $shortcut) {
        Remove-Item -Path $shortcut -Force
    }
}
