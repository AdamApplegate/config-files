$exports = @{
    Discord         = './exports/export-discord.ps1';
    FancyWM         = './exports/export-fancywm.ps1';
    Git             = './exports/export-git.ps1';
    Omp             = './exports/export-omp.ps1';
    Powershell      = './exports/export-powershell.ps1';
    Spotify         = './exports/export-spotify.ps1';
    Vim             = './exports/export-vim.ps1';
    Vscode          = './exports/export-vscode.ps1';
    WindowsTerminal = './exports/export-windows-terminal.ps1';
}

Write-Host "Config files available to export are: All, Discord, FancyWM (fwm) Git, Oh My Posh (omp), Powershell, Spotify, Vim, Vscode, & Windows Terminal."
$selection = Read-Host "Which files would you like to export? "

if ($selection.toLower() -eq 'all') {
    Write-Host "Exporting all configuration files..." -ForegroundColor Yellow
    foreach ($key in $exports.keys) {
        Invoke-Expression $exports[$key]  | Out-Null
    }
}
if ($selection.toLower() -eq 'discord') {
    Write-Host "Exporting BetterDiscord themes..." -ForegroundColor Yellow
    Invoke-Expression $exports.Discord | Out-Null
}
if ($selection.toLower() -eq 'fancywm' -or $selection.toLower() -eq 'fwm') {
    Write-Host "Exporting Fancy Window Manager settings..." -ForegroundColor Yellow
    Invoke-Expression $exports.FancyWM | Out-Null
}
if ($selection.toLower() -eq 'git') {
    Write-Host "Exporting Git configuration files..." -ForegroundColor Yellow
    Invoke-Expression $exports.Git | Out-Null
}
if ($selection.toLower() -eq 'oh my posh' -or $selection.toLower() -eq 'omp') {
    Write-Host "Exporting Oh My Posh themes..." -ForegroundColor Yellow
    Invoke-Expression $exports.Omp | Out-Null
}
if ($selection.toLower() -eq 'powershell' -or $selection.toLower() -eq 'pwsh') {
    Write-Host "Exporting Powershell profiles..." -ForegroundColor Yellow
    Invoke-Expression $exports.Powershell | Out-Null
}
if ($selection.toLower() -eq 'spotify') {
    Write-Host "Exporting Spicetify themes..." -ForegroundColor Yellow
    Invoke-Expression $exports.Spotify | Out-Null
}
if ($selection.toLower() -eq 'vim' -or $selection.toLower() -eq 'nvim') {
    Write-Host "Exporting nvim configuration files..." -ForegroundColor Yellow
    Invoke-Expression $exports.Vim | Out-Null
}
if ($selection.toLower() -eq 'vscode') {
    Write-Host "Exporting VS Code configuration files..." -ForegroundColor Yellow
    Invoke-Expression $exports.Vscode | Out-Null
}
if ($selection.toLower() -eq 'windows terminal' -or $selection.toLower() -eq 'wt') {
    Write-Host "Exporting Windows Terminal configuration files..." -ForegroundColor Yellow
    Invoke-Expression $exports.WindowsTerminal | Out-Null
}

Write-Host "Configuration files exported." -ForegroundColor Green
