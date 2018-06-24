#Enable PSRemoting on local PC with no prompting
Enable-PSRemoting -force

#Enable PSRemoting on remote PC with no prompting
$computername = 'computername'
$Username = 'Domain\Username'
$password = 'Password'
psexec \\$ComputerName -s winrm.cmd quickconfig -q
psexec \\$computername -u $username -p $password powershell.exe cmd /c "enable-psremoting -force"

#Test PC is ready for psremoting
Test-WsMan $computername


