@echo off

color 07
:menu
echo =============
echo  File Sorter
echo =============
echo 1. Sort files
echo 2. Exit
echo =============

set /p choice=Enter your choice:

if "%choice%" == "1" (
    goto :file_sorter
) else if "%choice%" == "2" (
    echo Exiting File Sorter...
    goto :eof
) else (
    echo Invalid choice. Please enter a valid choice.
    goto :menu
)

:file_sorter
set /p file_path=Enter the file path where the file is located: 

for %%f in ("%file_path%\*.*") do (
    echo Sorting Files...
    if not exist %file_path%\%%~xf (
        mkdir %file_path%\%%~xf
    )

    move "%%f" "%file_path%\%%~xf
)

goto :menu