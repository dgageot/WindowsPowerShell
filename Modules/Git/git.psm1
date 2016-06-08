New-Item -ItemType SymbolicLink -Path $env:USERPROFILE -Name .gitconfig -Target "$env:USERPROFILE\Documents\WindowsPowerShell\git\gitconfig.symlink" -Force
New-Item -ItemType SymbolicLink -Path $env:USERPROFILE -Name .gitignore -Target "$env:USERPROFILE\Documents\WindowsPowerShell\git\gitignore.symlink" -Force

if(Test-Path Function:\Prompt) {Rename-Item Function:\Prompt PrePoshGitPrompt -Force}

. 'C:\tools\poshgit\dahlbyk-posh-git-19f3f2e\profile.example.ps1'

Rename-Item Function:\Prompt PoshGitPrompt -Force
function Prompt() {if(Test-Path Function:\PrePoshGitPrompt){++$global:poshScope; New-Item function:\script:Write-host -value "param([object] `$object, `$backgroundColor, `$foregroundColor, [switch] `$nonewline) " -Force | Out-Null;$private:p = PrePoshGitPrompt; if(--$global:poshScope -eq 0) {Remove-Item function:\Write-Host -Force}}PoshGitPrompt}
