Function Set-Password {

<#
.SYNOPSIS
By Taylor Lee
Modified 05092018
  
.DESCRIPTION
Sets an Active Directory Password and provides an option to require a password 
   
.INPUTS
    Param (
      [Parameter(Mandatory=$true)]$Username,
      [Parameter(Mandatory=$true)][SecureString]$Password
          )
  
    Set-ADAccountPassword -identity $username -Reset -NewPassword $Password 

    $Prompt = Read-Hostspecial "Require a Password Change? Type Yes or No." -Promptcolor Green

        if ($Prompt -eq 'Yes') {
    Set-ADUser -Identity $Username -ChangePasswordAtLogon $true
	    } else {
    Write-Host " "
	    }
#>
  
    Param (
      [Parameter(Mandatory=$true)]$Username,
      [Parameter(Mandatory=$true)][SecureString]$Password
          )
  
    Set-ADAccountPassword -identity $username -Reset -NewPassword $Password 

    $Prompt = Read-Host "Require a Password Change? Type Yes or No." 
    
        if ($Prompt -eq 'Yes') {
    Set-ADUser -Identity $Username -ChangePasswordAtLogon $true
	    } else {
    Write-Host " "
	    }
}