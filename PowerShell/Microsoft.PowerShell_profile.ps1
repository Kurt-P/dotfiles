Invoke-Expression (& starship init powershell)
Import-Module posh-git
#Import-Module oh-my-posh
oh-my-posh init pwsh --config 'C:\Users\prud0042\AppData\Local\oh-my-posh\themes\cloud-context.omp.json' | Invoke-Expression
#Set-PoshPrompt -Theme cloud-context

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
