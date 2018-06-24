#Working with Hash tables (good for creating custom tables)
$variable = @{name="name";Title="MVP";Computer="computer"}            Gives static values
$variable = @{name=whoami;Title="MVP";Computer=hostname}                 Gives dynamic values
$variable.add("number","281-297-2222")                                   Add value to a hash table
$variable.remove("name")                                                 Remove value from a hash table
$service = get-eventlog system -newest 100 | group source -ashashtable   Convert command output into a hash table
$variable.getenumerator() | sort name                                    Use enumeration to allow function to be applied to the hash table variable




<#Example for creating hash table from informatin gathered in a variable
 #Variables
        $SystemEnclosure = get-ciminstance win32_systemenclosure -computername $computer
        $OS = Get-CimInstance Win32_OperatingSystem -Computername $Computer
    
    
    #Creating Hash table from variables
        $PCInfo = @{
            Manufacturer=$SystemEnclosure.Manufacturer
            PCName=$OS.CSName
            OS=$OS.Caption
            Architecture=$OS.OSArchitecture
            AssetTag=$systemenclosure.serialnumber;
            OSVersion=$OS.Version
            InstallDate=$OS.InstallDates
            LastBootUpTime=$OS.LastBootUpTime
        } 
    
    #Display Hash Table
        $PCInfo.getenumerator() | Sort-Object -property name | Format-Table -autosize
#>


<#Example: Create a custom Hash Table from a run command
    #Display Drives
    Get-CimInstance win32_logicaldisk -filter "drivetype=3" -computer $computer |
    Format-Table -Property DeviceID,Volumename, `
        @{Name="SizeGB";Expression={[math]::Round($_.Size/1GB)}}, `
        @{Name="FreeGB";Expression={[math]::Round($_.Freespace/1GB,2)}}, `
        @{Name="PercentFree";Expression={[math]::Round(($_.Freespace/$_.size)*100,2)}}
#>