function Write-Log {

    param(
        [string]$Message
    )

    $logFolder = Join-Path $PSScriptRoot "..\logs"

    if (!(Test-Path $logFolder)) {
        New-Item $logFolder -ItemType Directory | Out-Null
    }

    $logFile = Join-Path $logFolder "log.txt"

    $time = Get-Date -Format "dd/MM/yyyy HH:mm:ss"

    Add-Content $logFile "[$time] $Message"

}