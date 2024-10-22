@echo off
REM ********************************************
REM Programador...: (C) Lourenço Moreira
REM Data..........: 17/10/24
REM Descrição.....: Network Script
REM ********************************************
:MENU
cls
echo ###########################
echo # NETWORK SCRIPT          #
echo # (C) Lourenco Moreira    #
echo ###########################

echo ============================
echo 1. IP Configuration
echo 2. Renew IP Configurations
echo 3. DNS Lookup
echo 4. Show MacAdress
echo 5. Check Energy Efficiency
echo 6. Exit
echo ============================

set /p option= Select the option and press ENTER: 

if %option% == 1 goto IP
if %option% == 2 goto RENEW_IP
if %option% == 3 goto DNS_QUERY
if %option% == 4 goto SHOW_MAC
if %option% == 5 goto ENERGY_EFFICIENT
if %option% == 6 goto SAIR

goto MENU

:IP
ipconfig /all
pause 
goto MENU

:RENEW_IP
ipconfig /release
pause
ipconfig /rew
pause
goto MENU

:DNS_QUERY
set /p domain="Insert domain: "
set /p dnsserver="Insert dnsserver: "
nslookup %domain% %dnsserver%
pause
goto MENU

:SHOW_MAC
getmac
pause 
goto MENU

:ENERGY_EFFICIENT
powercfg /energy
pause
goto MENU

:SAIR
echo Closing... Bye!
exit /b 0