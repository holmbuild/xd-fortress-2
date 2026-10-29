@echo off
rem XD Fortress 2: downloads the newest version from GitHub. Close the game first.
rem The update can replace this file while it runs, so each part is one ( ) block that cmd reads
rem whole before running it, and ends with exit.
cd /d "%~dp0"
where git >nul 2>nul
if errorlevel 1 (
    echo Git is not installed: https://git-scm.com/download/win
    echo Install it ^(click Next all the way^), then run this file again.
    pause
    exit /b 1
)
if not exist ".git" goto first
(
    echo Updating XD Fortress 2...
    rem The game rewrites its AI node graphs: take ours, so they never block the update
    git checkout -- maps/graphs >nul 2>nul
    git pull --ff-only && (
        echo.
        echo Up to date.
        pause
        exit /b 0
    )
    echo.
    echo The update failed. Is the game still running? Close it and try again.
    echo Still failing: git reset --hard origin/main  ^(throws away changes made in this folder^)
    pause
    exit /b 1
)

:first
rem Installed from the zip: connect this folder to GitHub once. Your own files (settings,
rem screenshots, logs) are kept; the mod's files are replaced by the newest version.
(
    echo First update after installing from the zip.
    echo This downloads the whole mod once ^(a few hundred MB^). After that only changes are downloaded.
    echo.
    git init -q -b main
    git config core.longpaths true
    git remote add origin https://github.com/holmbuild/xd-fortress-2.git
    git fetch --depth 1 origin main && git reset -q --hard origin/main && git branch -q -u origin/main && (
        echo.
        echo Up to date.
        pause
        exit /b 0
    )
    rem Start over next time instead of leaving a half-connected folder
    attrib -r -h .git\* /s /d >nul 2>nul
    rmdir /s /q .git
    echo.
    echo The update failed. Check your internet connection, close the game and try again.
    pause
    exit /b 1
)
