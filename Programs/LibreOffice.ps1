# Installs into the wrong path
#   winget install Maximus5.ConEmu --location C:\Programs\LibreOffice
winget install TheDocumentFoundation.LibreOffice --override "INSTALLLOCATION=C:\Programs\LibreOffice /quiet"

# TODO: The file name changes when a new version is released
. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "LibreOffice 7.4"
