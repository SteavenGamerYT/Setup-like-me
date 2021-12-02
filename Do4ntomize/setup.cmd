echo off
echo Installing Echo so apps can be installed
powershell "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
cls
echo Choco installed
echo Installing apps
choco install brave winrar spotify steam-client epicgameslauncher 7zip anydesk.install git github.desktop vscode -y
echo if apps didnt install re do the command
echo chaning wallpaper
powershell "Invoke-WebRequest https://github.com/SteavenGamerYT/Setup-like-me/raw/main/Do4ntomize/wallpaper.jpg -OutFile C:\wallpaper.jpg"
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d c:\wallpaper.jpg /f
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True
echo wallpaper changed