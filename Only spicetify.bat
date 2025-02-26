@echo off


REM Execute the PowerShell command to install Spicetify
echo y | powershell -Command "iwr -useb https://raw.githubusercontent.com/spicetify/cli/main/install.ps1 | iex"

echo Installation complete.