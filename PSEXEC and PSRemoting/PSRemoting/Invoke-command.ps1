#send single command to remote PC
Invoke-command -computername $computername -scriptblock {$command} | out-file c:\test.txt

#send single command to exisitng pssession
Invoke-Command -Session EnterPSSessionID -ScriptBlock {$command} | out-file c:\test.txt

#run a script on remote session
Invoke-Command -filepath \\share\folder\filename -computername $computername


#Load computers into a session variable from a text file. For running a script against all computers
$Computers = get-content c:\folder\filename.txt | New-Pssession -credential domain\username
Invoke-Command -filepath \\share\folder\filenam.ps1 -computername $computers

#Run a script against multiple sessions
$computers1 = new-pssession -computername "computer1","computer2","computer3" -credential domain\username
$computers2 = new-pssession -computername "computer4","computer5","computer6" -credential domain\username
$allcomputers = Get-PSSession
invoke-command -session $allcomputers -filepath \\share\folder\filename.ps1

#Use the -AsJob for scripts that are run against many computers and to view the result of all locally
$computers1 = new-pssession -computername "computer1","computer2","computer3" -credential domain\username
$computers2 = new-pssession -computername "computer4","computer5","computer6" -credential domain\username
$allcomputers = Get-PSSession
invoke-command -session $allcomputers -filepath \\share\folder\filename.ps1 -AsJob | Tee-Object -variable JobName

#return job status
$JobName

#Return Job Count
$jobName.Count

#return job status for all computers run against
$jobname.ChildJobs

#return results of job and keep it
$jobresult = receive-job $jobname -keep 

#Delete a job or all jobs
remove-job -name JobName
get-job | remove-job
