#Enter powershell remoting session on a workstation
enter-pssession -ComputerName $computername -Credential domain\username 


#Create a session for invoking commands without typing the PC name every time
$session = new-pssession -ComputerName $computername -Credential domain\username 

#Invoke command against all PSSessions
$all = get-pssession
inoke-command {hostname} -session $all

#List active PSSessions
Get-PSSession

#Exit all PSSessions
Get-PSSession | Remove-PSSession

#Ends the sessions as opposed to just exiting it
remove-PSSession

#exits and ends powershell session on a workstation
exit-pssession

#disconnect from a pssession but keep it online
Disconnect-PSSession

