Get-ADDomain | 
select Name,Forest,ChildDomains,DistinguishedName,DNSRoot,DomainMode,ReplicaDirectoryServers,InfrastructureMaster, RIDMaster, PDCEmulator |
fl

Get-ADForest | 
Select-Object DomainNamingMaster, SchemaMaster | 
fl

