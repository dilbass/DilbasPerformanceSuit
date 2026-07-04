function Get-AppConfig {

    $configPath = Join-Path $PSScriptRoot "..\config\settings.json"

    if (!(Test-Path $configPath)) {
        throw "Arquivo settings.json não encontrado."
    }

    return Get-Content $configPath -Raw | ConvertFrom-Json
}