# Installer has no GUI and no method to modify install path
winget install Twilio.Authy --location C:\Programs\Authy -i

# Because the installer is a little bit broken the shortcut will be caleld False instead of actually not created
. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "Authy Desktop"
