# Not available via winget
# choco uses a zip installer
#   Extracts to C:\ProgramData\chocolatey\lib\yt-dlp
choco install yt-dlp -y

$install_path = "C:\Programs\yt-dlp"

# Delete old version if it exists
if (Test-Path -Path $install_path) {
    Remove-Item $install_path -Recurse
}

# Copy files into proper install location
Copy-Item "C:\ProgramData\chocolatey\lib\yt-dlp" $install_path -Recurse

# Uninstall because chocolatey's files are no longer needed and can cause issues
choco uninstall yt-dlp -y

. "$((get-item $PSScriptRoot).parent.FullName)\lib\add_to_path.ps1"
add_to_path "$install_path\tools\x64\yt-dlp.exe"
