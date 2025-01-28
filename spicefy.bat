@echo off

REM Step 1: Download and install Spotify
set "SPOTIFY_URL=https://download.scdn.co/SpotifySetup.exe"
set "SPOTIFY_INSTALLER=SpotifySetup.exe"

REM Download SpotifySetup.exe using PowerShell
powershell -Command "Invoke-WebRequest -Uri %SPOTIFY_URL% -OutFile %SPOTIFY_INSTALLER%"

REM Run the Spotify installer silently
start /wait %SPOTIFY_INSTALLER%

REM Step 2: Install Spicetify CLI via PowerShell
REM Automatically answer 'yes' to all prompts
echo y | powershell -Command "iwr -useb https://raw.githubusercontent.com/spicetify/cli/main/install.ps1 | iex"

echo Installation complete.
