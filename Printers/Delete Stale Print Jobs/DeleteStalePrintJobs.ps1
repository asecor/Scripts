$Printer = ".+"
$Age = 15

$PrintJobs = Get-WmiObject -class "Win32_PrintJob" | Where-Object {($_.Name -match "$Printer") -and ([System.Management.ManagementDateTimeConverter]::ToDateTime($_.TimeSubmitted) -lt $($(Get-Date).addMinutes(-$Age)))}

foreach ($job in $PrintJobs){
    $job.Delete()
}