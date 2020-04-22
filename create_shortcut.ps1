$ErrorActionPreference = "Stop"

$src = Read-Host "Enter .sh path"
$name = $src.Split("/")[-1]

$shell = New-Object -ComObject WScript.Shell
$link = $shell.CreateShortcut("$home\$name.lnk")
$link.TargetPath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$link.Arguments = "-File $PSScriptRoot\runner.ps1 $src"
$link.IconLocation = "$PSScriptRoot\bash_icon.ico"
$link.Save()
