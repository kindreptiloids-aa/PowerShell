Get-Volume | Where-Object DriveLetter | Select-Object DriveLetter, FileSystemLabel,
    @{Name='SizeGB'; Expression={[math]::Round($_.Size / 1GB, 2)}},
    @{Name='FreeGB'; Expression={[math]::Round($_.SizeRemaining / 1GB, 2)}},
    @{Name='FreePercent'; Expression={[math]::Round($_.SizeRemaining / $_.Size * 100, 1)}}
