Function Get-FolderSize {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 06232018
        
    .DESCRIPTION
    Quckly Finds the size of a single folder
        
    .INPUTS
    <Inputs if any, otherwise state None>
        
                
    .EXAMPLE
    Get-Foldersize -Folder c:\users\

    Finds the size of the C:\users folder    
    
    #>
        
    [CmdletBinding()]   
    Param (
        [Parameter(Position=0, Mandatory = $true)]$Folder
           )
                    
      
    "{0:N2} MB" -f ((Get-ChildItem $Folder -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1MB)

                        }

