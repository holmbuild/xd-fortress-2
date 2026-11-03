@echo off
rem XD Fortress 2: installs, updates and repairs the mod. Just double-click this file.
set "XD_SELF=%~f0"
powershell -NoProfile -ExecutionPolicy Bypass -Command "$s=[IO.File]::ReadAllText($env:XD_SELF); iex $s.Substring($s.IndexOf('#'+'PS1'))" & (if not defined XD_NOPAUSE pause) & exit /b
#PS1
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'
$Repo = if ($env:XD_REPO) { $env:XD_REPO } else { 'https://github.com/holmbuild/xd-fortress-2.git' }
$Prov = [bool]$env:XD_PROV
function Say($t, $c = 'Gray') { Write-Host $t -ForegroundColor $c }
function Step($t) { Write-Host ''; Write-Host $t -ForegroundColor Cyan }
function Fail($t) {
    Write-Host ''
    Write-Host $t -ForegroundColor Red
    Write-Host 'Still stuck? Send a screenshot of this window.' -ForegroundColor Red
    exit 1
}

try {
Write-Host ''
Write-Host '  XD FORTRESS 2 - install and update  ' -ForegroundColor Black -BackgroundColor Yellow

# --- The game must be closed (it locks files) -------------------------------------------------
if (Get-Process -Name hl2_win64, hl2 -ErrorAction SilentlyContinue) {
    Fail 'The game is running. Close it and run this file again.'
}

# --- Steam and the sourcemods folder -----------------------------------------------------------
$reg = Get-ItemProperty 'HKCU:\Software\Valve\Steam' -ErrorAction SilentlyContinue
$steam = if ($reg -and $reg.SteamPath) { $reg.SteamPath -replace '/', '\' } else { $null }
if ($env:XD_SOURCEMODS) { $sourcemods = $env:XD_SOURCEMODS }
elseif ($reg -and $reg.SourceModInstallPath) { $sourcemods = $reg.SourceModInstallPath }
elseif ($steam) { $sourcemods = Join-Path $steam 'steamapps\sourcemods' }
else { Fail 'Steam was not found. Install Steam, log in once, and run this file again.' }

# --- Team Fortress 2 and Source SDK Base 2013 Multiplayer --------------------------------------
function Installed($id) {
    $libs = @(Join-Path $steam 'steamapps')
    $vdf = Join-Path $steam 'steamapps\libraryfolders.vdf'
    if (Test-Path $vdf) {
        foreach ($m in [regex]::Matches((Get-Content $vdf -Raw), '"path"\s+"([^"]+)"')) {
            $libs += (Join-Path ($m.Groups[1].Value -replace '\\\\', '\') 'steamapps')
        }
    }
    foreach ($l in $libs) {
        $acf = Join-Path $l "appmanifest_$id.acf"
        if ((Test-Path $acf) -and ((Get-Content $acf -Raw) -match '"StateFlags"\s+"4"')) { return $true }
    }
    return $false
}
if (-not $Prov) {
    foreach ($app in @(@{id = 440; name = 'Team Fortress 2'}, @{id = 243750; name = 'Source SDK Base 2013 Multiplayer'})) {
        if (Installed $app.id) { continue }
        Step "$($app.name) is missing. Steam opens an install window now: click Install."
        Start-Process "steam://install/$($app.id)"
        Say 'This window waits until the download is done. (It can take a while.)'
        while (-not (Installed $app.id)) { Start-Sleep -Seconds 10 }
        Say "$($app.name) is installed." Green
    }
}

# --- Git (a private copy if the PC has none) ---------------------------------------------------
$git = (Get-Command git -ErrorAction SilentlyContinue | Select-Object -First 1).Source
if (-not $git) {
    $mg = Join-Path $env:LOCALAPPDATA 'XDFortress2\mingit'
    $git = Join-Path $mg 'cmd\git.exe'
    if (-not (Test-Path $git)) {
        Step 'Downloading the downloader (Git, about 40 MB, only once)...'
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $zip = Join-Path $env:TEMP 'xd_mingit.zip'
        Invoke-WebRequest -UseBasicParsing 'https://github.com/git-for-windows/git/releases/download/v2.47.1.windows.1/MinGit-2.47.1-64-bit.zip' -OutFile $zip
        if (Test-Path $mg) { Remove-Item -Recurse -Force $mg }
        Expand-Archive $zip $mg
        Remove-Item $zip
    }
}
$env:GIT_TERMINAL_PROMPT = '0'
# Git writes progress and harmless messages to stderr: inside G they must not count as errors (PowerShell 5.1)
function G { $ErrorActionPreference = 'Continue'; & $git -c credential.helper= -c core.longpaths=true @args }

# --- The mod folder ----------------------------------------------------------------------------
New-Item -ItemType Directory -Force $sourcemods | Out-Null
$mod = Join-Path $sourcemods 'mod_tf'
$stamp = Get-Date -Format 'yyyyMMdd_HHmmss'
# Unzipped one level too deep (mod_tf\mod_tf): move the inner folder up, keep the outer one aside
if (-not (Test-Path "$mod\gameinfo.txt") -and (Test-Path "$mod\mod_tf\gameinfo.txt")) {
    Move-Item "$mod\mod_tf" "$sourcemods\mod_tf_up_$stamp"
    Rename-Item $mod "mod_tf_old_$stamp"
    Rename-Item "$sourcemods\mod_tf_up_$stamp" 'mod_tf'
    Say "Fixed a folder inside a folder (the empty outer one is now mod_tf_old_$stamp)."
}
$nytt = -not (Test-Path "$mod\gameinfo.txt")
New-Item -ItemType Directory -Force $mod | Out-Null
Set-Location -LiteralPath $mod
# A broken .git (the old updater stopped halfway): set it aside and start over
if (Test-Path '.git') {
    G rev-parse --git-dir *> $null
    if ($LASTEXITCODE -ne 0) { Rename-Item '.git' ".git_broken_$stamp"; Say 'Set aside a broken download folder (.git).' }
}
if (-not (Test-Path '.git')) { G init -q *> $null; if ($LASTEXITCODE) { Fail 'Could not prepare the mod folder.' } }
G remote remove origin *> $null
G remote add origin $Repo
if ($LASTEXITCODE) { Fail 'Could not prepare the mod folder.' }

if ($nytt) { Step 'Downloading XD Fortress 2 (about 1 GB the first time, after that only changes)...' }
else { Step 'Updating XD Fortress 2...' }
G fetch --depth 1 --no-tags origin main
if ($LASTEXITCODE) { Fail 'The download failed. Check your internet connection and run this file again.' }
G reset -q --hard FETCH_HEAD
if ($LASTEXITCODE) { Fail 'Could not write the files. Close the game (and anything else using the mod folder) and run this file again.' }
G checkout -q -B main *> $null
G branch -q -u origin/main *> $null

$ver = if (Test-Path 'xd_version.txt') { (Get-Content 'xd_version.txt' -Raw).Trim() } else { '' }
Write-Host ''
Write-Host "  Up to date. $ver  " -ForegroundColor Black -BackgroundColor Green

# --- A desktop shortcut for later updates, and on the first install a Steam restart -----------
$genvag = Join-Path ([Environment]::GetFolderPath('Desktop')) 'Update XD Fortress 2.lnk'
$mal = Join-Path $mod 'update.cmd'
if (-not $Prov) {
    try {
        $lnk = (New-Object -ComObject WScript.Shell).CreateShortcut($genvag)
        if ($lnk.TargetPath -eq $mal) { throw 'ok' }
        $lnk.TargetPath = $mal
        $lnk.WorkingDirectory = $mod
        $lnk.Save()
        Say 'Made a desktop shortcut "Update XD Fortress 2" for later updates.'
    } catch { }
}
if ($nytt -and -not $Prov) {
    Step 'Steam must restart to show XD Fortress 2 in your library. Restarting Steam...'
    $exe = Join-Path $steam 'steam.exe'
    if (Get-Process -Name steam -ErrorAction SilentlyContinue) {
        Start-Process $exe '-shutdown'
        for ($i = 0; $i -lt 60 -and (Get-Process -Name steam -ErrorAction SilentlyContinue); $i++) { Start-Sleep -Seconds 1 }
    }
    Start-Process $exe
    Say 'Done! Find XD Fortress 2 in your Steam library and click Play.' Green
}
} catch {
    Fail "Something went wrong: $($_.Exception.Message)"
}
