# Not available via winget
# Not available via choco
$name = "Bluetooth Battery Monitor"
$version = "2.20.0.1"
$download_folder = "$env:USERPROFILE\Downloads\get_set\$name"
$url = "https://www.bluetoothgoodies.com/battery-monitor/files/BattMonSetup-$version.msi"
$exe_path = "$download_folder\BattMonSetup-$version.msi"

# Download installer
. "$((get-item $PSScriptRoot).parent.FullName)\lib\download.ps1"
download $url $exe_path

# Installer has no method to modify install path
# TODO: Maybe use Start-Process on top of this
msiexec /i "$exe_path" /qn /quiet