@echo off
title SLUI.EXE KILLER - Video Demo Version
timeout 60
:loop
tasklist /fi "imagename eq slui.exe" | find /i "slui.exe" > nul
if not errorlevel 1 (
start killed.vbs
taskkill /f /im "slui.exe"
timeout 2 >nul
goto loop
) else (
cls
echo %time% Slui isn't found.
goto loop
)
