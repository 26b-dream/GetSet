winget install clsid2.mpc-hc --location "C:\Programs\MPC-HC"

# Because the installer is a little bit broken the shortcut will be caleld False instead of actually not created
. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "MPC-HC x64"
