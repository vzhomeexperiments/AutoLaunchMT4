rem *************************************************
rem *** This starts the terminals after waiting 30 seconds ***
rem *************************************************

ping localhost -n 30

rem Starting terminals with parameters using *.ini files:
start "1" "C:\Program Files (x86)\FxPro - Terminal1\terminal.exe" /portable "C:\Users\fxtrams\Documents\000_TradingRepo\AutoLaunchMT4\prod_T1.ini"
start "2" "C:\Program Files (x86)\FxPro - Terminal2\terminal.exe" /portable "C:\Users\fxtrams\Documents\000_TradingRepo\AutoLaunchMT4\prod_T2.ini"
start "3" "C:\Program Files (x86)\FxPro - Terminal3\terminal.exe" /portable "C:\Users\fxtrams\Documents\000_TradingRepo\AutoLaunchMT4\prod_T3.ini"
start "4" "C:\Program Files (x86)\FxPro - Terminal4\terminal.exe" /portable "C:\Users\fxtrams\Documents\000_TradingRepo\AutoLaunchMT4\prod_T4.ini"

exit