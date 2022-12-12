winget install Bitwarden.Bitwarden --location C:\Programs\Bitwarden

$shortcut = "$env:USERPROFILE\Desktop\Bitwarden.lnk" 
if (Test-Path $shortcut) {
    Remove-Item -Path $shortcut -Force
}
