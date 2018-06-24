Function Get-PCInfo {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This scripts function returns useful informaion on any machine.
    
    .Inputs
        Param (
            $Computer
        )
    
    
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
            InstallDate=$OS.InstallDate
            LastBootUpTime=$OS.LastBootUpTime
        } 
    
    #Writing to Host
        Write-host " "
        Write-host "If not run on a Dell machine AssetTag is the Serial Number" -Foregroundcolor Yellow
        Write-host "Computer Info" -Foregroundcolor Cyan
    
    #Display Hash Table
        $PCInfo.getenumerator() | sort-object -property name | ft -autosize
    
    #Writing to Host
        Write-host "Computer Disk Info" -Foregroundcolor Cyan
    
    #Display Drives
        Get-CimInstance win32_logicaldisk -filter "drivetype=3" -computer $computer |
        Format-Table -Property DeviceID,Volumename, `
            @{Name="SizeGB";Expression={[math]::Round($_.Size/1GB)}}, `
            @{Name="FreeGB";Expression={[math]::Round($_.Freespace/1GB,2)}}, `
            @{Name="PercentFree";Expression={[math]::Round(($_.Freespace/$_.size)*100,2)}}
    
    #Writing to Host
        Write-host "Network Information" -Foregroundcolor Cyan
    
        Get-CimInstance win32_networkadapterconfiguration | where {$_.IPAddress -ne $null} | 
        select IPAddress,DefaultIPGateway,DNSServerSearchOrder,IPSubnet,MACAddress,Caption,DHCPEnabled,DHCPServer,DNSDomainSuffixSearchOrder | 
        fl
       
    .NOTES
    Requires latest powershell version

    .EXAMPLE
    Returns PCinfo for the local computer

    Get-PCinfo

    .EXAMPLE
    Returns PCinfo for a remote computer

    Get-PCinfo -computer PCName
    #>
        
    [CmdletBinding()]   
    
    #Prompts for Computer Name
        Param (
            $Computer
              )
    
    
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
            InstallDate=$OS.InstallDate
            LastBootUpTime=$OS.LastBootUpTime
        } 
    
    #Writing to Host
        Write-host " "
        Write-host "If not run on a Dell machine AssetTag is the Serial Number" -Foregroundcolor Yellow
        Write-host "Computer Info" -Foregroundcolor Cyan
    
    #Display Hash Table
        $PCInfo.getenumerator() | Sort-Object -property name | Format-Table -autosize
    
    #Writing to Host
        Write-host "Computer Disk Info" -Foregroundcolor Cyan
    
    #Display Drives
        Get-CimInstance win32_logicaldisk -filter "drivetype=3" -computer $computer |
        Format-Table -Property DeviceID,Volumename, `
            @{Name="SizeGB";Expression={[math]::Round($_.Size/1GB)}}, `
            @{Name="FreeGB";Expression={[math]::Round($_.Freespace/1GB,2)}}, `
            @{Name="PercentFree";Expression={[math]::Round(($_.Freespace/$_.size)*100,2)}}
    
    #Writing to Host
        Write-host "Network Information" -Foregroundcolor Cyan
    
        Get-CimInstance win32_networkadapterconfiguration -computer $computer | Where-Object {$_.IPAddress -ne $null} | 
        Select-Object IPAddress,DefaultIPGateway,DNSServerSearchOrder,IPSubnet,MACAddress,Caption,DHCPEnabled,DHCPServer,DNSDomainSuffixSearchOrder | 
        Format-List
    
    }