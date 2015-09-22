# Place at $ENV:USERPROFILE\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

function prompt {
	$path = Convert-Path .
if ($path -eq "C:\") {
	"PS $path >"
}
else {
	"PS ..\$(Split-Path $path -Leaf) >"
}
	$Host.UI.RawUI.WindowTitle = Get-Location
}

function touch {
	set-content -Path ($args[0]) -Value $null
}
