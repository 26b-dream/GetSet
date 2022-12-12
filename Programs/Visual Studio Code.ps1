winget install --id Microsoft.VisualStudioCode --silent --location "C:\Programs\Visual Studio Code"

winget install --id Microsoft.VisualStudioCode --override '/MERGETASKS=!runcode,addcontextmenufiles,addcontextmenufolders /DIR="C:\Programs\Visual Studio Code"'