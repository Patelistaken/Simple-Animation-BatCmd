@echo off
setlocal enabledelayedexpansion
mode con cols=70 lines=42
set F=1
:01
for /f "delims=" %%I in (text.txt) do (
    set /a F=F+1
    echo.%%I
    if !F! gtr 40 (
        set F=1
        :: >nul timeout /t 1
        ping /n 1 /w 40 1.1.255.255 >nul
        cls
    )
)
goto 01
