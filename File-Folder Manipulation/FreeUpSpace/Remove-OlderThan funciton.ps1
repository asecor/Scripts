Function Remove-OlderThanRecursive {

<#
.Synopsis
By Taylor Lee
Modified 05052018

.Description
This scripts function is to delete files and folders older than x days recursivley.

.Inputs
        Param (
      [Parameter(Mandatory=$true)]$Path,
      [Parameter(Mandatory=$true)]$Daysback 
          )

    Write-Host "WARNING, WWARNING, WARNING!!!"                                                                                                                      -Foregroundcolor red
    Write-Host "Did you use a negative value in the Daysback parameter? If not use Ctrl + C to abort the command"                                                   -ForegroundColor Yellow

    pause

    $CurrentDate = Get-Date
    $DatetoDelete = $CurrentDate.AddDays($Daysback)
    Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Confirm

.Example
 Delete-OlderThan -Path "C:\Folder" -DaysBack "-90" 
#>

    Param (
      [Parameter(Mandatory=$true)]$Path,
      [Parameter(Mandatory=$true)]$Daysback 
          )

    Write-Host "WARNING, WWARNING, WARNING!!!"                                                                                                                      -Foregroundcolor red
    Write-Host "Did you use a negative value in the Daysback parameter? If not use Ctrl + C to abort the command"                                                   -ForegroundColor Yellow

    pause

    $CurrentDate = Get-Date
    $DatetoDelete = $CurrentDate.AddDays($Daysback)
    Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Confirm

}