function Import-ApplicationModules {

    $folders = @(
        (Join-Path $PSScriptRoot "..\modules"),
        (Join-Path $PSScriptRoot "..\ui")
    )

    foreach ($folder in $folders) {

        if (!(Test-Path $folder)) {
            continue
        }

        Get-ChildItem $folder -Filter "*.ps1" | ForEach-Object {

            try {

                . $_.FullName

                Write-Host "✔ $($_.BaseName)" -ForegroundColor Green
                Write-AppLog "Módulo carregado: $($_.BaseName)"

            }
            catch {

                Write-Host "✖ $($_.BaseName)" -ForegroundColor Red
                Write-AppLog "Erro ao carregar $($_.BaseName): $_" "ERROR"

            }

        }

    }

}