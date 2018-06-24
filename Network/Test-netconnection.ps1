#Initiates a ping with a traceroute
test-netconnection 1.1.1.1 -traceroute

#Test for specific ports being accessable
test-netconnection -commontcpport http -computername 1.1.1.1