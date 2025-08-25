# AdminCheckAndIPConfig.ps1

# Check if running as Administrator
If (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    # Relaunch the script with elevated privileges
    Start-Process powershell "-File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Now running as Administrator
Write-Host "Running as Administrator..."
ipconfig

Read-Host -Prompt "Press Enter to exit"
