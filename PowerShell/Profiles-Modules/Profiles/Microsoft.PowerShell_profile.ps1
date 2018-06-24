#This is the message presented when opening Powershell

Write-Host "Admin Toolbox By Taylor Lee"                                                             -Foregroundcolor Green -Backgroundcolor black
Write-Host "Modified 06232018"                                                                       -Foregroundcolor Green -Backgroundcolor black
Write-Host "Use Get-Info to see a list of Commands"                                                  -Foregroundcolor Yellow -Backgroundcolor black
Write-Host "Use Get-Common to see a list of existing commonly used functions"                        -Foregroundcolor Yellow -Backgroundcolor black
Write-Host "Use added functions at your own risk"                                                    -Foregroundcolor Red -Backgroundcolor black

#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-Info {

    <#
    .Synopsis
    By Taylor Lee
    Modified 06232018
    
    .Description
    Just a Functions list for the Powershell Profile
    #>
    
        Write-Host " "
        Write-Host "Some of the commands provided require certain prerequisites."                                -Foregroundcolor Green
        Write-Host "Use Get-Help <Command> -full to discover if any prerequisites exist for the given command"   -Foregroundcolor Green
        Write-Host "Make sure you are using the latest version of powershell."                                   -Foregroundcolor Green
        Write-Host "Update-Powershell will open the default browser and website for updating Powershell"         -Foregroundcolor Yellow
        Write-Host " "
        pause
        Write-Host "Active Directoy Commands"                                                                  -Foregroundcolor Cyan
        Write-Host "Disable-Account            ..Disables a specified AD Account"                              -Foregroundcolor Yellow
        Write-Host "Enable-Account             ..Enables a specified AD Account"                               -Foregroundcolor Yellow
        Write-Host "Get-LockedAccounts         ..Gets locked AD accounts"                                      -Foregroundcolor Yellow
        Write-Host "Get-PasswordExpired        ..Gets AD accounts with Expired Passwords"                      -Foregroundcolor Yellow
        Write-Host "Get-UserReport             ..Gets a Report of AD Users"                                    -Foregroundcolor Yellow
        Write-Host "Set-Password               ..Sets an AD Password"                                          -Foregroundcolor Yellow
        Write-Host "Unlock-Account             ..Unlocks an AD account"                                        -Foregroundcolor Yellow
        Write-Host " "
        Write-Host "Azure Active Directoy Commands"                                                            -Foregroundcolor Cyan
        Write-Host "Connect-Azure              ..Connects to Azure AD"                                         -Foregroundcolor Yellow
        Write-Host "Get-AzureHelp              ..Get's Commands for Azure AD"                                  -Foregroundcolor Yellow
        Write-Host "Install-AzureModule        ..Installs the Azure AD Module"                                 -Foregroundcolor Yellow
        Write-Host "Start-AzureSync            ..Starts an Azure AD and Local AD Sync"                         -Foregroundcolor Yellow
        Write-Host " " 
        Write-Host "Endpoint Management Commands"                                                              -Foregroundcolor Cyan
        Write-Host "Add-LocalAdmin             ..Adds a local admin to the endpoint"                           -Foregroundcolor Yellow
        Write-Host "Disable-ShakeToMinimize    ..Disables Annoying Shake to Minimize"                          -Foregroundcolor Yellow
        Write-Host "Disable-Sleep              ..Disables Hibernate and Sleep"                                 -Foregroundcolor Yellow
        Write-Host "Disable-UAC                ..Disables UAC"                                                 -Foregroundcolor Yellow
        Write-Host "Disable-Updates            ..Disables Automatic Updates"                                   -Foregroundcolor Yellow
        Write-Host "Enable-Remoting            ..Enables PSRemoting"                                           -Foregroundcolor Yellow
        Write-Host "Enable-UAC                 ..Enables UAC"                                                  -Foregroundcolor Yellow
        Write-Host "Get-Applications           ..Gets a list of installed Applications"                        -Foregroundcolor Yellow   
        Write-Host "Get-Management             ..Gets Computer Management for another endpoint"                -Foregroundcolor Yellow
        Write-Host "Get-NetworkStatistics      ..Gets active connections and associated Netstats"              -Foregroundcolor Yellow
        Write-Host "Remove-AppName             ..Remove application matching specified name"                   -Foregroundcolor yellow
        Write-Host "Remove-AppNameLike         ..Remove application like specified name"                       -Foregroundcolor yellow
        Write-Host "Reset-NetworkStack         ..Reset TCP/IP and Winsock"                                     -Foregroundcolor yellow
        Write-Host "Reset-NetworkAdapter       ..Reset Network Adapters"                                       -Foregroundcolor yellow
        Write-Host "Restart-Endpoint           ..Restart the endpoint after X provided hours"                  -Foregroundcolor yellow
        Write-Host " "
        Write-Host "Exchange Commands"                                                                         -Foregroundcolor Cyan
        Write-Host "Add-DistributionMember     ..Adds a mailbox to a Distibution Group"                        -Foregroundcolor Yellow
        Write-Host "Get-MailLog                ..Gets a csv of mail logs"                                      -Foregroundcolor Yellow
        Write-Host "Get-MissingDisconnected    ..Gets diconnected mailboxes missing from the mailbox database" -Foregroundcolor Yellow
        Write-Host "Get-UserDisabledMailboxes  ..Gets mailboxes associated with disabled ad accounts"          -Foregroundcolor Yellow
        Write-Host "Get-VirtualDirectories     ..Gets IIS virtual directories for Exchange"                    -ForegroundColor Yellow
        Write-Host " "
        Write-Host "Exchange Online Commands"                                                                  -Foregroundcolor Cyan
        Write-Host "Connect-ExchangeOnline     ..Connects to Exchange Online"                                  -Foregroundcolor Yellow
        Write-Host " "
        Write-Host "File Commands"                                                                             -Foregroundcolor Cyan 
        Write-Host "Get-FileOwner              ..Gets CSV of file owners for a path"                           -Foregroundcolor Yellow
        Write-Host "Get-FolderSize             ..Gets FolderSize of a single folder quickly"                   -Foregroundcolor Yellow
        Write-Host "Find-ComputersFiles        ..Finds queried files across 1 or more Computers"               -ForegroundColor Yellow                      
        Write-Host "Remove-All                 ..Removes many files quickly to free up space"                  -Foregroundcolor Yellow
        Write-host "Remove-DisabledADProfiles  ..Removes local profiles of disabled AD users"                  -Foregroundcolor Yellow
        Write-Host "Remove-OlderThan           ..Removes folders and files older than"                         -Foregroundcolor Yellow
        Write-Host "Remove-OlderThanRecursive  ..Removes folders and files older than"                         -Foregroundcolor Yellow
        Write-Host "Remove-Path                ..Removes specified files and folders"                          -Foregroundcolor Yellow
        Write-Host "Set-Permissions            ..Set permissions recursively to a path"                        -Foregroundcolor Yellow        
        Write-Host "Set-Owner                  ..Set ownership to a path recursively for initiating account"   -Foregroundcolor Yellow
        Write-Host " " 
        Write-Host "Info & Help Commands"                                                                      -ForeGroundColor Cyan
        Write-Host "Get-ADInfo                 ..Gets info on local domain"                                    -Foregroundcolor Yellow
        Write-Host "Get-Excuse                 ..Gets ...Wasn't me"                                            -Foregroundcolor Yellow
        Write-Host "Get-Info                   ..Gets this help list"                                          -Foregroundcolor Yellow
        Write-Host "Get-PCInfo                 ..Gets info on targeted PC"                                     -Foregroundcolor Yellow
        Write-Host " "
        Write-Host "Print/er Management Commands"                                                              -Foregroundcolor Cyan
        Write-Host "Get-Printers               ..Gets printer information"                                     -Foregroundcolor Yellow
        Write-Host "Get-PrintManagement        ..Gets Print Management"                                        -Foregroundcolor Yellow
        Write-Host "Remove-PrintQueue          ..Removes all print queues"                                     -Foregroundcolor Yellow 
        Write-Host " "
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

<#
.Synopsis
By Taylor Lee
Modified 05212018

.Description
Set's and alias for Show-Command

.NOTES
No Prequisites
#>

Set-Alias -Name scm -Value Show-Command
#-------------------------------------------------------------------------------------------------------------------------------------------------------

function Invoke-URLInDefaultBrowser {
    <#
        .SYNOPSIS
            Cmdlet to open a URL in the User's default browser.
        .DESCRIPTION
            Cmdlet to open a URL in the User's default browser.
        .PARAMETER URL
            Specify the URL to be Opened.
        .EXAMPLE
            PS> Invoke-URLInDefaultBrowser -URL 'http://jkdba.com'
            
            This will open the website "jkdba.com" in the user's default browser.
        .NOTES
            This cmdlet has only been test on Windows 10, using edge, chrome, and firefox as default browsers.
    #>
    [CmdletBinding(SupportsShouldProcess)]
    param
    (
        [Parameter(
            Position = 0,
            Mandatory = $true
        )]
        [ValidateNotNullOrEmpty()]
        [String] $URL
    )
    #Verify Format. Do not want to assume http or https so throw warning.
    if( $URL -notmatch "http://*" -and $URL -notmatch "https://*")
    {
        Write-Warning -Message "The URL Specified is formatted incorrectly: ($URL)" 
        Write-Warning -Message "Please make sure to include the URL Protocol (http:// or https://)"
        break;
    }
    #Replace spaces with encoded space
    $URL = $URL -replace ' ','%20'
    
    #Get Default browser
    $DefaultSettingPath = 'HKCU:\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice'
    $DefaultBrowserName = (Get-Item $DefaultSettingPath | Get-ItemProperty).ProgId
    
    #Handle for Edge
    ##edge will no open with the specified shell open command in the HKCR.
    if($DefaultBrowserName -eq 'AppXq0fevzme2pys62n3e0fbqa7peapykr8v')
    {
        #Open url in edge
        Start-Process Microsoft-edge:$URL 
    }
    else
    {
        try
        {
            #Create PSDrive to HKEY_CLASSES_ROOT
            $null = New-PSDrive -PSProvider registry -Root 'HKEY_CLASSES_ROOT' -Name 'HKCR'
            #Get the default browser executable command/path
            $DefaultBrowserOpenCommand = (Get-Item "HKCR:\$DefaultBrowserName\shell\open\command" | Get-ItemProperty).'(default)'
            $DefaultBrowserPath = [regex]::Match($DefaultBrowserOpenCommand,'\".+?\"')
            #Open URL in browser
            Start-Process -FilePath $DefaultBrowserPath -ArgumentList $URL   
        }
        catch
        {
            Throw $_.Exception
        }
        finally
        {
            #Clean up PSDrive for 'HKEY_CLASSES_ROOT
            Remove-PSDrive -Name 'HKCR'
        }
    }}
#-------------------------------------------------------------------------------------------------------------------------------------------------------
Function Get-Common {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05192018
            
    .Description
    Lists commonly used and already existing functions.
    #>
        [CmdletBinding()]
        param (     
        )

        Write-Host " "
        Write-Host "Active Directoy Commands"                                                                          -Foregroundcolor Cyan
        Write-Host "Get-AdUser                          ..Get and make changes to AD Users"                            -Foregroundcolor Yellow
        Write-Host "Get-ADGroupMember                   ..Get members of an AD Group"                                  -Foregroundcolor Yellow
        Write-Host " "
        Write-Host "Custom Aliases"                                                                                    -Foregroundcolor Cyan
        Write-Host "SCM                                 ..Alias for Show-Command. Use to show parameters in a GUI"     -Foregroundcolor Yellow
        Write-Host " "
        Write-Host "Exchange Commands"                                                                                 -Foregroundcolor Cyan
        Write-Host "Get-Mailbox                         ..Gets and make changes to a mailbox"                          -Foregroundcolor Yellow
        Write-Host "Get-RecieveConnector                ..Gets the receive connectors"                                 -Foregroundcolor Yellow
        Write-Host "Get-SendConnector                   ..Gets the send connectors"                                    -Foregroundcolor Yellow
        Write-Host "Set-MailboxAutoReplyConfiguration   ..Set Out of Office Reply"                                     -Foregroundcolor Yellow
        Write-Host " "
        Write-Host "Exchange Online Commands"                                                                          -Foregroundcolor Cyan
        Write-Host "Get-MessageTrace                    ..Gets a csv of mail logs"                                     -Foregroundcolor Yellow
        Write-Host " "
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

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
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Enable-Remoting {
    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This Command will enable PSRemoting on a remote PC.
    
    .Inputs
        
        [CmdletBinding()]
 
        Param (
           [Parameter(Position=0, Mandatory=$true)]$Computer,
           [Parameter(Position=1, Mandatory=$true)]$Username,
           [Parameter(Position=2, Mandatory=$true)][SecureString]$Password
              )
    
    #Enabling PSRemoting
        psexec \\$Computer -s winrm.cmd quickconfig -q
        psexec \\$Computer -u $Username -p $Password powershell.exe cmd /c "enable-psremoting -force"
    
    
    #Testing that PSRemoting is now enabled.
        Write-Host "If an error is presented after this point PSRemoting wasn't enabled"       -Foregroundcolor Yellow
        Test-WsMan $Computer

    .NOTES
    This Function assumes you have psexec. If you do not download it with the sysinternals suite and add psexec to one of your enviroment variable paths.
        
    .EXAMPLE
    This will enable remoting and then prompt for a password
    
    Enable-PSRemoting -computer PCName -username domain\username
    #>
    
        [CmdletBinding()]
 
        Param (
           [Parameter(Position=0, Mandatory=$true)]$Computer,
           [Parameter(Position=1, Mandatory=$true)]$Username,
           [Parameter(Position=2, Mandatory=$true)][SecureString]$Password
              )
    
    #Enabling PSRemoting
        psexec \\$Computer -s winrm.cmd quickconfig -q
        psexec \\$Computer -u $Username -p $Password powershell.exe cmd /c "enable-psremoting -force"
    
    
    #Testing that PSRemoting is now enabled.
        Write-Host "If an error is presented after this point PSRemoting wasn't enabled"       -Foregroundcolor Yellow
        Test-WsMan $Computer
    }
    
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Remove-All {

    <#
    .Synopsis
    By Taylor Lee
    Modified 060712018
    
    .Description
    This Command removes log files, temp files, and empties the recycle bin. Access denied errors do not indicate a failue of the script.
    
    .Inputs
        [CmdletBinding(SupportsShouldProcess)]
        param (     
        )
        $ErrorActionPreference = 'SilentlyContinue'

        Write-Host "Freeing up space. Enjoy your Coffee!" -BackgroundColor Black -ForegroundColor Green

        Get-ChildItem -path "C:\windows\logs" -Include '*.logs' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path "C:\windows\logs" -Include '*.cab' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path "C:\" -Include '*.logs' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path 'c:\$recycle.bin' -Include '*' -Recurse -force | Remove-Item -force -Recurse
        $tempfolders = @("C:\Windows\Temp\*", "C:\Windows\Prefetch\*", "C:\Documents and Settings\*\Local Settings\temp\*", "C:\Users\*\Appdata\Local\Temp\*")
        Remove-Item $tempfolders -force -recurse
        $tempinternetfolders = @("C:\Users\*\Appdata\Local\Temp\Microsoft\Windows\Temporary Internet Files\*", "C:\Users\*\Appdata\Local\TMicrosoft\Windows\INetCache\*", "C:\Users\*\Appdata\Local\Microsoft\Windows\Cookies\*")
        Remove-Item $tempinternetfolders -force -recurse

        $ErrorActionPreference = 'Continue'
    }
        .NOTES
    No Prequisites

    The command will return many errors for files it can't access. That is not a result of the command failing.
    #>
        [CmdletBinding(SupportsShouldProcess)]
        param (     
        )
        $ErrorActionPreference = 'SilentlyContinue'

        Write-Host "Freeing up space. Enjoy your Coffee!" -BackgroundColor Black -ForegroundColor Green

        Get-ChildItem -path "C:\windows\logs" -Include '*.logs' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path "C:\windows\logs" -Include '*.cab' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path "C:\" -Include '*.logs' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path 'c:\$recycle.bin' -Include '*' -Recurse -force | Remove-Item -force -Recurse
        $tempfolders = @("C:\Windows\Temp\*", "C:\Windows\Prefetch\*", "C:\Documents and Settings\*\Local Settings\temp\*", "C:\Users\*\Appdata\Local\Temp\*")
        Remove-Item $tempfolders -force -recurse
        $tempinternetfolders = @("C:\Users\*\Appdata\Local\Temp\Microsoft\Windows\Temporary Internet Files\*", "C:\Users\*\Appdata\Local\TMicrosoft\Windows\INetCache\*", "C:\Users\*\Appdata\Local\Microsoft\Windows\Cookies\*")
        Remove-Item $tempinternetfolders -force -recurse
        powercfg.exe /hibernate off
        Remove-Item c:\hiberfil.sys -force

        $ErrorActionPreference = 'Continue'
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Remove-DisabledADProfiles {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05042018
    
    .Description
    This command deletes profiles that are disabled in active directoy on the local Workstation or Server.
    
    .Inputs
        Write-Host "Importing ActiveDirectory Module if present. Command will fail without it."    -Foregroundcolor Yellow
        
        Import-Module ActiveDirectoy
    
        $profiles = Get-WmiObject -Class Win32_UserProfile
        foreach ($prof in $profiles){
            $sid = $prof.sid
            $ADUser = Get-ADUser -Filter {SID -eq $sid}
            if ($ADUser.enabled -eq $false){
                #delete profile
                "Delete $($ADUser.name)"
                $prof.delete()
            }   
        }
    
    }

    .NOTES
    This command requires the ActiveDirectory Module
    #>
        [CmdletBinding()]
        param (     
        )
        Write-Host "Importing ActiveDirectory Module if present. Command will fail without it."    -Foregroundcolor Yellow
        
        Import-Module ActiveDirectoy
    
        $profiles = Get-WmiObject -Class Win32_UserProfile
        foreach ($prof in $profiles){
            $sid = $prof.sid
            $ADUser = Get-ADUser -Filter {SID -eq $sid}
            if ($ADUser.enabled -eq $false){
                #delete profile
                "Delete $($ADUser.name)"
                $prof.delete()
            }   
        }
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Remove-OlderThan {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This scripts function is to delete files and folders older than x days non-recursivley.
    
    .Inputs
        Param (
          [Parameter(Mandatory=$true)]$Path,
          [Parameter(Mandatory=$true)]$Daysback 
              )
    
        Write-Host "WARNING, WWARNING, WARNING!!!"                                                                                   -Foregroundcolor red
        Write-Host "Did you use a negative value in the Daysback parameter? If not use Ctrl + C to abort the command"                -ForegroundColor Yellow
    
        
        $CurrentDate = Get-Date
        $DatetoDelete = $CurrentDate.AddDays($Daysback)
        Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Confirm
    
    .NOTES
    No Prequisites

    .Example
     -Path is the folder from which files will be deleted. -DaysBack sets files older than that many days back to be deleted.

     Delete-OlderThan -Path "C:\Folder" -Daysback "-90" 
    #>
        [CmdletBinding(SupportsShouldProcess)]

        Param (
          [Parameter(Mandatory=$true)]$Path,
          [Parameter(Mandatory=$true)]$Daysback 
              )
    
        Write-Host "WARNING, WWARNING, WARNING!!!"                                                                     -Foregroundcolor red -Backgroundcolor Black
        Write-Host "Did you use a negative value in the Daysback parameter? If not use Ctrl + C to abort the command"  -ForegroundColor Yellow -Backgroundcolor Black
    
        $CurrentDate = Get-Date
        $DatetoDelete = $CurrentDate.AddDays($Daysback)
        Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Confirm
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Remove-OlderThanRecursive {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This scripts function is to delete files and folders older than x days recursivley.
    
    .Inputs
            Param (
          [Parameter(Mandatory=$true)]$Path,
          [Parameter(Mandatory=$true)]$Daysback 
              )
    
        Write-Host "WARNING, WWARNING, WARNING!!!"                                                                                                                      -Foregroundcolor red
        Write-Host "Did you use a negative value in the Daysback parameter? If not use Ctrl + C to abort the command"                                                   -ForegroundColor Yellow
    
        $CurrentDate = Get-Date
        $DatetoDelete = $CurrentDate.AddDays($Daysback)
        Get-ChildItem $Path -Recurse | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Confirm
    
    .NOTES
    No Prequisites

    .Example
     -Path is the folder from which files will be deleted and the subfolder of the -path. -DaysBack sets files older than that many days back to be deleted.

     Delete-OlderThan -Path "C:\Folder" -Daysback "-90" 
    #>
        [CmdletBinding(SupportsShouldProcess)]

        Param (
          [Parameter(Mandatory=$true)]$Path,
          [Parameter(Mandatory=$true)]$Daysback 
              )
    
        Write-Host "WARNING, WWARNING, WARNING!!!"                                                                                                                      -Foregroundcolor red
        Write-Host "Did you use a negative value in the Daysback parameter? If not use Ctrl + C to abort the command"                                                   -ForegroundColor Yellow
    
        $CurrentDate = Get-Date
        $DatetoDelete = $CurrentDate.AddDays($Daysback)
        Get-ChildItem $Path -Recurse | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Confirm
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Enable-UAC {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This Function enables UAC and sets the Consent Prompt Behaviour.
    
    .Inputs
        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t reg_dword /d 2
        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "EnableLUA" /t reg_dword /d 1

    .NOTES
    No Prequisites
    #>
        [CmdletBinding()]
        param (     
        )
        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t reg_dword /d 2
        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "EnableLUA" /t reg_dword /d 1
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Disable-UAC {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This Function disable UAC and removes the Consent Prompt Behaviour.
    
    .Inputs
        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t reg_dword /d 0
        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "EnableLUA" /t reg_dword /d 0

    .NOTES
    No Prequisites
    #>
        [CmdletBinding()]
        param (     
        )  

        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t reg_dword /d 0
        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "EnableLUA" /t reg_dword /d 0
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Disable-UACPrompt {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This Function disable UAC Consent Prompting for Admins, but leaves UAC enabled and prompting enabled for users.
    
    .Inputs
        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t reg_dword /d 0

    .NOTES
    No Prequisites        
    #>
        [CmdletBinding()]
        param (     
        )

        reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "ConsentPromptBehaviorAdmin" /t reg_dword /d 0
        
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-ADInfo {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This Function will return predefined domain info. Requires the Active Directory Module loaded.
    
    .Inputs
        Import-Module ActiveDirectory
    
        Get-ADDomain | 
        select Name,Forest,ChildDomains,DistinguishedName,DNSRoot,DomainMode,ReplicaDirectoryServers,InfrastructureMaster, RIDMaster, PDCEmulator |
        fl
    
        Get-ADForest | 
        Select-Object DomainNamingMaster, SchemaMaster | 
        fl

    .NOTES
    Requires the Active Directory Module
    #>
        [CmdletBinding()]
        param (     
        )

        Import-Module ActiveDirectory
    
        Get-ADDomain | 
        Select-Object Name,Forest,ChildDomains,DistinguishedName,DNSRoot,DomainMode,ReplicaDirectoryServers,InfrastructureMaster, RIDMaster, PDCEmulator |
        Format-List
    
        Get-ADForest | 
        Select-Object DomainNamingMaster, SchemaMaster | 
        Format-List
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Disable-ShakeToMinimize {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This Function disables the annoying shake to minimize feature of Windows Aero
    
    .INPUTS
        reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "DisallowShaking" /t reg_dword /d 1

    .NOTES
    No Prequisites
    #>
    [CmdletBinding()]
    param (     
    )

        reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /f /v "DisallowShaking" /t reg_dword /d 1
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-FileOwner {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This Function produces a CSV listing file owners for all files in a given path
    
    .INPUTS
        PARAM (
          [Parameter(Mandatory=$true)]$Path,
          [Parameter(Mandatory=$true)]$Report
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
                      select $HostName, $Owner, Name, Directory, $LastWrite, Length   | 
                      Export-Csv -NoTypeInformation $Report

    .NOTES
    No Prequisites
    
    .Example
    -Path is the parent folder from which all subfolder are queried. -Report is where the report csv will be saved and the filename to be saved.

     Get-FileOwner -Path c:\users -Report c:\FileOwners.csv
    #>
        [CmdletBinding(SupportsShouldProcess)]
   
        PARAM (
          [Parameter(Mandatory=$true)]$Path,
          [Parameter(Mandatory=$true)]$Report
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
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Set-Permissions {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This Function gives permissions to a path, enables inhertance to subfolders and files, and pushes the permissions to subfolders and files.
    
    .INPUTS
    
        PARAM (
          [Parameter(Mandatory=$true)]$Path,
          [Parameter(Mandatory=$true)]$Account
              )
    
        icacls $Path /grant ""$Account":(OI)(CI)(M)" /T /C /Q

    .Notes
    The function is a predefined Icacls Command. Use Icacls if you need to use different parameters.

    Don't put ' or " around the path.     
    .Example
    -Path sets the parent folder or file from which the command applies. -Account is the account that is being given the rights.

     Set-Permissions -Path c:\folder -Account Domain\Username

    #>
        [CmdletBinding()]
   
        PARAM (
          [Parameter(Mandatory=$true)]$Path,
          [Parameter(Mandatory=$true)]$Account
              )
    
    icacls $Path /grant ""$Account":(OI)(CI)(M)" /T /C /Q
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Set-Owner {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .Description
    This Function gives you ownership of a path including all subfolders and files
    
    .INPUTS
    
        PARAM (
          [Parameter(Mandatory=$true)]$Path
              )
    
        takeown /r /d Y /f "$Path" 

    .Notes
    The function is a predefined takeown Command. Use takeown if you need to use different parameters.
    
    .Example
     Set-Owner -Path c:\folder
    #>
        [CmdletBinding()]
   
        PARAM (
          [Parameter(Mandatory=$true)]$Path
              )
    
        takeown /r /d Y /f "$Path" 
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Remove-Path {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    This command deletes all files recursively in a path that match the included filename.
    
    .INPUTS
        Param (
            [Parameter(Mandatory=$true)]$Path,
            [Parameter(Mandatory=$true)]$Include
              )
    
        Get-ChildItem -path "$Path" -Include "$Include" -Recurse -force | Remove-Item -force -Recurse

    .NOTES
    No Prequisites
      
    .EXAMPLE
    -Path is the parent folder from which the command runs. -include is the file names to include.

     Remove-Path -path c:\Folder -include "*.logs"
    #>
        [CmdletBinding(SupportsShouldProcess)]
    
        Param (
            [Parameter(Mandatory=$true)]$Path,
            [Parameter(Mandatory=$true)]$Include
              )
    
        Get-ChildItem -path "$Path" -Include "$Include" -Recurse -force | Remove-Item -force -Recurse
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Remove-PrintQueue {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    This command clears print queues for all printers
    
    .INPUTS
        $printers = Get-Printer
        foreach ($printer in $printers) {
            $printjobs = Get-PrintJob -PrinterObject $printer
            foreach ($printjob in $printjobs) {
                Remove-PrintJob -InputObject $printjob
            }
        }

    .NOTES
    No Prequisites
    #>
        [CmdletBinding(SupportsShouldProcess)]
        param (     
        )

        $printers = Get-Printer
        foreach ($printer in $printers) {
            $printjobs = Get-PrintJob -PrinterObject $printer
            foreach ($printjob in $printjobs) {
                Remove-PrintJob -InputObject $printjob
            }
        }
    
    }   
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-Printers {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    This command returns a list of printers 
    
    .INPUTS
    Param (
        $computer            
          )
        

        get-ciminstance cim_printer -computer $computer | Select-Object Name, Drivername,Portname | Sort-Object name | Format-Table -autosize

    .NOTES
    No Prequisites   
    
    .EXAMPLE
    Returns printers for the local computer only.

    Get-Printers

    .EXAMPLE
    -Computer is used to pull printers from remote computers.

    Get-Printers -computer PCName
    #>
    [CmdletBinding()]
    
    Param (
        $computer            
          )
        

        get-ciminstance cim_printer -computer $computer | Select-Object Name, Drivername,Portname | Sort-Object name | Format-Table -autosize
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Disable-Updates {

    <#
    .Synopsis
    By Taylor Lee
    Modified 0521 2018
    
    .DESCRIPTION
    This command disable automatic updates
    
    .INPUTS
       reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 1 /f
       net stop wuauserv
       net start wuauserv

    .NOTES
    No Prequisites
    #>
        [CmdletBinding()]
        param (     
        )

       reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 1 /f
       net stop wuauserv
       net start wuauserv
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Disable-Sleep {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    This command disable hibernate and sleep
    
    .INPUTS
        echo disabling standby
        powercfg.exe -change -standby-timeout-ac 0
        powercfg.exe -change -standby-timeout-dc 0
        powercfg.exe -change -hibernate-timeout-ac 0
        powercfg.exe -change -hibernate-timeout-dc 0 
        powercfg -h off

    .NOTES
    No Prequisites        
    #>
        [CmdletBinding()]
        param (     
        )

        Write-Output disabling standby
        powercfg.exe -change -standby-timeout-ac 0
        powercfg.exe -change -standby-timeout-dc 0
        powercfg.exe -change -hibernate-timeout-ac 0
        powercfg.exe -change -hibernate-timeout-dc 0 
        powercfg -h off
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Remove-AppName {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    This command uninstalls an application. Good for when elevation privleges are needed from a user session. T
    
    .INPUTS
        Param (
            [Parameter(Mandatory=$true)]$Appname
              )
    
        wmic product where name="$Appname" call uninstall

    .NOTES
    No Prequisites
    
    .EXAMPLE
    -appname is used to to specifiy the installed application being uninstalled. The full application name must be used.

    Remove-AppName -appname 'App Name has spaces'
    #>
        [CmdletBinding()]
    
        Param (
            [Parameter(Mandatory=$true)]$Appname
              )
    
        wmic product where name="$Appname" call uninstall
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Remove-AppNameLike {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    This command uninstalls an application. Good for when elevation privleges are needed from a user session. 
    
    .INPUTS
        Param (
            [Parameter(Mandatory=$true)]$Appnamelike
              )
    
        wmic product where "name like '%$Appnamelike%'" call uninstall

    .NOTES
    No Prequisites
    
    .EXAMPLE
    -appnamelike is used to to specifiy the installed application being uninstalled. You can provide only part of the applicaiton name. 
    If other application share the partial appname provide they will be unisntalled also.

    Remove-AppName -appnamelike 'partial app name'
    #>
        [CmdletBinding()]
    
        Param (
            [Parameter(Mandatory=$true)]$Appnamelike
              )
    
        wmic product where "name like '%$Appnamelike%'" call uninstall
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-Excuse {

    <#
    .Synopsis
    By Taylor Lee
    Modified 05112018
    
    .DESCRIPTION
    Are you out of excuses. Let powershell help you
    
    .INPUTS
       $ex = (Invoke-WebRequest http://pages.cs.wisc.edu/~ballard/bofh/excuses -OutVariable excuses).content.split([Environment]::NewLine)[(get-random $excuses.content.split([Environment]::NewLine).count)]
       
       Write-Host " "
       write-host "$ex" -Foregroundcolor Green
       Write-Host " "
    #>
        [CmdletBinding(SupportsShouldProcess)]
    
       $ex = (Invoke-WebRequest http://pages.cs.wisc.edu/~ballard/bofh/excuses -OutVariable excuses).content.split([Environment]::NewLine)[(get-random $excuses.content.split([Environment]::NewLine).count)]
       
       Write-Host " "
       write-host "$ex" -Foregroundcolor Green
       Write-Host " "
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-LockedAccounts {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    Returns a list of Locked Active Directory Account
    
    .INPUTS
        import-module ActiveDirectory
    
        Search-ADAccount –LockedOut | Select-Object Name,SamAccountName,UserPrincipalName | Sort-Object name | Format-Table -Autosize

    .NOTES
    Requires the Active Directory Module.         
    #>
        [CmdletBinding()]
        param (     
        )

        import-module ActiveDirectory
    
        Search-ADAccount –LockedOut | Select-Object Name,SamAccountName,UserPrincipalName | Sort-Object name | Format-Table -Autosize
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Unlock-Account {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    Unlocks and Active Directory Account
    
    .INPUTS
        Param (
            [Parameter(Mandatory=$true)]$Username
              )
    
        Import-Module ActiveDirectory
    
        Unlock-ADAccount -identity $username
        
    .NOTES
    Requires the Active Directory Module.
    
    .Examples
    -identity is the active directory identity of the user. User Get-lockedAccounts to quickly obtain the identity to use in the command.

    Unlock-ADAccount -identity JohnD
    #>
        [CmdletBinding(SupportsShouldProcess)]
            
        Param (
            [Parameter(Mandatory=$true)]$Username
              )
    
        Import-Module ActiveDirectory
    
        Unlock-ADAccount -identity $username
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-PasswordExpired {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    Returns a list of Active Directory Accounts with expired passwords

    .NOTES
    Requires the Active Directory Module.
    
    .INPUTS
        import-module ActiveDirectory
    
        Search-ADAccount -PasswordExpired | Select name | Sort name | fl
    #>
        [CmdletBinding()]
        param (     
        )
    
        import-module ActiveDirectory
    
        Search-ADAccount -PasswordExpired | Select-Object name | Sort-Object name | Format-List
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-Management {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    Opens Computer management connected to another PC
    
    .Example
    -PCName is the computer that you are pulling computer management up for.

    Get-Management -computer PCName

    .INPUTS
        Param (
            [Parameter(Mandatory=$true)]$computer
              )
    
        compmgmt.msc /computer:$computer
    #>
        [CmdletBinding()]
    
        Param (
            [Parameter(Mandatory=$true)]$computer
              )
    
        compmgmt.msc /computer:$computer
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-Applications {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    List installed Applications
    
    
    .INPUTS
        Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | 
        Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | 
        Sort DisplayName | Format-Table –AutoSize

    .NOTES
    No Prequisites    
    #>
        [CmdletBinding()]
        param (     
        )

        Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | 
        Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | 
        Sort-Object DisplayName | Format-Table –AutoSize
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-UserReport {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    Create a CSV report of Active Directory users
    
    
    .INPUTS
        Param (
            [Parameter(Mandatory=$true)]$Path
              )
    
        Import-Module ActiveDirectory 
    
        get-aduser -Filter * -properties * | 
        Select CN,DistinguishedName,SamAccountName,Modified,PasswordLastSet,PasswordNeverExpires,LockedOut,LastBadPasswordAttempt,BadLogonCount,Created,EmailAddress,{$_.proxyAddresses},mailNickname,Enabled,HomeDirectory,HomeDrive |
        Export-CSV $Path
    
    .NOTES
    Requires Active Directory Module

    .Examples
    -path is where the report is to be saved. Be sure to specify a filename and extension.

    Get-UserReport -path C:\UserReport.csv
    #>
        [CmdletBinding(SupportsShouldProcess)]
          
        Param (
            [Parameter(Mandatory=$true)]$Path
              )
    
        Import-Module ActiveDirectory 
    
        get-aduser -Filter * -properties * | 
        Select-Object CN,DistinguishedName,SamAccountName,Modified,PasswordLastSet,PasswordNeverExpires,LockedOut,LastBadPasswordAttempt,BadLogonCount,Created,EmailAddress,{$_.proxyAddresses},mailNickname,Enabled,HomeDirectory,HomeDrive |
        Export-CSV $Path
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Disable-Account {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    Disables a specified AD Account
    
    .INPUTS
        Param (
            [Parameter(Mandatory=$true)]$Account
              )
    
        Import-Module ActiveDirectory
    
        Disable-ADAccount -Identity $Account

    .NOTES        
    Requires the Active Directory Module
    
    .EXAMPLE
    -Account is the Samaccountname of the account being disabled

     Disable-ADAccount -Account PattiFul -Confirm
    
    .EXAMPLE 
    -Account is the DistinguishedName of the account being disabled

    Disable-ADAccount -Account "CN=Patti Fuller,OU=Finance,OU=UserAccounts,DC=FABRIKAM,DC=COM" -Confirm

    .EXAMPLE 
    -Account is the UserPrincipalName of the account being disabled

    Disable-ADAccount -Account Patti.Fuller@FABRIKAM.com -Confirm
    #>
        [CmdletBinding(SupportsShouldProcess)]
    
        Param (
            [Parameter(Mandatory=$true)]$Account
              )
    
        Import-Module ActiveDirectory
    
        Disable-ADAccount -Identity $Account -Confirm
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Enable-Account {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    Enables a specified AD Account
    
    .INPUTS
        Param (
            [Parameter(Mandatory=$true)]$Account
              )
    
        Import-Module ActiveDirectory
    
        Enable-ADAccount -Identity $Account

    .NOTES        
    Requires the Active Directory Module        
      
    .EXAMPLE
    -Account is the Samaccountname of the account being disabled

     Enable-ADAccount -Account PattiFul -Confirm
    
    .EXAMPLE 
    -Account is the DistinguishedName of the account being disabled

    Enable-ADAccount -Account "CN=Patti Fuller,OU=Finance,OU=UserAccounts,DC=FABRIKAM,DC=COM" -Confirm

    .EXAMPLE 
    -Account is the UserPrincipalName of the account being disabled

    Enable-ADAccount -Account Patti.Fuller@FABRIKAM.com -Confirm
    #>
        [CmdletBinding(SupportsShouldProcess)]
    
        Param (
            [Parameter(Mandatory=$true)]$Account
              )
    
        Import-Module ActiveDirectory
    
        Enable-ADAccount -Identity $Account -Confirm
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-PrintManagement {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
    
    .DESCRIPTION
    Opens the Print Management MMC
    
    
    .INPUTS
        printmanagement.msc

    .NOTES
    No Prequisites        
    #>
        [CmdletBinding()]
        param (     
        )
        printmanagement.msc
    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Connect-Azure {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
          
    .DESCRIPTION
    Connects to Azure Active Directoy. 
            
    .INPUTS
        Write-Host "The Execuiton Policy you have set must allow for scripts to be run."     -Foregroundcolor Green
        Write-Host "Use {Set-ExecutionPolicy remotesigned} if you're unsure."                -Foregroundcolor Green
          
        Connect-MsolService

    .NOTES
    Requires the Module for Azure Active Directory be installed. Can be run from the regular Powershell Console.        
    #>
        [CmdletBinding()]
        param (     
        )

        Write-Host "The Execuiton Policy you have set must allow for scripts to be run."     -Foregroundcolor Green
        Write-Host "Use {Set-ExecutionPolicy remotesigned} if you're unsure."                -Foregroundcolor Green
          
        Connect-MsolService  
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------
    
Function Install-AzureModule {
    
    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
            
    .DESCRIPTION
    Installs the module for Azure Active Directory. Can be run from the regular Powershell Console.
              
    .INPUTS
    Install-Module MSOnline

    .NOTES
    No Prequisites    
    #>
        [CmdletBinding(SupportsShouldProcess)]
        param (     
        ) 

        Install-Module MSOnline    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------
    
Function Get-AzureHelp {
    
    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
              
    .DESCRIPTION
    Get's command for working with Azure Active Directory. Can be run from the regular Powershell Console.
                
    .INPUTS
    Get-Command *Msol* | Sort-Object Name

    .NOTES
    Requires the Azure Active Directory Module    
    #>
        [CmdletBinding()]
        param (     
        )

        Get-Command *Msol* | Sort-Object Name    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Start-AzureSync {
    
    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
              
    .DESCRIPTION
    Starts a local Active Directory sync to Azure Active Directory. 
    
    .INPUTS
        Param (
          [Parameter(Mandatory=$true)]$Policy
              )
              
        Start-ADSyncSyncCycle -PolicyType $Policy 

    .NOTES
    Must be run from the DC that has Azure AD Connect.      
    
    .Example
    Start-AzureSync -Policy Initial
    
    Performs a full sync with Azure Active Directory
    
    .EXAMPLE
    Start-AzureSync -Policy Delta
    
    Performs an incrmental sync with Azure Active Directroy
    
    
    #>
        [CmdletBinding()]
            
        Param (
          [Parameter(Mandatory=$true)]$Policy
              )
              
        Start-ADSyncSyncCycle -PolicyType $Policy    
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Connect-ExchangeOnline {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
      
    .DESCRIPTION
    Connect to an Exchange Online Powershell Session. 
      
    .INPUTS
        Param (
          [Parameter(Mandatory=$true)]$Username
              )
      
        Write-Host "The Execuiton Policy you have set must allow for scripts to be run."     -Foregroundcolor Green
        Write-Host "Use {Set-ExecutionPolicy remotesigned} if you're unsure."                -Foregroundcolor Green
    
        Connect-EXOPSSession -UserPrincipalName $Username

    .NOTES
    Must be run from the Exchange Powershell Module installed from Exchange Online.        
      
        
    .EXAMPLE
    -Username is the office365 admin being used.

    Connect-ExchangeOnline -Username JohnD@Company.com
    
    .Link
    https://docs.microsoft.com/en-us/powershell/exchange/exchange-online/connect-to-exchange-online-powershell/mfa-connect-to-exchange-online-powershell?view=exchange-ps
    #>
        [CmdletBinding()]
        
        Param (
              )
     
        Write-Host "Did you run this command from the Exchange Online Module. If not check help for this command"                -Foregroundcolor Yellow
        Write-Host "The Execuiton Policy you have set must allow for scripts to be run."                                         -Foregroundcolor Green
        Write-Host "Use {Set-ExecutionPolicy remotesigned} if you're unsure."                                                    -Foregroundcolor Green
    
        Connect-EXOPSSession
      
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Set-Password {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
      
    .DESCRIPTION
    Sets an Active Directory Password and provides an option to require a password 
       
    .INPUTS
        Param (
          [Parameter(Mandatory=$true)]$Username,
          [Parameter(Mandatory=$true)][SecureString]$Password
              )
    
        Import-Module ActiveDirectory
      
        Set-ADAccountPassword -identity $username -Reset -NewPassword $Password 
    
        $Prompt = Read-Host "Require a Password Change? Type Yes or No."
    
            if ($Prompt -eq 'Yes') {
        Set-ADUser -Identity $Username -ChangePasswordAtLogon $true
            } else {
        Write-Host " "
            }

    .NOTES
    Requires the Active Directory Module
    
    .EXAMPLE
    -username specifies the username being set and then prompts for a password.

    Set-Password -username domain\username
    #>
        [CmdletBinding(SupportsShouldProcess)]
   
        Param (
          [Parameter(Mandatory=$true)]$Username,
          [Parameter(Mandatory=$true)][SecureString]$Password
              )
    
        Import-Module ActiveDirectory
      
        Set-ADAccountPassword -identity $username -Reset -NewPassword $Password 
    
        $Prompt = Read-Host "Require a Password Change? Type Yes or No."
    
            if ($Prompt -eq 'Yes') {
        Set-ADUser -Identity $Username -ChangePasswordAtLogon $true
            } else {
        Write-Host " "
            }
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Add-DistributionMember {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
              
    .DESCRIPTION
    Add a mailbox or mailboxes to a distribution group. Wildcards can be used to add the whoel orginization to a distribution group.
        
    .INPUTS
        Param (
              [Parameter(Mandatory=$true)]$Mailbox,
              [Parameter(Mandatory=$true)]$DistribuitonGroup
              )
                
        Get-Mailbox -identity $Mailbox | add-distributiongroupmember -identity $DistribuitonGroup

    .NOTES
    Requires the Microsoft Exchange Module        
                
    .EXAMPLE
    Add a single mailbox to a single distribution group
        
    Add-DistributionMember -Mailbox JohnD@company.com -DistributionGroup "All Employees"
        
    .EXAMPLE
    Allows adding multiple mailboxes with a shared name to a Distribuiton Group
        
    Add-DistributionMember -Mailbox *@company.com -DistributionGroup "All Emp*"
        
    .EXAMPLE
    Add a single mailbox to multiple Distribution Groups.
        
    Add-DistributionMember -Mailbox JohnD@company.com -DistributionGroup "All Employees,Worker Bees"
    #>
        [CmdletBinding(SupportsShouldProcess)]
            
        Param (
              [Parameter(Mandatory=$true)]$Mailbox,
              [Parameter(Mandatory=$true)]$DistribuitonGroup
               )
                
        Get-Mailbox -identity $Mailbox | add-distributiongroupmember -identity $DistribuitonGroup
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-UserDisabledMailboxes {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
          
    .DESCRIPTION
    Create a csv listing existing mailboxes associated with disabled AD accounts
    
    .INPUTS
        Param (
            [Parameter(Mandatory=$true)]$Path
              )
            
        Get-User -RecipientTypeDetails UserMailbox | Where-Object {$_.UseraccountControl -like “*accountdisabled*”} | Export-Csv $Path

     .NOTES
    Requires the Active Directory module and must be run from the Exchange Server.
    
    .EXAMPLE
    -Path specifies the path the csv file shoud be saved to. You must provide a filename and extension.

    Get-UserDisabledMailboxes -path c:\filename.csv
    #>
        [CmdletBinding(SupportsShouldProcess)]
      
        Param (
            [Parameter(Mandatory=$true)]$Path
              )
            
        Get-User -RecipientTypeDetails UserMailbox | Where-Object {$_.UseraccountControl -like “*accountdisabled*”} | Export-Csv $Path
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------
  
Function Get-MissingDisconnected {
    
    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
          
    .DESCRIPTION
    If a recently deleted mailbox is missing from disconnected mailboxes, this command will force the mto be listed.
    
    .INPUTS
        Get-MailboxDatabase | Clean-MailboxDatabase

    .NOTES
    Requires the microsoft exchange module.    
    #>
        [CmdletBinding()]
        param (     
        )

        Get-MailboxDatabase | Clean-MailboxDatabase
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-VirtualDirectories {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
      
    .DESCRIPTION
    Returns a list of Virtual Directories

    .NOTES
    Requires the microsoft exchange module. 
           
    .INPUTS
        Get-PowerShellVirtualDirectory | Format-List internalurl,externalurl
        Get-ActiveSyncVirtualDirectory | Format-List internalurl,externalurl
        Get-WebServicesVirtualDirectory | Format-List internalurl,externalurl
        Get-OwaVirtualDirectory | Format-List internalurl,externalurl
        Get-AutodiscoverVirtualDirectory | Format-List internalurl,externalurl
        Get-EcpVirtualDirectory | Format-List internalurl,externalurl
        Get-OABvirtualDirectory | Format-List internalurl,externalurl
    #>

        [CmdletBinding()]
        param (     
        )

        Write-Host "Powershell Virtual Directory"   -Foregroundcolor Green
        Get-PowerShellVirtualDirectory | Format-List internalurl,externalurl
        Write-Host "Active-Sync Virtual Directory"  -Foregroundcolor Green
        Get-ActiveSyncVirtualDirectory | Format-List internalurl,externalurl
        Write-Host "Web Services Virtual Directory"    -Foregroundcolor Green
        Get-WebServicesVirtualDirectory | Format-List internalurl,externalurl
        Write-Host "OWA Virtual Directory"    -Foregroundcolor Green
        Get-OwaVirtualDirectory | Format-List internalurl,externalurl
        Write-Host "AutoDiscover Virtual Directory"   -Foregroundcolor Green
        Get-AutodiscoverVirtualDirectory | Format-List internalurl,externalurl
        Write-Host "ECP Virtual Directory"    -Foregroundcolor Green
        Get-EcpVirtualDirectory | Format-List internalurl,externalurl
        Write-Host "OAB Virtual Directory"    -Foregroundcolor Green
        Get-OABvirtualDirectory | Format-List internalurl,externalurl
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Add-DistributionMember {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
              
    .DESCRIPTION
    Add a mailbox or mailboxes to a distribution group. Wildcards can be used to add the whoel orginization to a distribution group.
        
    .INPUTS
        Param (
              [Parameter(Mandatory=$true)]$Mailbox,
              [Parameter(Mandatory=$true)]$DistribuitonGroup
              )
                
        Get-Mailbox -identity $Mailbox | add-distributiongroupmember -identity $DistribuitonGroup

    .NOTES
    Requires the microsoft exchange module.         
                
    .EXAMPLE
    Add a single mailbox to a single distribution group
        
    Add-DistributionMember -Mailbox JohnD@company.com -DistributionGroup "All Employees"
        
    .EXAMPLE
    Allows shortening the command or adding multiple mailboxes with a shared name to a Distribuiton Group
        
    Add-DistributionMember -Mailbox *@company.com -DistributionGroup "All Emp*"
        
    .EXAMPLE
    Add a single mailbox to multip Distribution Groups.
        
    Add-DistributionMember -Mailbox JohnD@company.com -DistributionGroup "All Employees,Worker Bees"
    #>
        [CmdletBinding()]
                
        Param (
              [Parameter(Mandatory=$true)]$Mailbox,
              [Parameter(Mandatory=$true)]$DistribuitonGroup
               )
                
        Get-Mailbox -identity $Mailbox | add-distributiongroupmember -identity $DistribuitonGroup
    }

#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Get-MailLog {

        <#
        .SYNOPSIS
        By Taylor Lee
        Modified 06072018
          
        .DESCRIPTION
        Creates a csv file containg logs of mail in a given time frame.

                 
        .INPUTS
            Param (
              [Parameter(Mandatory=$true)]$StartDate,
              [Parameter(Mandatory=$true)]$EndDate,
              [Parameter(Mandatory=$true)]$ExportPath,
              [Parameter(Mandatory=$true)]$ResultSize
                  )
          
            Get-MessageTrackingLog -Start "$StartDate" -End "$EndDate" -ResultSize $ResultSize | 
            Select-Object Timestamp,Sender,{$_.Recipients},Directionality,MessageSubject,Source,EventID,TotalBytes,SourceContext,ServerIP,ClientHostName | 
            Export-Csv -path $ExportPath 

        .NOTES
        Requires the microsoft exchange module.     
    
        .EXAMPLE
        -Startdate is the first date where the log begins. -EndDate is the date at which the log ends. -exportpath is where the logs saves.
        don't forget to provide a filename and extension for -exportpath.

        Get-MailLog -StartDate 05/14/2017 -EndDate 05/14/2018 -ExportPath C:\MailLog.CSV
    
        #>
            [CmdletBinding(SupportsShouldProcess)]
             
            Param (
              [Parameter(Mandatory=$true)]$StartDate,
              [Parameter(Mandatory=$true)]$EndDate,
              [Parameter(Mandatory=$true)]$ExportPath,
              [Parameter(Mandatory=$true)]$ResultSize
                  )
          
            Get-MessageTrackingLog -Start "$StartDate" -End "$EndDate" -ResultSize $ResultSize | 
            Select-Object Timestamp,Sender,{$_.Recipients},Directionality,MessageSubject,Source,EventID,TotalBytes,SourceContext,ServerIP,ClientHostName | 
            Export-Csv -path $ExportPath 
    }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Reset-NetworkStack {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
      
    .DESCRIPTION
    Resets the TCP/IP and Winsock Stacks
      
    .INPUTS
    netsh winsock reset
    netsh int ip reset
    netsh int ipv4 reset reset.log
    netsh int ipv6 reset reset.log
    Write-Host "You need to restart the computer now"  -foregroundcolor yellow

    .NOTES
    No Prequisites
    #>
        [CmdletBinding()]
        param (     
        )

    netsh winsock reset
    netsh int ip reset
    netsh int ipv4 reset reset.log
    netsh int ipv6 reset reset.log
    Write-Host "You need to restart the computer now"  -foregroundcolor yellow
 }
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Reset-NetworkAdapter {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
      
    .DESCRIPTION
    Resets network interface if the interfacename is "Wi-Fi" or "Local Area Connection"
      
    .INPUTS
    netsh interface set interface wi-fi admin=disable
    netsh interface set interface wi-fi admin=enable
    netsh interface set interface wi-fi admin=disable
    netsh interface set interface wi-fi admin=enable

    .NOTES
    No Prequisites
    #>
        [CmdletBinding()]
        param (     
        )

    netsh interface set interface LocalAreaConnection admin=disable
    netsh interface set interface LocalAreaConnection admin=enable
    netsh interface set interface wi-fi admin=disable
    netsh interface set interface wi-fi admin=enable
 }    
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Add-LocalAdmin {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05212018
      
    .DESCRIPTION
    This function adds a local admin to the computer or server it is run from.
      
    .INPUTS
         Param (
          [Parameter(Mandatory=$true)]$user
              )
      
        Net Localgroup Administrators $user /add
         
    .NOTES
    Azure AD Joined machines will require the user to first login to a computer with their domain account before adding their domain account as a local admin. 
    The user logging in registers their SID so that the command is succesful.

    .EXAMPLE
    -user is the user who is provide full admin rights.

    Add-LocalAdmin -user domain\user
    #>
        [CmdletBinding()]
   
        Param (
          [Parameter(Mandatory=$true)]$user
              )
      
        Net Localgroup Administrators $user /add
      
 } 

#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Restart-Endpoint {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05242018
      
    .DESCRIPTION
    Sets a countdown to restart the Endpoint. The command uses a multiplier set to 1 hour. 
    You can use decimals to return shorter than an hour restart times or get X hours and X minutes.
      
    .INPUTS
            Param (
          [Parameter(Mandatory=$true)]$Hours
              )
        
        $Hoursmultiplied=$Hours*3600

        Shutdown /r /t $Hoursmultiplied
        
    .NOTES
    No Prerequisites

    The parameter must be typed when entering the command and not after. If you typed the command and then entered the parameter when prompted the command will fail.

    When using decimal values understand that the value is multiplying against the number of seconds in an hour. 
    So all multiplication needs to be done as a fraction of 1. Don't try thinking that it needs to be done against the value of 60 for seconds or hours.
    View the Examples for clarification.
    
    .EXAMPLE
    -Hours sets the number of hours before the restart is applied. 

    Restart-Endpoint -Hours 5

    Restarts the Endpoint in 5 Hours

    .EXAMPLE
    -Hours sets the number of hours before the restart is applied. 

    Restart-Endpoint -Hours 5.25

    Restarts the Endpoint in 5 hours and 15 minutes.

    .EXAMPLE
    -Hours sets the number of hours before the restart is applied. 

    Restart-Endpoint -Hours 0.25

    Restarts the Endpoint in 15 minutes.
    #>
    
        [CmdletBinding()]
     
        Param (
          [Parameter(Mandatory=$true)]$Hours
              )
        
        $Hoursmultiplied=$Hours*3600

        Shutdown /r /t $Hoursmultiplied
    }
 
#-------------------------------------------------------------------------------------------------------------------------------------------------------

Function Update-Powershell {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 06082018
      
    .DESCRIPTION
    Opens a link to install Windows Management Framework
      
    .INPUTS
    Invoke-URLInDefaultBrowser -URL https://www.microsoft.com/en-us/download/details.aspx?id=54616 
    #>
    
        [CmdletBinding(SupportsShouldProcess)]
        param (     
        )
      
        Invoke-URLInDefaultBrowser -URL https://www.microsoft.com/en-us/download/details.aspx?id=54616
      
    }

#-------------------------------------------------------------------------------------------------------------------------------------------------------

function Get-NetworkStatistics {
    <#
    .SYNOPSIS
	    Display current TCP/IP connections for local or remote system

    .FUNCTIONALITY
        Computers

    .DESCRIPTION
	    Display current TCP/IP connections for local or remote system.  Includes the process ID (PID) and process name for each connection.
	    If the port is not yet established, the port number is shown as an asterisk (*).	
	
    .PARAMETER ProcessName
	    Gets connections by the name of the process. The default value is '*'.
	
    .PARAMETER Port
	    The port number of the local computer or remote computer. The default value is '*'.

    .PARAMETER Address
	    Gets connections by the IP address of the connection, local or remote. Wildcard is supported. The default value is '*'.

    .PARAMETER Protocol
	    The name of the protocol (TCP or UDP). The default value is '*' (all)
	
    .PARAMETER State
	    Indicates the state of a TCP connection. The possible states are as follows:
		
	    Closed       - The TCP connection is closed. 
	    Close_Wait   - The local endpoint of the TCP connection is waiting for a connection termination request from the local user. 
	    Closing      - The local endpoint of the TCP connection is waiting for an acknowledgement of the connection termination request sent previously. 
	    Delete_Tcb   - The transmission control buffer (TCB) for the TCP connection is being deleted. 
	    Established  - The TCP handshake is complete. The connection has been established and data can be sent. 
	    Fin_Wait_1   - The local endpoint of the TCP connection is waiting for a connection termination request from the remote endpoint or for an acknowledgement of the connection termination request sent previously. 
	    Fin_Wait_2   - The local endpoint of the TCP connection is waiting for a connection termination request from the remote endpoint. 
	    Last_Ack     - The local endpoint of the TCP connection is waiting for the final acknowledgement of the connection termination request sent previously. 
	    Listen       - The local endpoint of the TCP connection is listening for a connection request from any remote endpoint. 
	    Syn_Received - The local endpoint of the TCP connection has sent and received a connection request and is waiting for an acknowledgment. 
	    Syn_Sent     - The local endpoint of the TCP connection has sent the remote endpoint a segment header with the synchronize (SYN) control bit set and is waiting for a matching connection request. 
	    Time_Wait    - The local endpoint of the TCP connection is waiting for enough time to pass to ensure that the remote endpoint received the acknowledgement of its connection termination request. 
	    Unknown      - The TCP connection state is unknown.
	
	    Values are based on the TcpState Enumeration:
	    http://msdn.microsoft.com/en-us/library/system.net.networkinformation.tcpstate%28VS.85%29.aspx
        
        Cookie Monster - modified these to match netstat output per here:
        http://support.microsoft.com/kb/137984

    .PARAMETER ComputerName
        If defined, run this command on a remote system via WMI.  \\computername\c$\netstat.txt is created on that system and the results returned here

    .PARAMETER ShowHostNames
        If specified, will attempt to resolve local and remote addresses.

    .PARAMETER tempFile
        Temporary file to store results on remote system.  Must be relative to remote system (not a file share).  Default is "C:\netstat.txt"

    .PARAMETER AddressFamily
        Filter by IP Address family: IPv4, IPv6, or the default, * (both).

        If specified, we display any result where both the localaddress and the remoteaddress is in the address family.

    .EXAMPLE
	    Get-NetworkStatistics | Format-Table

    .EXAMPLE
	    Get-NetworkStatistics iexplore -computername k-it-thin-02 -ShowHostNames | Format-Table

    .EXAMPLE
	    Get-NetworkStatistics -ProcessName md* -Protocol tcp

    .EXAMPLE
	    Get-NetworkStatistics -Address 192* -State LISTENING

    .EXAMPLE
	    Get-NetworkStatistics -State LISTENING -Protocol tcp

    .EXAMPLE
        Get-NetworkStatistics -Computername Computer1, Computer2

    .EXAMPLE
        'Computer1', 'Computer2' | Get-NetworkStatistics

    .OUTPUTS
	    System.Management.Automation.PSObject

    .NOTES
	    Author: Shay Levy, code butchered by Cookie Monster
	    Shay's Blog: http://PowerShay.com
        Cookie Monster's Blog: http://ramblingcookiemonster.github.io/

    .LINK
        http://gallery.technet.microsoft.com/scriptcenter/Get-NetworkStatistics-66057d71
    #>	
	[OutputType('System.Management.Automation.PSObject')]
	[CmdletBinding()]
	param(
		
		[Parameter(Position=0)]
		[System.String]$ProcessName='*',
		
		[Parameter(Position=1)]
		[System.String]$Address='*',		
		
		[Parameter(Position=2)]
		$Port='*',

		[Parameter(Position=3,
                   ValueFromPipeline = $True,
                   ValueFromPipelineByPropertyName = $True)]
        [System.String[]]$ComputerName=$env:COMPUTERNAME,

		[ValidateSet('*','tcp','udp')]
		[System.String]$Protocol='*',

		[ValidateSet('*','Closed','Close_Wait','Closing','Delete_Tcb','DeleteTcb','Established','Fin_Wait_1','Fin_Wait_2','Last_Ack','Listening','Syn_Received','Syn_Sent','Time_Wait','Unknown')]
		[System.String]$State='*',

        [switch]$ShowHostnames,
        
        [switch]$ShowProcessNames = $true,	

        [System.String]$TempFile = "C:\netstat.txt",

        [validateset('*','IPv4','IPv6')]
        [string]$AddressFamily = '*'
	)
    
	begin{
        #Define properties
            $properties = 'ComputerName','Protocol','LocalAddress','LocalPort','RemoteAddress','RemotePort','State','ProcessName','PID'

        #store hostnames in array for quick lookup
            $dnsCache = @{}
            
	}
	
	process{

        foreach($Computer in $ComputerName) {

            #Collect processes
            if($ShowProcessNames){
                Try {
                    $processes = Get-Process -ComputerName $Computer -ErrorAction stop | Select-Object name, id
                }
                Catch {
                    Write-warning "Could not run Get-Process -computername $Computer.  Verify permissions and connectivity.  Defaulting to no ShowProcessNames"
                    $ShowProcessNames = $false
                }
            }
	    
            #Handle remote systems
                if($Computer -ne $env:COMPUTERNAME){

                    #define command
                        [string]$cmd = "cmd /c c:\windows\system32\netstat.exe -ano >> $tempFile"
            
                    #define remote file path - computername, drive, folder path
                        $remoteTempFile = "\\{0}\{1}`${2}" -f "$Computer", (split-path $tempFile -qualifier).TrimEnd(":"), (Split-Path $tempFile -noqualifier)

                    #delete previous results
                        Try{
                            $null = Invoke-WmiMethod -class Win32_process -name Create -ArgumentList "cmd /c del $tempFile" -ComputerName $Computer -ErrorAction stop
                        }
                        Catch{
                            Write-Warning "Could not invoke create win32_process on $Computer to delete $tempfile"
                        }

                    #run command
                        Try{
                            $processID = (Invoke-WmiMethod -class Win32_process -name Create -ArgumentList $cmd -ComputerName $Computer -ErrorAction stop).processid
                        }
                        Catch{
                            #If we didn't run netstat, break everything off
                            Throw $_
                            Break
                        }

                    #wait for process to complete
                        while (
                            #This while should return true until the process completes
                                $(
                                    try{
                                        get-process -id $processid -computername $Computer -ErrorAction Stop
                                    }
                                    catch{
                                        $FALSE
                                    }
                                )
                        ) {
                            start-sleep -seconds 2 
                        }
            
                    #gather results
                        if(test-path $remoteTempFile){
                    
                            Try {
                                $results = Get-Content $remoteTempFile | Select-String -Pattern '\s+(TCP|UDP)'
                            }
                            Catch {
                                Throw "Could not get content from $remoteTempFile for results"
                                Break
                            }

                            Remove-Item $remoteTempFile -force

                        }
                        else{
                            Throw "'$tempFile' on $Computer converted to '$remoteTempFile'.  This path is not accessible from your system."
                            Break
                        }
                }
                else{
                    #gather results on local PC
                        $results = netstat -ano | Select-String -Pattern '\s+(TCP|UDP)'
                }

            #initialize counter for progress
                $totalCount = $results.count
                $count = 0
    
            #Loop through each line of results    
	            foreach($result in $results) {
            
    	            $item = $result.line.split(' ',[System.StringSplitOptions]::RemoveEmptyEntries)
    
    	            if($item[1] -notmatch '^\[::'){
                    
                        #parse the netstat line for local address and port
    	                    if (($la = $item[1] -as [ipaddress]).AddressFamily -eq 'InterNetworkV6'){
    	                        $localAddress = $la.IPAddressToString
    	                        $localPort = $item[1].split('\]:')[-1]
    	                    }
    	                    else {
    	                        $localAddress = $item[1].split(':')[0]
    	                        $localPort = $item[1].split(':')[-1]
    	                    }
                    
                        #parse the netstat line for remote address and port
    	                    if (($ra = $item[2] -as [ipaddress]).AddressFamily -eq 'InterNetworkV6'){
    	                        $remoteAddress = $ra.IPAddressToString
    	                        $remotePort = $item[2].split('\]:')[-1]
    	                    }
    	                    else {
    	                        $remoteAddress = $item[2].split(':')[0]
    	                        $remotePort = $item[2].split(':')[-1]
    	                    }

                        #Filter IPv4/IPv6 if specified
                            if($AddressFamily -ne "*")
                            {
                                if($AddressFamily -eq 'IPv4' -and $localAddress -match ':' -and $remoteAddress -match ':|\*' )
                                {
                                    #Both are IPv6, or ipv6 and listening, skip
                                    Write-Verbose "Filtered by AddressFamily:`n$result"
                                    continue
                                }
                                elseif($AddressFamily -eq 'IPv6' -and $localAddress -notmatch ':' -and ( $remoteAddress -notmatch ':' -or $remoteAddress -match '*' ) )
                                {
                                    #Both are IPv4, or ipv4 and listening, skip
                                    Write-Verbose "Filtered by AddressFamily:`n$result"
                                    continue
                                }
                            }
    	    		
                        #parse the netstat line for other properties
    	    		        $procId = $item[-1]
    	    		        $proto = $item[0]
    	    		        $status = if($item[0] -eq 'tcp') {$item[3]} else {$null}	

                        #Filter the object
		    		        if($remotePort -notlike $Port -and $localPort -notlike $Port){
                                write-verbose "remote $Remoteport local $localport port $port"
                                Write-Verbose "Filtered by Port:`n$result"
                                continue
		    		        }

		    		        if($remoteAddress -notlike $Address -and $localAddress -notlike $Address){
                                Write-Verbose "Filtered by Address:`n$result"
                                continue
		    		        }
    	    			     
    	    			    if($status -notlike $State){
                                Write-Verbose "Filtered by State:`n$result"
                                continue
		    		        }

    	    			    if($proto -notlike $Protocol){
                                Write-Verbose "Filtered by Protocol:`n$result"
                                continue
		    		        }
                   
                        #Display progress bar prior to getting process name or host name
                            Write-Progress  -Activity "Resolving host and process names"`
                                -Status "Resolving process ID $procId with remote address $remoteAddress and local address $localAddress"`
                                -PercentComplete (( $count / $totalCount ) * 100)
    	    		
                        #If we are running showprocessnames, get the matching name
                            if($ShowProcessNames -or $PSBoundParameters.ContainsKey -eq 'ProcessName'){
                        
                                #handle case where process spun up in the time between running get-process and running netstat
                                if($procName = $processes | Where-Object {$_.id -eq $procId} | Select-Object -ExpandProperty name ){ }
                                else {$procName = "Unknown"}

                            }
                            else{$procName = "NA"}

		    		        if($procName -notlike $ProcessName){
                                Write-Verbose "Filtered by ProcessName:`n$result"
                                continue
		    		        }
    	    						
                        #if the showhostnames switch is specified, try to map IP to hostname
                            if($showHostnames){
                                $tmpAddress = $null
                                try{
                                    if($remoteAddress -eq "127.0.0.1" -or $remoteAddress -eq "0.0.0.0"){
                                        $remoteAddress = $Computer
                                    }
                                    elseif($remoteAddress -match "\w"){
                                        
                                        #check with dns cache first
                                            if ($dnsCache.containskey( $remoteAddress)) {
                                                $remoteAddress = $dnsCache[$remoteAddress]
                                                write-verbose "using cached REMOTE '$remoteAddress'"
                                            }
                                            else{
                                                #if address isn't in the cache, resolve it and add it
                                                    $tmpAddress = $remoteAddress
                                                    $remoteAddress = [System.Net.DNS]::GetHostByAddress("$remoteAddress").hostname
                                                    $dnsCache.add($tmpAddress, $remoteAddress)
                                                    write-verbose "using non cached REMOTE '$remoteAddress`t$tmpAddress"
                                            }
                                    }
                                }
                                catch{ }

                                try{

                                    if($localAddress -eq "127.0.0.1" -or $localAddress -eq "0.0.0.0"){
                                        $localAddress = $Computer
                                    }
                                    elseif($localAddress -match "\w"){
                                        #check with dns cache first
                                            if($dnsCache.containskey($localAddress)){
                                                $localAddress = $dnsCache[$localAddress]
                                                write-verbose "using cached LOCAL '$localAddress'"
                                            }
                                            else{
                                                #if address isn't in the cache, resolve it and add it
                                                    $tmpAddress = $localAddress
                                                    $localAddress = [System.Net.DNS]::GetHostByAddress("$localAddress").hostname
                                                    $dnsCache.add($localAddress, $tmpAddress)
                                                    write-verbose "using non cached LOCAL '$localAddress'`t'$tmpAddress'"
                                            }
                                    }
                                }
                                catch{ }
                            }
    
    	    		    #Write the object	
    	    		        New-Object -TypeName PSObject -Property @{
		    		            ComputerName = $Computer
                                PID = $procId
		    		            ProcessName = $procName
		    		            Protocol = $proto
		    		            LocalAddress = $localAddress
		    		            LocalPort = $localPort
		    		            RemoteAddress =$remoteAddress
		    		            RemotePort = $remotePort
		    		            State = $status
		    	            } | Select-Object -Property $properties								

                        #Increment the progress counter
                            $count++
                    }
                }
        }
    }}

#-------------------------------------------------------------------------------------------------------------------------------------------------------

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

#-------------------------------------------------------------------------------------------------------------------------------------------------------

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

    Finds the size of the C:\users folder in MegaBytes
    
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
#-------------------------------------------------------------------------------------------------------------------------------------------------------