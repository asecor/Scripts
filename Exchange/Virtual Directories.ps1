<#Get Virtual Directories
Get-PowerShellVirtualDirectory | fl internalurl,externalurl
Get-ActiveSyncVirtualDirectory | fl internalurl,externalurl
Get-WebServicesVirtualDirectory | fl internalurl,externalurl
Get-OwaVirtualDirectory | fl internalurl,externalurl
Get-AutodiscoverVirtualDirectory | fl internalurl,externalurl
Get-EcpVirtualDirectory | fl internalurl,externalurl
Get-OABvirtualDirectory | fl internalurl,externalurl
#>

<#Set Virtual Directories

###Set Activesync
Get-ActiveSyncVirtualDirectory -server servername | Set-ActiveSyncVirtualDirectory -Internalurl https://mail.domain.net/Microsoft-Server-ActiveSync -externalurl https://mail.domain.net/Microsoft-Server-ActiveSync

###Set Web Services
Get-WebServicesVirtualDirectory -server servername | Set-WebServicesVirtualDirectory -Internalurl https://mail.domain.net/ews/exchange.asmx -externalurl https://mail.domain.net/ews/exchange.asmx

###Set OWA
Get-OwaVirtualDirectory -server servername | Set-OwaVirtualDirectory -Internalurl https://mail.domain.net/owa -externalurl https://mail.domain.net/owa

###Set Autodiscover
Set-ClientAccessServer -Identity servername -AutoDiscoverServiceInternalUri https://mail.domain.net/Autodiscover/Autodiscover.xml 

Get-AutodiscoverVirtualDirectory -server servername | Set-AutodiscoverVirtualDirectory -Internalurl https://mail.domain.net/Autodiscover/Autodiscover.xml -externalurl https://mail.domain.net/Autodiscover/Autodiscover.xml

###Set Ecp
Get-EcpVirtualDirectory -server servername | Set-EcpVirtualDirectory -Internalurl https://mail.domain.net/ecp -externalurl https://mail.domain.net/ecp

###Set OAB
Get-OABvirtualDirectory -server servername | Set-OABvirtualDirectory -Internalurl https://mail.domain.net/oab -externalurl https://mail.domain.net/oab
#>