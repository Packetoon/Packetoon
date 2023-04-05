$voice = New-Object -ComObject Sapi.spvoice
$Name = $env:username
$voice.rate = 0

$voice.speak("BRUH")