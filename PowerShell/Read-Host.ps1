#Read-Host is used to prompt for input to a variable that's used in a Profile, Module, Function, or Script
#Does not work withing a Parameter

#Example of Read-Host being used in a if or else funciton
 $Prompt = Read-Host "Require a Password Change? Type Yes or No."
    
 if ($Prompt -eq 'Yes') {
Set-ADUser -Identity $Username -ChangePasswordAtLogon $true
 } else {
Write-Host " "
 }