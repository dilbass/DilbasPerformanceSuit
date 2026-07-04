function Show-Banner {

    Clear-Host

    $version = Get-AppVersion

    Write-Host ""
    Write-Host "==============================================" -ForegroundColor Cyan
    Write-Host "      DILBAS PERFORMANCE SUITE" -ForegroundColor Green
    Write-Host "          Versão $($version.Version)" -ForegroundColor Yellow
    Write-Host "==============================================" -ForegroundColor Cyan
    Write-Host ""

}