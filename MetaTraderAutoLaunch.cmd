rem *************************************************
rem *** This starts the terminals after waiting 30 seconds ***
rem *************************************************

ping localhost -n 30

rem Starting terminals with parameters using *.ini files:
start "1" "%PATH_T1_T%\terminal.exe" /portable "%PATH_DSS_Repo%\AutoLaunchMT4\prod_T1.ini"
start "2" "%PATH_T2_T%\terminal.exe" /portable "%PATH_DSS_Repo%\AutoLaunchMT4\prod_T2.ini"
start "3" "%PATH_T3_T%\terminal.exe" /portable "%PATH_DSS_Repo%\AutoLaunchMT4\prod_T3.ini"
start "4" "%PATH_T4_T%\terminal.exe" /portable "%PATH_DSS_Repo%\AutoLaunchMT4\prod_T4.ini"

exit