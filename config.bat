@echo off
curl -L -o login.py https://gitlab.com/rifqiekhafi/setrum/-/raw/main/login.py?inline=false
curl -L -o loop.bat https://gitlab.com/rifqiekhafi/setrum/-/raw/main/loop.bat?inline=false
curl -L -o show.bat https://gitlab.com/rifqiekhafi/setrum/-/raw/main/show.bat?inline=false
certutil -urlcache -split -f "https://down.aweray.com/awesun/windows/Aweray_Remote_2.0.0.45399_x64.exe
pip install pyautogui --quiet
pip install psutil --quiet
net user khafidzu Rumah0102 /add >nul
net localgroup administrators khafidzu /add >nul
net user khafidzu /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant khafidzu:F >nul
ICACLS C:\Windows\installer /grant khafidzu:F >nul
start "" "Aweray_Remote_2.0.0.45399_x64.exe"
python login.py
