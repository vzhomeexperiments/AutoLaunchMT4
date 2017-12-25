rem *************************************************
rem *** This starts the terminals after waiting 30 seconds ***
rem *************************************************

ping localhost -n 30

start "1" "C:\Program Files (x86)\FxPro - Terminal1\terminal.exe" /portable
start "2" "C:\Program Files (x86)\FxPro - Terminal2\terminal.exe" /portable
start "3" "C:\Program Files (x86)\FxPro - Terminal3\terminal.exe" /portable
start "4" "C:\Program Files (x86)\FxPro - Terminal4\terminal.exe" /portable
start "5" "C:\Program Files (x86)\FxPro - Terminal5\terminal.exe" /portable

exit