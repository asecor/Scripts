Function Get-FolderSize {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 06232018
        
    .DESCRIPTION
    Quckly Finds the size of a single folder
        
    .INPUTS
    [CmdletBinding(SupportsShouldProcess)]   
    Param (
        [Parameter(Position=0, Mandatory = $true)]$Folder,
        [Parameter(Position=1)]$ByteSize
           )
                    
    if ($ByteSize -eq 'MB'){ 
        "{0:N2} MB" -f ((Get-ChildItem $Folder -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1MB)
    } elseif ($ByteSize -eq 'GB') {
        "{0:N2} GB" -f ((Get-ChildItem $Folder -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1GB)
    } elseif ($ByteSize -eq 'TB') {
        "{0:N2} TB" -f ((Get-ChildItem $Folder -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1TB)
    } else {
        "{0:N2} MB" -f ((Get-ChildItem $Folder -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1MB)
    }
        
                
    .EXAMPLE
    Get-Foldersize -Folder c:\users\ -ByteSize MB

    Finds the size of the C:\users folder in MegaBytes
    
    .EXAMPLE
    Get-Foldersize -Folder c:\users\ -ByteSize GB

    Finds the size of the C:\users folder in GigaBytes

    .EXAMPLE
    Get-Foldersize -Folder c:\users\ -ByteSize TB

    Finds the size of the C:\users folder in TeraBytes
    
    #>
        
    [CmdletBinding(SupportsShouldProcess)]   
    Param (
        [Parameter(Position = 0, Mandatory = $true)]$Folder,
        [Parameter(Position = 1)]$ByteSize
    )
                    
    if ($ByteSize -eq 'MB') { 
        "{0:N2} MB" -f ((Get-ChildItem $Folder -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1MB)
    }
    elseif ($ByteSize -eq 'GB') {
        "{0:N2} GB" -f ((Get-ChildItem $Folder -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1GB)
    }
    elseif ($ByteSize -eq 'TB') {
        "{0:N2} TB" -f ((Get-ChildItem $Folder -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1TB)
    }
    else {
        "{0:N2} MB" -f ((Get-ChildItem $Folder -Recurse | Measure-Object -Property Length -Sum -ErrorAction Stop).Sum / 1MB)
    }
}