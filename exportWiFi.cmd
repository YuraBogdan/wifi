@ECHO OFF
SETLOCAL

:: EDIT Frofile Name from getWifi.cmd
SET "_wifi="

if "%_wifi%" == "" SET _wifi=%1
if "%_wifi%" == "" GOTO info

echo exporting Wi-FI profile: %_wifi%
netsh wlan export profile "%_wifi%" key=clear folder="%~dp0\"
GOTO:EOF

:info
ECHO.
ECHO You have to have specify profile name
ECHO -------------------------------------------
ECHO     Ex. "exportWiFI.cmd profilename" or
ECHO     Edit script with "SET _wifi=profilename"
