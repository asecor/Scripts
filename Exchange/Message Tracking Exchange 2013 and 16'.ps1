


Get-MessageTrackingLog -ResultSize 1000 -Start "5/01/2016 8:00AM" -End "5/18/2016 5:00PM" -Sender "john@doe.com" 

Get-MessageTrackingLog 
-Server servername.domain.com
-ResultSize 1000 
-Start "5/01/2016 8:00AM" 
-End "5/18/2016 5:00PM" 
-EventId "Fail" 
-Sender "john@doe.com" 
-Recipients "jane@doe.com" 
Pipe It>>>>> | select-Object Timestamp,Sender,Recipients,Directionality,MessageSubject,Source,EventID,TotalBytes,SourceContext,ServerIP,ClientHostName
Pipe It>>>>> | Export-CSV "c:\users\username\desktop\Transport Log.csv"



Get-MessageTrackingLog -ResultSize 1000 -Start "09/20/2017 8:00AM" -End "9/24/2017 5:00PM"  -Sender "john@doe.com" -messagesubject "Business Account" | 
select-object Timestamp,Sender,{$_.Recipients},Directionality,MessageSubject,Source,EventID,TotalBytes,SourceContext,ServerIP,ClientHostName | 
export-csv -path c:\users\username\desktop\transportlog.csv