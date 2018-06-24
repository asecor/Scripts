$computers = "pc1","pc2"
Get-CimInstance win32_logicaldisk -filter "drivetype=3" -computer $computers |
Format-Table -GroupBy PSComputername -Property DeviceID,Volumename, `
@{Name="SizeGB";Expression={[math]::Round($_.Size/1GB)}}, `
@{Name="FreeGB";Expression={[math]::Round($_.Freespace/1GB,2)}}, `
@{Name="PercentFree";Expression={[math]::Round(($_.Freespace/$_.size)*100,2)}}