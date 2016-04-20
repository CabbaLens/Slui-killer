@echo off
rem this isn't the exact code of either of the programs, but it uses the same commands.
title slui.exe terminator
rem msg * Slui terminator is running in the background.
rem timeout 300
:loop
tasklist /fi "imagename eq slui.exe" | find /i "slui.exe" > nul
if not errorlevel 1 (
echo %time%: slui found 
taskkill /f /im "slui.exe"
echo timeout 60 >> tempfile.bat
echo Pausing for 420 seconds.
timeout 420 >nul
del tempfile.bat
goto loop
) else (
echo %time%: slui NOT found :)
echo %time%: Pausing for 10 seconds.
timeout 10 >nul
goto loop
)
