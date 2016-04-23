REG ADD "HKCU\Control Panel\Desktop" /v Wallpaper /t  REG_SZ /d "C:\wallpaper\wallpaper.jpg" /f

RUNDLL32.exe user32.dll,UpdatePerUserSystemParameters
pause