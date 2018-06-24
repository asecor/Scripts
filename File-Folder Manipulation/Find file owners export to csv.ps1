PARAM (
  $Path = 'D:\',
  $report = 'C:\test.csv'
)
$LastWrite = @{
  Name = 'Last Write Time'
  Expression = { $_.LastWriteTime.ToString('u') }
}
$Owner = @{
  Name = 'File Owner'
  Expression = { (Get-Acl $_.FullName).Owner }
}
$HostName = @{
  Name = 'Host Name'
  Expression = { $env:COMPUTERNAME }
}

Get-ChildItem -Recurse -Path $Path | 
              Select-Object $HostName, $Owner, Name, Directory, $LastWrite, Length   | 
              Export-Csv -NoTypeInformation $Report