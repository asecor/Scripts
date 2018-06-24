Get-User -RecipientTypeDetails UserMailbox | 
Where-Object {$_.UseraccountControl -like “*accountdisabled*”} | 
Export-Csv C:\disabledwmail.csv