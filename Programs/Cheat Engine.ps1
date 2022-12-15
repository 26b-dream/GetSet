# Not available via winget
# Not available via choco
# Avoid newer versions of AutoHotkey
#   Installers after 7.0 will automatically install adware so juse use version 7.0
$name = "Cheat Engine"
$version = "7.0"
$download_folder = "$env:USERPROFILE/Downloads/get_set/$name"
$url = "https://github.com/cheat-engine/cheat-engine/releases/download/$version/CheatEngine70.exe"
$exe_path = "$download_folder/CheatEngine70.exe"

# Download installer
. "$((get-item $PSScriptRoot).parent.FullName)\lib\download.ps1"
download $url $exe_path

# Normal GUI installation has no choice on installation path
Start-Process -FilePath "$exe_path" -ArgumentList "/SILENT", '/DIR="C:\Programs\Cheat Engine"' -Wait

# Disable updates to avoid adware
reg add "HKCU\Software\Cheat Engine\VersionCheck" /v "CheckOnLaunch" /t REG_SZ /d "0" /f

# Disable tutorial popup
reg add "HKCU\Software\Cheat Engine" /v "First Time User" /t REG_DWORD /d "0" /f

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Cheat Engine"
