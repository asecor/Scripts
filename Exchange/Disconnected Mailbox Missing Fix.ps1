#If a mailbox was recently removed and not showing as a disconnected mailbox, use the below command to refresh the database.

Get-MailboxDatabase | Clean-MailboxDatabase