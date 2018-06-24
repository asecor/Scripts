#Initiate azure ad full sync
#Run from visdc12r2a
Start-ADSyncSyncCycle -PolicyType Initial
#initiate Azure AD incremental Sync
Start-ADSyncSyncCycle -PolicyType Delta