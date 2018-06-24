#Group outputs from multiple PC's seperately
$computers = "pc1","pc2"
Get-CimInstance win32_logicaldisk -filter "drivetype=3" -computer $computers |
Format-Table -GroupBy PSComputername -Property DeviceID,Volumename, `
@{Name="SizeGB";Expression={[math]::Round($_.Size/1GB)}}, `
@{Name="FreeGB";Expression={[math]::Round($_.Freespace/1GB,2)}}, `
@{Name="PercentFree";Expression={[math]::Round(($_.Freespace/$_.size)*100,2)}}

#Autosize Table
Command | Format-Table -Autosize

#Organize a list output into a table with selected columns
Get-Process | ft -propert ID,Name,VM