Search-ADAccount -AccountInactive -TimeSpan 90 -UsersOnly | Where-Object { $_.Enabled -eq $true } | sort-object name | Format-Table Name, lastlogondate, UserPrincipalName > c:\inactive.txt

