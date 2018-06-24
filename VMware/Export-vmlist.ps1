#Import module
import-module vmware.powercli

#variables
$date= get-date -format m
import-module vmware.powercli
$datepathhost = "Z:\folder\$date hosts.csv"
$datepathvms = "Z:\folder\$date vms.csv"
$Vcenter = "ip address"

#connect to vcenter
Connect-VIServer -Server $vcenter

#get's vm list
get-vm | select-object name,vmhost,@{N="IP Address";E={@($_.guest.IPAddress -join '|')}} | export-csv "$datepathvms"

#get vmhosts
Get-VMHost | Select-object Name,@{n="ManagementIP"; e={Get-VMHostNetworkAdapter -VMHost $_ -VMKernel |
Where-object {$_.ManagementTrafficEnabled} | ForEach-Object {$_.Ip}}} | export-csv "$datepathhost"