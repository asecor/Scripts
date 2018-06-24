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
        Write-Host "Get-FolderSize               ..Gets FolderSize of a single folder quickly"                 -Foregroundcolor Yellow
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

Function Get-Template {

    <#
    .SYNOPSIS
    By Taylor Lee
    Modified 05072018
      
    .DESCRIPTION
    <Brief description of script>
      
    .PARAMETER <Parameter_Name>
    <Brief description of parameter input required. Repeat this attribute if required>
      
    .INPUTS
    <Inputs if any, otherwise state None>
      
    .OUTPUTS
    <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>
    
    .NOTES
    Version:        1.0
    Author:         <Name>
    Creation Date:  <Date>
    Purpose/Change: Initial script development
        
    .EXAMPLE
    <Example goes here. Repeat this attribute for more than one example>
    
    .Link
    <Link goes here>
    #>
    
    [CmdletBinding(SupportsShouldProcess)]   

        Param (
          [Parameter(Position=0, Mandatory = $true)]$message,
          [Parameter(Mandatory=$true,Position=1)][SecureString]$Message2
              )
      
        Write-Host $message -ForegroundColor Green
        Write-Host $message2 -ForegroundColor Green
      
    }
