# For some reason /EditorOption=VisualStudioCode doesn't work using the command line, but it works when loading from the ini file
#   Example: winget install Git.Git --location C:\Programs\Git --override "/Dir=C:\Programs\Git /EditorOption=VisualStudioCode /Components=!ext\shellhere,!ext\guihere,ext,ext,gitlfs,assoc,assoc_sh" -i

winget install Git.Git --location C:\Programs\Git --override "/LOADINF=files\Git\install.inf /SILENT" -i
