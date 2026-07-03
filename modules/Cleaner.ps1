function Clear-TempFiles {

    Write-Host ""
    Write-Host "Limpando arquivos temporários..." -ForegroundColor Yellow

    Remove-Item "$env:TEMP\*" -Force -Recurse -ErrorAction SilentlyContinue

    Write-Host "OK!" -ForegroundColor Green

    Write-Log "Arquivos temporários removidos."

}