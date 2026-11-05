# need edit $profile in pwsh


# alias
function Get-GitCommitMessage { git commit -m $args }
New-Alias -Name gcm -Value Get-GitCommitMessage -Force -Option AllScope
function Get-GitAddAll { git add --all $args }
New-Alias -Name gaa -Value Get-GitAddAll -Force -Option AllScope
# cc
function Claude-Code { claude $args }
New-Alias -Name cc -Value Claude-Code -Force -Option AllScope


# init

# 1. starship
Invoke-Expression (&starship init powershell | Out-String)
# 2. mise
(&mise activate pwsh) | Out-String | Invoke-Expression
