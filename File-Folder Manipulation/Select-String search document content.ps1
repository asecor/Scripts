#for csv
$p = "C:\inetpub\logs\LogFiles"
get-childitem $p -recurse | Select-String -Pattern "search string" | export-csv l:\results.csv

#for txt
$p = "C:\inetpub\logs\LogFiles"
get-childitem $p -recurse | Select-String -Pattern "search string" | Format-List | 
out-string -width 500 | out-file L:\results.txt