@echo off
:: Set Color of text to Green
color 0a
set /p name=Hello! What's your name? 

echo Greetings, %name%!
:Home 
color 0a
echo ========================
echo Welcome To Matrix Menu!
echo Developed by: Cjay
echo ========================
echo 1. Calculator
echo 2. File Sorter
echo 3. File Mover
echo 4. Renaming Of File
echo 5. Application Starter
echo 6. .txt File Creator
echo 7. PC Shutdown Timer
echo 8. Exit
echo ========================

set /p choice=What would you like to do? 

:: For Calculator
if "%choice%"=="1" (
    call Midterm_Batch_Scripting/Calculator.bat
    goto :Home
) else if "%choice%"=="2" (
    :: File sorter
    call Midterm_Batch_Scripting/FileSorter.bat
    goto :Home
) else if "%choice%"=="3" (
    :: File Mover
    call Midterm_Batch_Scripting/FileMover.bat
    goto :Home
) else if "%choice%"=="4" (
    :: File renamer
    call Midterm_Batch_Scripting/FileRenamer.bat
    goto :Home
) else if "%choice%"=="5" (
    :: Application Starter
    call Midterm_Batch_Scripting/AppStartup.bat
    goto :Home
) else if "%choice%"=="6" (
    :: File Creator
    call Midterm_Batch_Scripting/TextCreator.bat
    goto :Home
) else if "%choice%"=="7" (
    :: Shutdown
    call Midterm_Batch_Scripting/ShutdownTimer.bat
    goto :Home
) else if "%choice%"=="8" (
    :: Exit
    echo Exiting Batch...
    Exit
) else (
    echo Invalid choice. Please enter a valid choice.
    goto :Home
)
