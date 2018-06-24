#Enable PSRemoting on remote PC and get list of printers
$computer = "computername"
get-ciminstance cim_printer -computer $computer | Select-Object Name, Drivername,Portname | Format-Table -autosize


