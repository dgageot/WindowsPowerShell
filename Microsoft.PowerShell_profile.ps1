#set-location $env:USERPROFILE/go/src/

$Shell = $Host.UI.RawUI
$Shell.WindowTitle="PowerShell"

Import-Module Go\*.psm1
Import-Module Prompt\*.psm1

#gogo pinata/v1/mac/resources/Windows
set-location $env:USERPROFILE/src/docker4windows-demo

Clear-Host