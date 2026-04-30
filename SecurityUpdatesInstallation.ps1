Get-WindowsUpdate -Title "Security" -NotTitle "Preview" -NotCategory "Drivers" | Install-WindowsUpdate -AcceptAll -IgnoreReboot
