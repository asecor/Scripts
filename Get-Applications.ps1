Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | 
Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | 
Sort-Object DisplayName | 
Format-Table –AutoSize