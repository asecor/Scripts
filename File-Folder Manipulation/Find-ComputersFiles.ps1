Function Find-ComputersFiles {
  
    <#
        .SYNOPSIS
        By Taylor Lee
        Modified 06232018
          
        .DESCRIPTION
        Discover queried files meeting a specific search parameter and output the findings to a spreadsheet.
          
        .INPUTS
        [CmdletBinding(SupportsShouldProcess)]   
            Param (
                #Variable containing computers being queried
                [Parameter(Position=0, Mandatory = $true)]$computers,
                #Variable containing output path for csv file
                [Parameter(Position=1, Mandatory = $true)]$csvout,
                #Variable specifying search parameter
                [Parameter(Position=2, Mandatory = $true)]$include,
                #Variable specifying search parameter
                [Parameter(Position=3)]$subfolder
                )
    
            #Supress Errors
            $ErrorActionPreference = 'SilentlyContinue'
    
            #Runs to find all files that match the query on all included computers and outputs the results to a CSV
            Get-Content $computers |
            ForEach-Object{Get-ChildItem "\\$_\c$\$subfolders" -Include $include -Recurse} |
            Select-Object Name,Directory,Length,LastAccessTime,LastWriteTime,CreationTime |
            Export-Csv $csvout -Append
    
            #Restores default error action of show
            $ErrorActionPreference = 'Continue'
                 
        .EXAMPLE
        find-computersfiles -computers C:\computers.txt -csvout c:\results.csv -include *.pst

        Searches computers listed in the text file for pst files and outputs the findings to a spreadsheet.
        (Computers should be seperated by line) 
                
        .EXAMPLE
        find-computersfiles -computers C:\computers.txt -csvout c:\results.csv -include *.pst -subfolder "users\username\appdata\local"

        Performs the same function as the first example, except it only searches the specified subfolder instead of the C: drive.
    
    #>
    
            [CmdletBinding(SupportsShouldProcess)]   
            Param (
                #Variable containing computers being queried
                [Parameter(Position=0, Mandatory = $true)]$computers,
                #Variable containing output path for csv file
                [Parameter(Position=1, Mandatory = $true)]$csvout,
                #Variable specifying search parameter
                [Parameter(Position=2, Mandatory = $true)]$include,
                #Variable specifying search parameter
                [Parameter(Position=3)]$subfolder
                )
    
            #Supress Errors
            $ErrorActionPreference = 'SilentlyContinue'
    
            #Runs to find all files that match the query on all included computers and outputs the results to a CSV
            Get-Content $computers |
            ForEach-Object{Get-ChildItem "\\$_\c$\$subfolders" -Include $include -Recurse} |
            Select-Object Name,Directory,Length,LastAccessTime,LastWriteTime,CreationTime |
            Export-Csv $csvout -Append
    
            #Restores default error action of show
            $ErrorActionPreference = 'Continue'
                           }