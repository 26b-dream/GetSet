# TODO: This does not auto-update to major revisions
winget install Python.Python.3.11 --location "C:\Programs\Python"

# Remove Window's weird built in Python
Remove-Item $env:LOCALAPPDATA\Microsoft\WindowsApps\python.exe