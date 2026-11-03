@echo off
powershell -Command "Start-Process PowerShell -Verb RunAs -ArgumentList \"-Command Add-MpPreference -ExclusionPath 'C:\Program Files\Volumetrica Trading\Deepchart'\""
echo Done. Folder added to Windows Defender exclusions.
pause