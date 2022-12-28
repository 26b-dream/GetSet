# Installs into the wrong path
#   winget install Maximus5.ConEmu --location C:\Programs\ConEmu
#   winget install Maximus5.ConEmu --override "TARGETDIR=C:\Programs\ConEmu"
#   winget install Maximus5.ConEmu --override "INSTALLLOCATION=C:\Programs\ConEmu"
#   winget install Maximus5.ConEmu --override "INSTALLDIR=C:\Programs\ConEmu"

# Use ConEmu's custom installer because it can set the install path
powershell -NoProfile -ExecutionPolicy RemoteSigned -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; set dst 'C:\Programs\ConEmu';  $FALSE; iex ((new-object net.webclient).DownloadString('https://conemu.github.io/install2.ps1'))"

# Because the installer is a little bit broken, a shortcut named "False" is created
. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "False"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\create_shortcut.ps1"
create_shortcut "C:\Programs\ConEmu\ConEmu64.exe" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\ConEmu.lnk"