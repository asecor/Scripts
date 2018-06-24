@echo off
setlocal

C:
CD \
CD "C:\folder"

for %%a in (*.dll) do echo Register %%a & %SystemRoot%\Syswow64\regsvr32.exe /s %%a
for %%a in (*.ocx) do echo Register %%a & %SystemRoot%\Syswow64\regsvr32.exe /s %%a
for %%a in (*.ui) do echo Register %%a & %SystemRoot%\Syswow64\regsvr32.exe /s %%a

