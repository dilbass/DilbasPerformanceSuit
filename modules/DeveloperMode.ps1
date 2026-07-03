function Start-DeveloperMode {

    Write-Host ""
    Write-Host "Entrando no modo programação..." -ForegroundColor Cyan

    $settings = Get-Content "$PSScriptRoot\..\config\settings.json" | ConvertFrom-Json

    if($settings.CloseSteam){

        Stop-Process -Name steam -Force -ErrorAction SilentlyContinue

        Write-Host "Steam fechado."

        Write-Log "Steam encerrado."

    }

    if($settings.CloseDiscord){

        Stop-Process -Name discord -Force -ErrorAction SilentlyContinue

        Write-Host "Discord fechado."

        Write-Log "Discord encerrado."

    }

    Clear-TempFiles

}