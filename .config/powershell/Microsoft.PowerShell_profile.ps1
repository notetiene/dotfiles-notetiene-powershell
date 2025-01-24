# Override locale in power
[System.Globalization.CultureInfo]::DefaultThreadCurrentUICulture = [System.Globalization.CultureInfo]::CreateSpecificCulture("fr-CA")
[System.Globalization.CultureInfo]::DefaultThreadCurrentCulture = [System.Globalization.CultureInfo]::CreateSpecificCulture("fr-CA")

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -ShowToolTips

# Reload the shell
Set-Alias reload Reload-Powershell

# http://xkcd.com/530/
Set-Alias mute Set-SoundMute
Set-Alias unmute Set-SoundUnmute

# Update installed Ruby Gems, NPM, and their installed packages.
Set-Alias update System-Update

# Just in case ImageMagick import-im6.q16 is on the system.  It might
# freeze the session if used with application policies (e.f. loading
# ps1 file in ImageMagick)
Set-Alias import "import"

$env:PWSH_MODULES = @(
    "ExchangeOnlineManagement",
    "Microsoft.PowerShell.ConsoleGuiTools",
    "PowerShellGet",
    "PSWSMan"
    # sudo pwsh -Command 'Install-WSMan'
)

function Setup-Install-Modules {
    foreach ($module in $env:PWSH_MODULES -split ' ') {
        Write-Host "Installing $module " -ForegroundColor Green
        Install-Module $module -Confirm:$False -Force
    }
}
