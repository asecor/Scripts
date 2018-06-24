Set-TransportConfig -MaxSendSize 30MB -MaxReceiveSize 50MB

get-transportconfig | Format-Table maxsendsize, maxreceivesize 
get-receiveconnector | Format-Table name, maxmessagesize 
get-sendconnector | Format-Table name, maxmessagesize 
get-mailbox Administrator | Format-Table Name, Maxsendsize, maxreceivesize