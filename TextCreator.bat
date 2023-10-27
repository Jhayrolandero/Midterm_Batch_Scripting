@echo off
color 03

goto main

:create_file
@REM redirect the file to this location
set file_path= C:\Users\OWNER\Desktop\batch\Midterm_Batch_Scripting\Files

@REM Add title
set /p filename=Name your file:  

@REM Checker if file exist
if exist %file_path%\%filename%.txt (
    echo Choose another name
    goto :eof
)

@REM Add content
set /p content=Set your content: 

@REM Create file
echo Creating an empty file...
echo %content% > %file_path%\%filename%.txt
echo File created: %filename%.txt

goto :eof

:main
echo ===================
echo    File Creator
echo ===================
echo 1. Create Text File
echo 2. Exit 
echo ===================

set /p choice=Enter your choice (1/2): 

if "%choice%"=="1" (
    call :create_file
) else if "%choice%"=="2" (
    echo Exiting the script...
    goto :eof
) else (
    echo Enter choice from 1 - 2
    goto :main
)
goto :main