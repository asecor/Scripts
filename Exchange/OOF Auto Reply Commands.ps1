#commands run in exchange management shell



#Command schedules the auto-reply

Set-MailboxAutoReplyConfiguration -Identity MailboxAlias -AutoReplyState Scheduled -StartTime "5/28/2013 08:00:00" -EndTime "7/30/2013 17:00:00" -ExternalMessage "This is just a test of my auto-reply function." -Internalmessage "This is just a test of my auto-reply function."


#Enables Auto-Reply

Set-MailboxAutoReplyConfiguration -Identity MailboxAlias -AutoReplyState Enabled



#Disables Auto-Reply

Set-MailboxAutoReplyConfiguration -Identity MailboxAlias -AutoReplyState disabled


#Shows the auto-reply state

get-MailboxAutoReplyConfiguration -Identity MailboxAlias  