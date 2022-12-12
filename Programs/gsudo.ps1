#Requires -RunAsAdministrator
# Installation fails when not run as admin for some reason

# --location does not work
winget install gerardog.gsudo --override "InstallFolder=C:\Programs\gsudo /quiet"