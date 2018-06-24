***Lists name and synopsis for all commands
Get-Command | Get-Help | Select-Object name, synopsis | Out-GridView
get-command | get-help | select name, synopsis | ogv