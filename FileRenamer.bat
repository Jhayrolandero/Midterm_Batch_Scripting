@echo off

:: Set color to red
color 04
:menu
echo ================
echo   File Renamer
echo ================
echo 1. Rename a File
echo 2. Exit
echo ================
set /p choice=Enter your choice:

if "%choice%" == "1" (
    goto :renamer
) else if "%choice%" == "2" (
    echo Exiting File Renamer...
    goto :eof
) else (
    echo Invalid choice. Please enter a valid choice.
    goto :menu
)

:renamer
set /p file_path=Enter the file path where the file is located: 

:directory_list
echo =========================================================
echo Contents of %file_path%:
echo =========================================================
:: Directory contents
dir %file_path%
echo =========================================================

set /p file_name=Which file would like to rename? 

if not exist "%file_path%\%file_name%" (
    echo File doesn't exist!
    goto :directory_list
)

set /p new_name=Set the new file name: 

:rename_choice
set /p choice=Are you sure? (y/n): 

if "%choice%" == "n" (
    goto :directory_list
) else if "%choice%" == "y" (
    goto :renaming_file
) else (
    goto :rename_choice
)

:renaming_file
echo Renaming...
ren "%file_path%\%file_name%" "%new_name%"
echo "%file_name%" is successfully renamed to "%new_name%"
goto :menu