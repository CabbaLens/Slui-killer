@echo off
title SLUI.EXE KILLER - LOADING
echo SLUI.EXE KILLER (visible)
:loop
tasklist /fi "imagename eq slui.exe" | find /i "slui.exe" > nul
if not errorlevel 1 (
title SLUI.EXE KILLER - PROCESS IS FOUND
taskkill /f /im "slui.exe"
rem start killed.bat
echo %time%: slui WAS found
timeout 420
goto loop
) else (
title SLUI.EXE KILLER - PROCESS ISN'T FOUND
cls
echo %time%: slui NOT found 
timeout 2 >nul
goto loop
)
