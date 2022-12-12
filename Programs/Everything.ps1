# --location does not work
# winget install voidtools.Everything --override "INSTALLDIR=C:\Programs\Everything /quiet" -i

#Requires -RunAsAdministrator
# Shortcut cannot be removed unless run as administrator
$shortcut = "C:\Users\Public\Desktop\Everything.lnk"
if (Test-Path $shortcut) {
    Remove-Item -Path $shortcut -Force
}

# Everything does not start automatically after installation so it is safe to restore config after installation
Copy-Item "files\Everything\Everything.ini" "C:\Programs\Everything\Everything.ini"
