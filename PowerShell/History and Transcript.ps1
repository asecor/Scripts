#records all commands only
Get-history | out-file c:\history.txt

#records all input and output
Start-Transcript | out-file c:\transcript.txt 

#stop transcript recording
stop-transcript