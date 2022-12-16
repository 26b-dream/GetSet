# Not available via winget
# choco uses a zip installer
#   Extracts to C:\ProgramData\chocolatey\lib\rclone.portable\tools\rclone-v1.60.1-windows-amd64
# Need to use rclone.portable for uninstall to work
choco install rclone.portable -y

$install_path = "C:\Programs\rclone"

# Delete old version if it exists
if (Test-Path -Path $install_path) {
    Remove-Item $install_path -Recurse
}

# Copy files into proper install location
Copy-Item "C:\ProgramData\chocolatey\lib\rclone.portable\tools\rclone-v1.60.1-windows-amd64" $install_path -Recurse

# Uninstall because chocolatey's files are no longer needed and can cause issues
choco uninstall rclone.portable -y --force

. "$((get-item $PSScriptRoot).parent.FullName)\lib\add_to_path.ps1"

add_to_path "$install_path\rclone.exe"
