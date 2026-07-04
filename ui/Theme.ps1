function Write-Status {

    param(
        [string]$Message,
        [ValidateSet("SUCCESS", "INFO", "WARNING", "ERROR")]
        [string]$Type = "INFO"
    )

    switch ($Type) {

        "SUCCESS" {
            Write-Host "✔ $Message" -ForegroundColor Green
        }

        "INFO" {
            Write-Host "ℹ $Message" -ForegroundColor Cyan
        }

        "WARNING" {
            Write-Host "⚠ $Message" -ForegroundColor Yellow
        }

        "ERROR" {
            Write-Host "✖ $Message" -ForegroundColor Red
        }

    }

}