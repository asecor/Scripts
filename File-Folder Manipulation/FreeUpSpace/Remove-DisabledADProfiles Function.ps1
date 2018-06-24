Function Remove-DisabledADProfiles {

<#
.Synopsis
By Taylor Lee
Created 052018

.Description
This command deletes profiles that are disabled in active directoy on the local Workstation or Server.

.Notes
If this command continuosly fails you need to import the ActiveDirectory Module.
#>

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