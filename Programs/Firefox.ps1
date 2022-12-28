# Installs into the wrong path
#   winget install Mozilla.Firefox --location "C:\Programs\Firefox"
winget install Mozilla.Firefox --override "/InstallDirectoryPath=C:\Programs\Firefox /TaskbarShortcut=False /DesktopShortcut=False"
