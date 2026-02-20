# Override locale in power
[System.Threading.Thread]::CurrentThread.CurrentCulture = New-Object System.Globalization.CultureInfo("en-CA")
[System.Threading.Thread]::CurrentThread.CurrentUICulture = New-Object System.Globalization.CultureInfo("en-CA")
# [System.Globalization.CultureInfo]::DefaultThreadCurrentUICulture = [System.Globalization.CultureInfo]::CreateSpecificCulture("en")
# [System.Globalization.CultureInfo]::DefaultThreadCurrentCulture = [System.Globalization.CultureInfo]::CreateSpecificCulture("en")

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -ShowToolTips
