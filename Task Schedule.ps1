#Start-Process powershell -verb runas -Windowstyle hidden -ArgumentList "-file C:\Users\oside\Documents\Autism.ps1 " 
#Set-ExecutionPolicy Unrestricted -Force
$trigger = New-JobTrigger -AtStartup -RandomDelay 00:000:30 #Helps make sure it isn't competing at startup and doesn't get skipped
Register-ScheduledJob -Trigger $trigger -FilePath 'C:\Users\Public\Documents\Autism.ps1' -Name BatteryStatus