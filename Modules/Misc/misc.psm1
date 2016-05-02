# Install-Module PSReadLine
if ($host.Name -eq 'ConsoleHost') {
    Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
    Set-PSReadlineKeyHandler -Key Ctrl+k -Function ClearScreen
}

function open([string]$target = ".") {
    Start-Process -NoNewWindow powershell.exe -ArgumentList "-NoProfile -NonInteractive ii $target"
}

function lock {
 $signature = @"  
    [DllImport("user32.dll", SetLastError = true)]  
    public static extern bool LockWorkStation();  
"@  
    $LockWorkStation = Add-Type -memberDefinition $signature -name "Win32LockWorkStation" -namespace Win32Functions -passthru  
    $LockWorkStation::LockWorkStation()|Out-Null
}

function Edit-Profile {
    & ii $PROFILE
}
Set-Alias ep Edit-Profile

function which($name) { Get-Command $name | Select-Object Definition }
function rmrf($item) { Remove-Item $item -Recurse -Force }
function touch($file) { "" | Out-File $file -Encoding ASCII }
Set-Alias vi vim
