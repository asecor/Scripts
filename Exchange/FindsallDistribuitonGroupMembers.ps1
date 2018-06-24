 Initialize array with two fields:

# Distribution group, Members

$totalObj = @()

 

# Retrieve all DGs

$temp = Get-DistributionGroup -ResultSize Unlimited | 

      

       # Loop through all distribution groups

       ForEach-Object {          

      

             # Add the members of the DG to an array

             [array]$mem = Get-DistributionGroupMember -id $_     

            

             # Loop through the DG and assign each member name to the variable $member

             for ($i = 0; $i -lt $mem.Count; $i++) {

                    $member = $mem[$i].name

                   

                    # Create instance of object of type .NET

                    $obj = New-Object System.Object

      

                    # Add the name of the DG to the object

                    $obj | Add-Member -MemberType NoteProperty -Value $_.Name -Name 'Distribution Group' -Force

                   

                    # Add the member name to the object

                    $obj | Add-Member -MemberType NoteProperty -Value $member -Name 'Members' -Force -PassThru

                   

                    # Add the object to the array

                    $totalObj += $obj

             }

       }

 

# Pipe output to .csv file

$totalObj | Export-Csv -Encoding 'Unicode' c:\DistributionGroups.csv