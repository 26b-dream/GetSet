# Not available on Winget
# Not available on Chocolatey
# Need to download and install manually

$name = "Bluetooth Battery Monitor"
$version = "2.20.0.1"
$download_folder = "$env:USERPROFILE\Downloads\get_set\$name"
$url = "https://www.bluetoothgoodies.com/battery-monitor/files/BattMonSetup-$version.msi"
$exe_path = "$download_folder\BattMonSetup-$version.msi"

# Download installer
. "$((get-item $PSScriptRoot).parent.FullName)\lib\download.ps1"
download $url $exe_path

# Normal GUI installation has no choice on installation path
. "$((get-item $PSScriptRoot).parent.FullName)\lib\elevated.ps1"
msiexec /i "$exe_path" /qn /quiet