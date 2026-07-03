. "$PSScriptRoot\modules\Logger.ps1"
. "$PSScriptRoot\modules\Cleaner.ps1"
. "$PSScriptRoot\modules\Utils.ps1"
. "$PSScriptRoot\modules\DeveloperMode.ps1"

Show-Title

Write-Host "1 - Modo Programação"
Write-Host "2 - Limpeza"

Write-Host ""

$opcao = Read-Host "Escolha"

switch($opcao){

    "1"{

        Start-DeveloperMode

    }

    "2"{

        Clear-TempFiles

    }

}