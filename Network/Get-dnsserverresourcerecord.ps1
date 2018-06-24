#Get's DNS Records

#variables
$date= get-date -format m
$datepathdns = "C:\folder\$date dns.csv"

#Export Dns zone
$results = get-dnsserverresourcerecord -zonename dnszone.com -computername dnsserver |
select-object hostname,Recordtype,timestamp,@{n='IP';E={$_.recorddata.IPV4Address}} 
$results | export-csv "$datepathdns"