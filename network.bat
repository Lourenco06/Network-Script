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
echo 3. Shows Network STATS
echo 4. Exit
echo ============================

set /p option= Select the option and press ENTER: 

if %option% == 1 goto IP
if %option% == 2 goto RENEW
if %option% == 3 goto STATS
if %option% == 4 goto SAIR

goto MENU

:IP
ipconfig /all
pause 
goto MENU

:RENEW
ipconfig /release
pause
ipconfig /rew
pause
goto MENU

:STATS
netstat
pause
goto MENU

:SAIR
echo Closing... Bye!
exit /b 0