#Checks IIS logging
#for csv
$p = "C:\inetpub\logs\LogFiles"
get-childitem $p -recurse | Select-String -Pattern "IP Address or other query string" | export-csv L:\results.csv

#for txt
$p = "C:\inetpub\logs\LogFiles"
get-childitem $p -recurse | Select-String -Pattern "IP Address or other query string" | Format-List | 
out-string -width 500 | out-file L:\results.txt
