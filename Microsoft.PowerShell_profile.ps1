$Shell = $Host.UI.RawUI
$Shell.WindowTitle="PowerShell"

Import-Module Misc\*.psm1
Import-Module Git\*.psm1
Import-Module Go\*.psm1
Import-Module Prompt\*.psm1
Import-Module Secret\*.psm1

gogo pinata/win

Clear-Host