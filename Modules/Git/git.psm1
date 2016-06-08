New-Item -ItemType SymbolicLink -Path $env:USERPROFILE -Name .gitconfig -Target "$env:USERPROFILE\Documents\WindowsPowerShell\git\gitconfig.symlink" -Force
New-Item -ItemType SymbolicLink -Path $env:USERPROFILE -Name .gitignore -Target "$env:USERPROFILE\Documents\WindowsPowerShell\git\gitignore.symlink" -Force

. 'C:\tools\poshgit\dahlbyk-posh-git-19f3f2e\profile.example.ps1'
