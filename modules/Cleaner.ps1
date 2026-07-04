function Clear-TempFiles {

    Write-Host ""
    Write-Host "Limpando arquivos temporários..." -ForegroundColor Yellow

    Remove-Item "$env:TEMP\*" -Force -Recurse -ErrorAction SilentlyContinue

    Write-Host "OK!" -ForegroundColor Green

    Write-AppLog "Arquivos temporários removidos."

}