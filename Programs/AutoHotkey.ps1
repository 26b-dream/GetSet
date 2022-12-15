# Installs into the wrong path
#   winget install Lexikos.AutoHotkey --location "C:\Programs\AutoHotkey"
winget install Lexikos.AutoHotkey --override "/D=C:\Programs\AutoHotkey /S"
