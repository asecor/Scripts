###Replacement for WMI

#get all cimclasses that have disk in the name
get-cimclass -classname *disk* 

#View useable classmethods for a cimclass
get-cimclass Cim_diskdrive | Select-Object -expand cimclassmethods

#get cimclass output
get-ciminstance CIM_diskdrive
