@echo off
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Run this as Administrator!
    pause
    exit /b 1
)

set "TARGET=C:\Program Files\Volumetrica Trading\Deepchart"

if not exist "%TARGET%\Deepchart.exe" (
    echo Deepchart not found at %TARGET%
    echo Install Deepchart first, then run this.
    pause
    exit /b 1
)

if not exist "%TARGET%\Deepchart.dll.bak" (
    echo Backing up original Deepchart.dll...
    copy "%TARGET%\Deepchart.dll" "%TARGET%\Deepchart.dll.bak"
)

echo Installing patched Deepchart.dll...
copy /Y "%~dp0Deepchart.dll" "%TARGET%\Deepchart.dll"
echo.
echo Done! Launch Deepchart from the desktop shortcut.
pause
