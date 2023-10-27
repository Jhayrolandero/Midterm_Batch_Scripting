@echo off

:: Color yellow
color 0e
:menu
echo ==============
echo    FileMover
echo ==============
echo 1. Move a File
echo 2. Exit
echo ==============

set /p choice=Enter your choice: 

if "%choice%" == "1" (
    goto :file_mover
) else if "%choice%" == "2" (
    echo Exiting FileMover...
    goto :eof
) else (
    echo Invalid choice. Please enter a valid choice.
    goto :menu
)


:file_mover

set /p file_path=Enter the file path where the file is located: 

:directory_list
echo =========================================================
echo Contents of %file_path%:
echo =========================================================
:: Directory contents
dir %file_path%
echo =========================================================

set /p file_name=Which file would you like to move? 

if not exist "%file_path%\%file_name%" (
    echo File doesn't exist!
    goto :directory_list
)

set /p new_path=Set the new file path: 

:move_choice
set /p choice=Are you sure? (y/n): 

if "%choice%" == "n" (
    goto :directory_list
) else if "%choice%" == "y" (
    goto :moving_file
) else (
    goto :move_choice
)

:moving_file
echo moving...
move "%file_path%\%file_name%" "%new_path%"
echo "%file_name%" is successfully moved to "%new_path%"
goto :menu