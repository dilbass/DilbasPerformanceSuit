function Get-AppVersion {

    $path = Join-Path $PSScriptRoot "..\config\version.json"

    return Get-Content $path -Raw | ConvertFrom-Json

}