# --location does not work
winget install voidtools.Everything --override "INSTALLDIR=C:\Programs\Everything /quiet"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Everything"

# Everything does not start automatically after installation so it is safe to restore config after installation
Copy-Item "files\Everything\Everything.ini" "C:\Programs\Everything\Everything.ini"
