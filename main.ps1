[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$OutputEncoding = [System.Text.Encoding]::UTF8

. "$PSScriptRoot\core\Config.ps1"
. "$PSScriptRoot\core\Version.ps1"
. "$PSScriptRoot\core\Logger.ps1"
. "$PSScriptRoot\core\ModuleLoader.ps1"
. "$PSScriptRoot\core\Bootstrap.ps1"

Start-Bootstrap

Show-Title

Show-Menu