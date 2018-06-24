#Continue command on next line without it being registered as a seperate command
` backtick at the end of a command line in a script to continue the command on the next line. Commands can also be continued on the next line if the last entry was a | pipe.

#Return a value without the table column header
(get-ciminstance win32_operatingsystem).caption
instead of 
get-ciminstance win32_operatingsystem | select caption

#Run multiple commands on the same line with ;
get-service;get-process

#Operators
Use operators to perform functions

#Add dates to outputed scripts for tracking
write-output get-date | outfile $outpath -append

#Prompt for input for script variables
$Computer = Read-Host "Type a Computer Name" 

#Use read-hostspecial function for special prompting
$Computer = Read-Hostspecial "Type a Computer Name" -Promptcolor green
$Password = Read-Hostspecial "Type your Password" -Promptcolor green -AsSecureString

#Working with arrays
$a.count get the count of items in an array
$a[0..3] 			output 4 top items in an array
$a[0]    			output top item in an array
$a[-1]   			output second to last item in an array
$a[0..9$a.count-2)] output all but last 2 items in an array
$b[0].column 		get the first item in a specific colum of an array output

#Working with Hash tables (good for creating custom tables)
$variable = @{name="name";Title="MVP";Computer="computer"}            Gives static values
$variable = @{name=whoami;Title="MVP";Computer=hostname}                 Gives dynamic values
$variable.add("number","281-297-2222")                                   Add value to a hash table
$variable.remove("name")                                                 Remove value from a hash table
$service = get-eventlog system -newest 100 | group source -ashashtable   Convert command output into a hash table
$variable.getenumerator() | sort -property name                                    Use enumeration to allow function to be applied to the hash table variable

#Use custom Members
$Runtime =  @{name="Runtime";Expression={(get-date) - $_.StartTime}}  Creates variable containing the custom member
get-process | select Name,$Runtime                                    Applying the custom member

#Have comments displayed when a script is running
write-host "this is my comment" -foregroundcolor green

#Put variables in a parameters block to allow parameters to be set without having to edit the script manually
Param (
	$Computers = "localhost"
	$Count = "1"
)
Test-connection $computers -count $count

#Use Where to remove null returned items
Get-CimInstance win32_networkadapterconfiguration | where {$_.IPAddress -ne $null} | select * | fl

#Add functions to your powershell profile for repeatedly used scripts
$profile will show the profile path
modify the profile to contain any modules you want loaded and any functions written
