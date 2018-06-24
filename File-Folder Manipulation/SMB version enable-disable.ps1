####Managing SMB Versions

<#Server 2012 R2 & 2016
##SMB v1
#detect if enabled
Get-WindowsFeature FS-SMB1
#Enable and disable
Disable-WindowsOptionalFeature -Online -FeatureName smb1protocol
Enable-WindowsOptionalFeature -Online -FeatureName smb1protocol

##SMB v2/v3
#detect if enabled
Get-SmbServerConfiguration | Select EnableSMB2Protocol
#Enable and disable
Set-SmbServerConfiguration -EnableSMB2Protocol $false
Set-SmbServerConfiguration -EnableSMB2Protocol $true
#>

<#Windows 8.1 & 10
##SMB v1
#detect if enabled
Get-WindowsOptionalFeature –Online –FeatureName SMB1Protocol
#Enable and disable
Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol
Enable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol

##SMB v2/v3
#detect if enabled
Get-SmbServerConfiguration | Select EnableSMB2Protocol
#Enable and disable
Set-SmbServerConfiguration –EnableSMB2Protocol $false
Set-SmbServerConfiguration –EnableSMB2Protocol $true
#>

<#Windows 8 & Server 2012
##SMB v1
#detect if enabled
Get-SmbServerConfiguration | Select EnableSMB1Protocol
#Enable and disable
Set-SmbServerConfiguration -EnableSMB1Protocol $false
Set-SmbServerConfiguration -EnableSMB1Protocol $true

##SMB v2/v3
#detect if enabled
Get-SmbServerConfiguration | Select EnableSMB2Protocol
#Enable and disable
Set-SmbServerConfiguration -EnableSMB2Protocol $false
Set-SmbServerConfiguration -EnableSMB2Protocol $true
#>

<#Windows 7, vista, 2008 R2, and 2008
##SMB v1
#detect if enabled
Get-Item HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters | ForEach-Object {Get-ItemProperty $_.pspath}
#Disable
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB1 -Type DWORD -Value 0 –Force
#Enable
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB1 -Type DWORD -Value 1 –Force

##SMB v2/v3
#detect if enabled
Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters | ForEach-Object {Get-ItemProperty $_.pspath}
#Disable
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB2 -Type DWORD -Value 0 –Force
#Enable
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB2 -Type DWORD -Value 1 –Force
#>