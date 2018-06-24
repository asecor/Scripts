netsh winsock reset
netsh int ip reset
shutdown /r /t 0 /f
ipconfig /release
ipconfig /renew
