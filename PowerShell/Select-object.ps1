#Expands output for truncated output
get-cimclass -classname *disk* | Select-Object -expand cimclassname

#select all values available
get-service | Select-Object *

#use the string paramters to expand a strings output in select object
get-messagetrackinglog | Select-Object {$_.Recipients} | export-csv c:\filename.csv