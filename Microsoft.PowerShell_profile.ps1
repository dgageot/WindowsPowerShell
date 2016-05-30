$Shell = $Host.UI.RawUI
$Shell.WindowTitle="PowerShell"

$size = $Shell.WindowSize
$size.Width = 120
$size.Height = 30
$Shell.WindowSize = $size

Import-Module Misc\*.psm1
Import-Module Git\*.psm1
Import-Module Go\*.psm1
Import-Module Prompt\*.psm1
Import-Module Secret\*.psm1

gogo pinata/win

Clear-Host