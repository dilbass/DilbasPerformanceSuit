[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# =========================
# CORE
# =========================

. "$PSScriptRoot\core\Config.ps1"
. "$PSScriptRoot\core\Version.ps1"
. "$PSScriptRoot\core\Logger.ps1"
. "$PSScriptRoot\core\Bootstrap.ps1"

# =========================
# UI
# =========================

. "$PSScriptRoot\ui\Theme.ps1"
. "$PSScriptRoot\ui\Banner.ps1"
. "$PSScriptRoot\ui\Menu.ps1"

# =========================
# MODULES
# =========================

. "$PSScriptRoot\modules\Cleaner.ps1"
. "$PSScriptRoot\modules\DeveloperMode.ps1"

# =========================
# START
# =========================

Write-Status "Inicializando..." "INFO"

Start-Bootstrap

Write-Status "Sistema pronto." "SUCCESS"

Show-Banner
Show-Menu