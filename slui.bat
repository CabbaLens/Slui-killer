@echo off
title slui.exe terminator
msg * Slui terminator is running in the background.
:loop
tasklist /fi "imagename eq slui.exe" | find /i "slui.exe" > nul
if not errorlevel 1 (
echo %time%: slui found 
taskkill /f /im "slui.exe"
echo @echo off >> temporaryfile.bat
echo @echo off >> tempfile.bat
echo title slui found >> tempfile.bat
echo slui was found at %time%, and was terminated. >> tempfile.bat
echo timeout 60 >> tempfile.bat
start tempfile.bat
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
