#export data to csv
get-service | export-csv -path z:\test.csv

#export string data in csv
get-service | Select Name,{$_.RequiredServices} | export-csv -path z:\test.csv