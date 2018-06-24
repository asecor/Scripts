REM Removes the ability to peek passwords in windows password prompting
REG ADD "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\CredUI" /v DisablePasswordReveal /t REG_DWORD /d 1 /f