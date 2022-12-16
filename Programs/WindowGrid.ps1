# Not available on Winget
$install_path = "C:\Programs\WindowGrid"

# Zip installer
#   Extracts to C:\ProgramData\chocolatey\lib\windowgrid\tools\WindowGrid.exe
choco install windowgrid -y

# Delete old version if it exists
if (Test-Path -Path $install_path) {
    Remove-Item $install_path -Recurse
}

# Create a new empty folder
New-Item -ItemType Directory -Path $install_path

# Copy executable into proper install location
Copy-Item "C:\ProgramData\chocolatey\lib\windowgrid\tools\WindowGrid.exe" "$install_path/WindowGrid.exe"

# Copy config
Copy-Item "files\WindowGrid\WindowGrid.settings" "$install_path/WindowGrid.settings"

choco uninstall windowgrid -y

# Run it
. "$install_path/WindowGrid.exe"
