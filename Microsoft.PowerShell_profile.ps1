$Shell = $Host.UI.RawUI
$Shell.WindowTitle="PowerShell"

$env:GOPATH="${env:USERPROFILE}\go"

Import-Module Go\*.psm1
Import-Module Prompt\*.psm1

gogo pinata/win

Clear-Host