
# config file for PowerShell 7

# In case there Terminal Icons is not available install with Install-Module
# Terminal Icons
# Import-Module Terminal-Icons
# Import-Module -Name Microsoft.PowerShell.Management, PackageManagement, Appx -UseWindowsPowerShell

# Command Utility
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function quit { exit }

# Aliases
Set-Alias q quit
Set-Alias ll ls
Set-Alias cat type
Set-Alias grep findstr
Set-Alias zip Compress-Archive
Set-Alias unzip Expand-Archive

