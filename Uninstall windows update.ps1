$SearchUpdates = dism /online /get-packages 
$updates = $SearchUpdates.replace("Package Identity : ", "") | findstr "KB4088878" 
DISM.exe /Online /Remove-Package /PackageName:$updates /quiet /norestart 
