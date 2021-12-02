echo off
echo Installing Echo so apps can be installed
powershell "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
cls
echo Choco installed
echo Installing apps
choco install brave winrar spotify steam-client epicgameslauncher 7zip anydesk.install git github.desktop vscode -y
echo if apps didnt install re do the command