# Installs into the wrong path
#   winget install --id WinFsp.WinFsp --location "C:\Programs\WinFsp"
winget install --id WinFsp.WinFsp --override "INSTALLDIR=C:\Programs\WinFsp /quiet"