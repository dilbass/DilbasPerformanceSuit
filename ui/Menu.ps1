function Show-Menu {

    Write-Host ""

    Write-Host "======================================" -ForegroundColor Cyan
    Write-Host "      DILBAS PERFORMANCE SUITE"
    Write-Host "======================================" -ForegroundColor Cyan

    Write-Host ""

    Write-Host "[1] Modo Programacao"
    Write-Host "[2] Limpeza"
    Write-Host "[3] Monitor (Em breve)"
    Write-Host "[0] Sair"

    Write-Host ""

    $op = Read-Host "Escolha"

    switch ($op) {

        "1" {
            Start-DeveloperMode
        }

        "2" {
            Clear-TempFiles
        }

        "0" {
            return
        }

        default {
            Write-Host "Opcao invalida."
        }
    }
}