:: Reboot logging tool
:: Purpose: write reboot time to the user Document folder
@echo off
setlocal
:: Define path to the user document folder and respective file
set "LOG_FILE=%USERPROFILE%\Documents\rebootlog.txt"

:: Log the information

echo ---------------->> %LOG_FILE%
echo last reboot at: >> %LOG_FILE%
date /T              >> %LOG_FILE%
time /T              >> %LOG_FILE%


endlocal

