@echo off
curl -L -o logout.py https://gitlab.com/rifqiekhafi/masfil/-/raw/main/logout.py?inline=false
curl -L -o loop.bat https://gitlab.com/rifqiekhafi/setrum/-/raw/main/loop.bat?inline=false
curl -L -o show.bat https://gitlab.com/rifqiekhafi/setrum/-/raw/main/show.bat?inline=false
certutil -urlcache -split -f "https://downloads.realvnc.com/download/file/vnc.files/VNC-Server-7.11.0-Windows.exe"
pip install pyautogui --quiet
pip install psutil --quiet
net user golinta Rumah0102 /add >nul
net localgroup administrators golinta /add >nul
net user golinta /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant golinta:F >nul
ICACLS C:\Windows\installer /grant golinta:F >nul
start "" "VNC-Server-7.11.0-Windows.exe"
python logout.py
