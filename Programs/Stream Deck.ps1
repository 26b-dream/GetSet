# Download fails via winget
# Download fails via choco

$name = "Stream Deck"
$version = "6.0.1.17722"
$download_folder = "$env:USERPROFILE/Downloads/get_set/$name"
$url = "https://edge.elgato.com/egc/windows/sd/Stream_Deck_6.0.1.17722.msi"
$exe_path = "$download_folder/Stream_Deck_$version.msi"

# TODO: Downloading installer fails
. "$((get-item $PSScriptRoot).parent.FullName)\lib\download.ps1"
download $url $exe_path

#Incomplete stuff
. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Stream Deck"
