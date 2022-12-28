# Installs into the wrong path
#   winget install gerardog.gsudo --location "C:\Programs\gsudo"
winget install gerardog.gsudo --override "InstallFolder=C:\Programs\gsudo /quiet"
