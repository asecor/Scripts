Function Remove-All {

    <#
    .Synopsis
    By Taylor Lee
    Modified 060712018
    
    .Description
    This Command removes log files, temp files, and empties the recycle bin. Access denied errors do not indicate a failue of the script.
    
    .Inputs
        [CmdletBinding(SupportsShouldProcess)]
        param (     
        )
        $ErrorActionPreference = 'SilentlyContinue'

        Write-Host "Freeing up space. Enjoy your Coffee!" -BackgroundColor Black -ForegroundColor Green

        Get-ChildItem -path "C:\windows\logs" -Include '*.logs' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path "C:\windows\logs" -Include '*.cab' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path "C:\" -Include '*.logs' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path 'c:\$recycle.bin' -Include '*' -Recurse -force | Remove-Item -force -Recurse
        $tempfolders = @("C:\Windows\Temp\*", "C:\Windows\Prefetch\*", "C:\Documents and Settings\*\Local Settings\temp\*", "C:\Users\*\Appdata\Local\Temp\*")
        Remove-Item $tempfolders -force -recurse
        $tempinternetfolders = @("C:\Users\*\Appdata\Local\Temp\Microsoft\Windows\Temporary Internet Files\*", "C:\Users\*\Appdata\Local\TMicrosoft\Windows\INetCache\*", "C:\Users\*\Appdata\Local\Microsoft\Windows\Cookies\*")
        Remove-Item $tempinternetfolders -force -recurse

        $ErrorActionPreference = 'Continue'
    }
        .NOTES
    No Prequisites

    The command will return many errors for files it can't access. That is not a result of the command failing.
    #>
        [CmdletBinding(SupportsShouldProcess)]
        param (     
        )
        $ErrorActionPreference = 'SilentlyContinue'

        Write-Host "Freeing up space. Enjoy your Coffee!" -BackgroundColor Black -ForegroundColor Green

        Get-ChildItem -path "C:\windows\logs" -Include '*.logs' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path "C:\windows\logs" -Include '*.cab' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path "C:\" -Include '*.logs' -Recurse -force | Remove-Item -force -Recurse
        Get-ChildItem -path 'c:\$recycle.bin' -Include '*' -Recurse -force | Remove-Item -force -Recurse
        $tempfolders = @("C:\Windows\Temp\*", "C:\Windows\Prefetch\*", "C:\Documents and Settings\*\Local Settings\temp\*", "C:\Users\*\Appdata\Local\Temp\*")
        Remove-Item $tempfolders -force -recurse
        $tempinternetfolders = @("C:\Users\*\Appdata\Local\Temp\Microsoft\Windows\Temporary Internet Files\*", "C:\Users\*\Appdata\Local\TMicrosoft\Windows\INetCache\*", "C:\Users\*\Appdata\Local\Microsoft\Windows\Cookies\*")
        Remove-Item $tempinternetfolders -force -recurse
        powercfg.exe /hibernate off
        Remove-Item c:\hiberfil.sys -force

        $ErrorActionPreference = 'Continue'
    }