#List built-in and existing variables
get-variable

#Use of ' will return plain text
$ip = localhost
$variablename = '$ip'

#Use of " will return the variable
$ip = localhost
$variablename = "$ip"

#Use variable as short for a command
$variablename = test-netconnection

#Get command output as a variable
Test-connection 1.1.1.1 -outvariable variablename

#Return a variable
$variablename

#Filter part of variable output removing table coulumn in process
$s = get-service bits
$s.status

#Output and array of variables
$array="a","b","c"
 
