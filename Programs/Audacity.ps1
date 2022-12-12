winget install Audacity.Audacity --location C:\Programs\Audacity

#Requires -RunAsAdministrator
# Shortcut cannot be removed unless run as administrator
Remove-Item -Path C:\Users\Public\Desktop\Audacity.lnk -Force
