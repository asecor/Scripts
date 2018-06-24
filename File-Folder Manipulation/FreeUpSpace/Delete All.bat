cd c:\
echo /y | del c:\windows\temp /s /f
echo /y | del *.log /s /f
echo /y | rd /s c:\$recycle.bin
echo /y | del *.sig /s /f
cd C:\users\
del thumbcache*.db /s /f
del sbamtray*.csv /s /fc
cd C:\Windows\ServiceProfiles\LocalService\AppData\Local\
del *FontCache*.dat /f




