@echo off
setlocal enabledelayedexpansion 
:: Silver
color 0d

:menu
echo =======================
echo   Application Starter
echo =======================
echo 1. Start An Application
echo 2. Exit
echo =======================

set /p choice=Enter your choice: 

if "%choice%" == "1" (
    goto :app_starter
) else if "%choice%" == "2" (
    echo Exiting Application Starter...
    goto :eof
) else (
    echo Invalid choice. Please enter a valid choice.
    goto :menu
)


:app_starter

echo =====================
echo Pick an App to start
echo =====================
echo 1. facebook
echo 2. YouTube
echo 3. GCLamp
echo 4. Google
echo 5. Twitter
echo 6. Instagram
echo 7. Reddit
echo 8. Notepad
echo 9. Chrome
echo 10. Back to Main Menu
echo =====================

set /p choice=Enter your choice: 

if "%choice%" == "1" (
    start "" "https://www.facebook.com"
) else if "%choice%" == "2" (
    start "" "https://www.youtube.com"
) else if "%choice%" == "3" (
    start "" "https://gordoncollegeccs.edu.ph/ccs/students/lamp/#/login"
) else if "%choice%" == "4" (
    start "" "https://www.google.com"
) else if "%choice%" == "5" (
    start "" "https://twitter.com/?lang=en"
) else if "%choice%" == "6" (
    start "" "https://www.instagram.com"
) else if "%choice%" == "7" (
    start "" "https://www.reddit.com"
) else if "%choice%" == "8" ( 
    start notepad
) else if "%choice%" == "9" ( 
    start chrome
) else if "%choice%" == "10" ( 
    goto :menu
) else (
    echo Invalid choice. Please enter a valid choice.
    goto :app_starter
)
goto :menu