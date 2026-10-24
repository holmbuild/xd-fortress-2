@echo off
rem XD Fortress 2: downloads the newest version from GitHub. Close the game first.
cd /d "%~dp0"
where git >nul 2>nul
if errorlevel 1 (
    echo Git is not installed: https://git-scm.com/download/win
    pause
    exit /b 1
)
echo Updating XD Fortress 2...
git pull --ff-only
if errorlevel 1 (
    echo.
    echo The update failed. Is the game still running? Close it and try again.
    echo Still failing: git reset --hard origin/main  ^(throws away changes made in this folder^)
) else (
    echo.
    echo Up to date.
)
pause
