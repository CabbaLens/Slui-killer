@echo off
rem this isn't the exact code of either of the programs
title slui.exe terminator
rem echo waiting...
rem timeout 250
:loop
tasklist /fi "imagename eq slui.exe" | find /i "slui.exe" > nul
if not errorlevel 1 (
echo %time%: slui found 
taskkill /f /im "slui.exe"
echo Pausing for 420 seconds.
timeout 420
goto loop
) else (
echo %time%: slui NOT found :)
echo %time%: Pausing for 10 seconds.
timeout 10
goto loop
)
