@ECHO OFF

netsh wlan show profiles
netsh wlan show profiles > profiles.txt
start %~dp0profiles.txt
