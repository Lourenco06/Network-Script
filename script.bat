REM Programador..: Lourenco Moreira
REM Data.........: 1/10/24
REM Observações..: Implementação de dum Menu.
@echo off
:MENU
cls
echo 2024 : (C) Lourenco Moreira
echo -------------------------
echo 1. Vizualizar as configuracoes de IP
echo 2. Limpar o ecra
echo 3. Mostar diretorio atual
echo 4. Sair.
echo -------------------------

set /p option=Seleciona 1, 2, 3 ou 4 a depois clica ENTER.


if %option% == 1 goto Vizualizar_IP
if %option% == 2 goto Limpar_Ecra
if %option% == 3 goto Mostrar_Diretorio
if %option% == 4 goto Sair

goto MENU

:Vizualizar_IP
ipconfig /all
pause
goto MENU

:Limpar_Ecra
cls
pause
goto MENU

:Mostrar_Diretorio
dir
pause
goto MENU

:Sair
echo A fechar.
pause