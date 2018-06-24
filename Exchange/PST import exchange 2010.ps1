New-MailboxImportRequest -FilePath "\\server\share\filename.pst" -Mailbox "john.smith" -TargetRootFolder "Office365Imported" -BadItemLimit 20000 -acceptlargedataloss

-v  use this switch if mailbox cannot be connected to when importing

Get-MailboxImportRequest

Get-MailboxImportRequest | Get-MailboxImportRequestStatistics

Get-MailboxImportRequest -Status Failed | Get-MailboxImportRequestStatistics -IncludeReport | Format-List > c:\AllImportReports.txt
 
Get-MailboxImportRequest | Where-Object {$_.status -eq "Completed"} | Remove-MailboxImportRequest

Get-MailboxImportRequest | Where-Object {$_.status -eq "Failed"} | Remove-MailboxImportRequest



