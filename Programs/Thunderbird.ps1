# Installs into the wrong path
#   winget install Mozilla.ThunderBird --location "C:\Programs\ThunderBird" -i
winget install Mozilla.ThunderBird --override "INSTALL_DIRECTORY_PATH=C:\Programs\ThunderBird DESKTOP_SHORTCUT=False"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "SumatraPDF"
