# Does not set default editor correctly
#   winget install Git.Git --location C:\Programs\Git --override "/Dir=C:\Programs\Git /EditorOption=VisualStudioCode /Components=!ext\shellhere,!ext\guihere,ext,ext,gitlfs,assoc,assoc_sh"

winget install Git.Git --location C:\Programs\Git --override "/LOADINF=files\Git\install.inf /SILENT" -i
