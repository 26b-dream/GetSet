winget install SumatraPDF.SumatraPDF --location "C:\Programs\Sumatra PDF"

. "$((get-item $PSScriptRoot).parent.FullName)\lib\delete_shortcut.ps1"
delete_shortcut "SumatraPDF"
