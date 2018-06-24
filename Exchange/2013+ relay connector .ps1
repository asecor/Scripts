#http://exchangeserverpro.com/exchange-2013-configure-smtp-relay-connector/

Get-ReceiveConnector "Relay Name" | 
Add-ADPermission -User 'NT AUTHORITY\Anonymous Logon' -ExtendedRights MS-Exch-SMTP-Accept-Any-Recipient