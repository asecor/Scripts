#Modules are just scripts with functions not unlike powershell
#Module will auto load after a command for hte module is run if the module is in path

#Create a Module
$modulesfolder = "one of the modules folder paths"
mkdir "$ModulesFolder\MyModuleforfoldername"
$ModuleFile = New-Item -Path "$modulesfolder\MyModuleFolderName\MyModuleName.psm1"

#Import the module if not in path
\\Servername\share\folder\modulefilename.psm1

#Show Existing Module file paths
$Env:PSModulePath
[Environment]::GetEnvironmentVariable("PSModulePath")

#Add Module file path to existing module paths
$p=  [Environment]::GetEnvironmentVariable("PSModulePath")
$p += ";c:\folder\modulefolder\modulefilename.psm1"
[Environment]::SetEnvironmentVariable("PSModulePath",$p)

#Default Module file path for single user
$home\Documents\WindowsPowerShell\Modules\<Module Folder>\<Module Files>

#Defualt all users module file path
$EnvProgramFiles\WindowsPowerShell\Modules\<Module Folder>\<Module Files>

