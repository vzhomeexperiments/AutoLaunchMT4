rem *************************************************
rem *** This starts the terminals after waiting 30 seconds ***
rem *************************************************

ping localhost -n 30

rem Starting terminals with parameters using *.ini files:
start "1" "%PATH_T1_T%\terminal.exe" /portable "%PATH_DSS_Repo%\CustomExperts\AutoLaunchMT4\prod_T1.ini"
start "2" "%PATH_T2_T%\terminal.exe" /portable "%PATH_DSS_Repo%\CustomExperts\AutoLaunchMT4\prod_T2.ini"


exit