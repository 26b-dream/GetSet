# Not available on Winget
# Not available on Chocolatey
$version = "09747"
$download_folder = "$env:USERPROFILE/Downloads/get_set/Drivers/RME Fireface UFX+"
$url = "https://rme-audio.de/downloads/driver_madiface_win_$version.zip"
$zip_path="$download_folder/driver_madiface_win_$version.zip"
$extracted_path="$download_folder/driver_madiface_win_$version"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\download.ps1"
download $url $zip_path


. "$((get-item $PSScriptRoot).parent.FullName)\lib\extract.ps1"
extract $zip_path $extracted_path

# TODO: Detection of previous installations
. "$extracted_path/rmeinstaller.exe" /silent

Write-Host "Activate devices in madiface" -ForegroundColor DarkYellow
Write-Host "Set ADAT 1/2 and ADAT 3/4 as loopback" -ForegroundColor DarkYellow
Write-Host "Disable Windows audio devices" -ForegroundColor DarkYellow
