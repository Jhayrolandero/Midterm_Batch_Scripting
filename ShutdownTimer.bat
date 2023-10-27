@echo off
color 0C
:menu
echo ===================
echo  PC Shutdown Timer
echo ===================
echo 1. Shutdown
echo 2. Exit
echo ===================

set /p choice=Enter your choice: 

if "%choice%" == "1" (
    goto :shutdown
) else if "%choice%" == "2" (
    echo Exiting Shutdown Timer...
    goto :eof
) else (
    echo Invalid choice. Please enter a valid choice.
    goto :menu
)

:shutdown
set /p minutes=Enter the number of minutes until shutdown: 

set /a seconds=%minutes%*60

set /p choice=Are you sure you want to shutdown? (Y/N):

if "%choice%" == "Y" (
    goto :shutdown_yes
) else if "%choice%" == "N" (
    echo Exiting Shutdown Timer...
    goto :menu
) else (
    echo Invalid choice. Please enter a valid choice.
    goto :shutdown
)

:shutdown_yes
echo The PC will shut down in %minutes% minutes.

shutdown /s /t %seconds%