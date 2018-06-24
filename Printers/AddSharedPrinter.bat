REM --------------------------------------------------------DoNotDelete

cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r 1.1.1.1 -h 1.1.1.1 -o raw -n 9100
rundll32 printui.dll,PrintUIEntry /ia /m "HP Universal Printing PCL 6" /f "C:\Users\username\Downloads\pcl6-usb-x64-6.5.0.22695-b\Installer\DriverPackage\64bit\hpcu210u.inf"
rundll32 printui.dll,PrintUIEntry /if /b DoNotDelete /f "C:\Users\username\Downloads\pcl6-usb-x64-6.5.0.22695-b\Installer\DriverPackage\64bit\hpcu210u.inf" /r 1.1.1.1 /m "HP Universal Printing PCL 6"
cscript C:\Windows\System32\Printing_Admin_Scripts\en-US\prncnfg.vbs -t -p DoNotDelete +shared -h DoNotDelete

pause
