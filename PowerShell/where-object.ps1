###Filter for specific output

#Filter for simple value
get-service | Where-object name -eq ALG

#Filters for multiple parameters
Get-service | where-object {($_.Name -notlike "Microsoft*" -and $_.Name -notlike "PS*") -and $_.Status -eq "running"}  | Sort-Object name

#How to work with null values
Where-Object {$_.IPAddress -ne $null}

### Conditional parameters and what they represent. More exist use "get-help where-object" to find those
-like               like
-notlike            notlike
-eq                 equal
-ne                 not equal
-gt                 greater than
-lt                 less than
-ge                 greater than or equal
-le                 less than or equal
    
#Use Where to remove null returned items
Get-CimInstance win32_networkadapterconfiguration | Where-Object {$_.IPAddress -ne $null} | Select-Object * | Format-List