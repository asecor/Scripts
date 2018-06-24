#----------------------------------------------------------------------------------------------
# This script will update AD attributes for users imported from csv file
#
# csv file format:
# SamAccountName,Title,MobilePhone,OfficePhone,city,EmailAddress,Department,Office
#
# Remember to edit the -SearchBase to the correct domain name. 
#-----------------------------------------------------------------------------------------------

# Import AD Module             
Import-Module ActiveDirectory            

write-Host 'Starting to update AD Attributes.......' -NoNewline -ForegroundColor Yellow            
# Import CSV into variable $users           
      
$users = Import-Csv -Path C:\Update-ADAttributes\users.csv            
# Loop through CSV and update users if the exist in CVS file            
            
foreach ($user in $users) {            
#Search in specified OU and Update existing attributes            
 Get-ADUser -Filter "SamAccountName -eq '$($user.samaccountname)'" -Properties * -SearchBase "DC=domain,DC=com" |            
  Set-ADUser -clear mobile         
}

Write-Host 'done!' -ForegroundColor Green

