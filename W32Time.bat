Use External time servers
w32tm /config /manualpeerlist:"0.us.pool.ntp.org,0x1 1.us.pool.ntp.org,0x1 2.us.pool.ntp.org,0x1 3.us.pool.ntp.org,0x1"
w32tm /config /reliable:yes
net stop w32time
net start w32time
w32tm /resync /nowait
w32tm /config /syncfromflags:domhier /update 
net stop w32time 
net start w32time


reset to default
net stop w32time 
w32tm /unregister 
w32tm /register 
net start w32time