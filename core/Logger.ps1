function Write-AppLog {

    param(
        [string]$Message,
        [string]$Level = "INFO"
    )

    $logFolder = Join-Path $PSScriptRoot "..\logs"

    if (!(Test-Path $logFolder)) {
        New-Item -ItemType Directory -Path $logFolder | Out-Null
    }

    $logFile = Join-Path $logFolder "log.txt"

    $date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    Add-Content $logFile "[$date] [$Level] $Message"
}