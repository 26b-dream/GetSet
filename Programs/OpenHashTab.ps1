# Installs with context menu entries
#   winget install namazso.OpenHashTab --location C:\Programs\OpenHashTab

# Does not install silently
#   winget install namazso.OpenHashTab --override "/SILENT /TASKS=myassociation /DIR=C:\Programs\OpenHashTab"
#   winget install namazso.OpenHashTab --override "/VERYSILENT /TASKS=myassociation /DIR=C:\Programs\OpenHashTab"
#   winget install namazso.OpenHashTab --override "/TASKS=myassociation /DIR=C:\Programs\OpenHashTab" --silent

# --architecture x64 makes installation silent
winget install namazso.OpenHashTab --override "/SILENT /TASKS=myassociation /DIR=C:\Programs\OpenHashTab" --architecture x64