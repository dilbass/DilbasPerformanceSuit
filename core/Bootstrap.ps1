function Start-Bootstrap {

    Write-Host ""
    Write-Host "Inicializando Dilbas Performance Suite..." -ForegroundColor Cyan
    Write-Host ""

    $Global:Config = Get-AppConfig
    $Global:Version = Get-AppVersion

    Import-ApplicationModules

    Write-AppLog "Sistema inicializado."

}