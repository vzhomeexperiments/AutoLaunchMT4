rem *************************************************
rem *** This starts the terminals after waiting 30 seconds ***
rem *************************************************

ping localhost -n 30

rem Starting terminals with parameters using *.ini files:
start "1" "C:\Program Files (x86)\TradingTerminals\MetaTrader1\terminal.exe" /portable "%PATH_DSS_Repo%\CustomExperts\AutoLaunchMT4\prod_T1.ini"
start "4" "C:\Program Files (x86)\TradingTerminals\MetaTrader4\terminal.exe" /portable "%PATH_DSS_Repo%\CustomExperts\AutoLaunchMT4\prod_T4.ini"


exit