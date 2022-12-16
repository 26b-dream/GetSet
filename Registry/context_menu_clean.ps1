# For some reason /f doesn't work sometimes so ECHO Y is used in this cases

# Use old context menu
# Source: https://answers.microsoft.com/en-us/windows/forum/all/restore-legacy-right-click-menu-for-file-explorer/a62e797c-eaf3-411b-aeec-e460e6e5a82a
REG ADD "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

# Remove Restore previous versions
# Source: https://www.elevenforum.com/t/add-or-remove-previous-versions-from-context-menu-and-properties-in-windows-11.9391/
REG DELETE "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
REG DELETE "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
REG DELETE "HKCR\Directory\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
REG DELETE "HKCR\Drive\shellex\ContextMenuHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
REG DELETE "HKCR\AllFilesystemObjects\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
REG DELETE "HKCR\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
REG DELETE "HKCR\Directory\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
REG DELETE "HKCR\Drive\shellex\PropertySheetHandlers\{596AB062-B4D2-4215-9F74-E9109B0A8153}" /f
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /f
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\PreviousVersions" /v "DisableLocalPage" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\PreviousVersions" /f
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "NoPreviousVersionsPage" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /f
REG DELETE "HKCU\Software\Policies\Microsoft\PreviousVersions" /v "DisableLocalPage" /f
REG ADD "HKCU\Software\Policies\Microsoft\PreviousVersions" /f

# Remove Include in library
# Source: https://www.tenforums.com/tutorials/37130-add-remove-include-library-context-menu-windows-10-a.html
Reg.exe delete "HKCR\Folder\ShellEx\ContextMenuHandlers\Library Location" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\Folder\ShellEx\ContextMenuHandlers\Library Location" /f

# Remove Pin to Quick Access
# Source: https://www.elevenforum.com/t/add-or-remove-pin-to-quick-access-context-menu-in-windows-11.2807/
REG DELETE "HKCR\AllFilesystemObjects\shell\pintohome" /f
REG DELETE "HKCR\Drive\shell\pintohome" /f
REG DELETE "HKCR\Folder\shell\pintohome" /f
REG DELETE "HKCR\Network\shell\pintohome" /f

# Remove "Give access to"
# Source: https://www.tenforums.com/tutorials/46888-give-access-context-menu-add-remove-windows-10-a.html
REG DELETE "HKCR\*\shellex\ContextMenuHandlers\Sharing" /f
REG DELETE "HKCR\Directory\Background\shellex\ContextMenuHandlers\Sharing" /f
REG DELETE "HKCR\Directory\shellex\ContextMenuHandlers\Sharing" /f
REG DELETE "HKCR\Drive\shellex\ContextMenuHandlers\Sharing" /f
REG DELETE "HKCR\LibraryFolder\background\shellex\ContextMenuHandlers\Sharing" /f
REG DELETE "HKCR\UserLibraryFolder\shellex\ContextMenuHandlers\Sharing" /f

# Remove "Customize this folder..."
# Source: https://www.askvg.com/windows-tip-remove-customize-this-folder-option-from-context-menu/
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoCustomizeThisFolder" /t REG_DWORD /d "1" /f

# Remove "Print"
# Source: https://winaero.com/remove-print-context-menu-in-windows-10/
ECHO Y | REG ADD "HKCR\SystemFileAssociations\image\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\batfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\cmdfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\docxfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\fonfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\htmlfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\inffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\inifile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\JSEFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\otffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\pfmfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\regfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\rtffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\ttcfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\ttffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\txtfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\VBEFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\VBSFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
ECHO Y | REG ADD "HKCR\WSFFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f

# Remove "Scan with Microsoft Defender"
# Source: https://www.tenforums.com/tutorials/18145-add-remove-scan-microsoft-defender-context-menu-windows-10-a.html
REG DELETE "HKCR\*\shellex\ContextMenuHandlers\EPP" /f
REG DELETE "HKCR\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}" /f
REG DELETE "HKCR\Directory\shellex\ContextMenuHandlers\EPP" /f
REG DELETE "HKCR\Drive\shellex\ContextMenuHandlers\EPP" /f

# Remove "Send to"
# Source: https://www.howtogeek.com/howto/windows-vista/disable-the-send-to-folder-on-the-windows-explorer-context-menu/
ECHO Y | REG ADD "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\SendTo" /ve /t REG_SZ /d "" /f

# Remove "Open in Terminal"
# Source: https://www.elevenforum.com/t/add-or-remove-open-in-windows-terminal-context-menu-in-windows-11.2479/
ECHO Y | REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /v "{9F156763-7844-4DC4-B2B1-901F640F5155}" /t REG_SZ /d "" /f


# Remove "Share"
# Source: https://www.tenforums.com/tutorials/73630-how-add-remove-share-context-menu-windows-10-a.html
REG DELETE "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\ModernSharing" /f