@echo off
rem XD Fortress 2: repairs a stuck update. Put this file in the mod folder (where Uppdatera.cmd is)
rem and double-click it. Close the game first.
rem Makes the mod's files exactly like GitHub. Your settings, screenshots and own music are kept.
cd /d "%~dp0"
(
    where git >nul 2>nul
    if errorlevel 1 (
        echo Git is not installed: https://git-scm.com/download/win
        echo Install it ^(click Next all the way^), then run this file again.
        pause
        exit /b 1
    )
    if not exist ".git" (
        echo This file must be in the mod folder, next to Uppdatera.cmd.
        echo Move it there and run it again.
        pause
        exit /b 1
    )
    %SystemRoot%\System32\tasklist.exe | %SystemRoot%\System32\find.exe /i "hl2_win64" >nul
    if not errorlevel 1 (
        echo The game is still running. Close TF2 completely and run this file again.
        pause
        exit /b 1
    )
    echo Repairing the XD Fortress 2 update...
    git fetch origin main && git reset -q --hard origin/main && (
        echo.
        echo Repaired and up to date. Next time just use Uppdatera.cmd.
        pause
        exit /b 0
    )
    echo.
    echo Could not download from GitHub. Check your internet connection and try again.
    echo If it still fails, send a screenshot of this window.
    pause
    exit /b 1
)
