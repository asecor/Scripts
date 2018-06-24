SCHTASKS /create /TN DeleteStalePrintJobs /TR "C:\folder\DeleteStalePrintJobs.bat" /SD 01/01/2001 /ED 01/01/2040 /ST 01:00 /SC Minute /MO 15 /RU System /RL Highest /F



