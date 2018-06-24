$groupname = "Name of AD Group"

get-adgroupmember -identity $groupname | Select-Object  name | out-file c:\GroupMembers.csv
