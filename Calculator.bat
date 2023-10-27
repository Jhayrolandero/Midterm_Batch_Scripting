@echo off
color 01

:menu
echo ======================
echo       Calculator
echo ======================
echo Choose an operation:
echo 1. Add
echo 2. Subtract
echo 3. Multiply
echo 4. Divide
echo 5. Modulus
echo 6. Exit
echo ======================

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    echo You chose Add.
    goto :Add
) else if "%choice%"=="2" (
    echo You chose Subtract.
    goto :Substract
) else if "%choice%"=="3" (
    echo You chose Multiply.
    goto :Multiply
) else if "%choice%"=="4" (
    echo You chose Divide.
    goto :Divide
) else if "%choice%"=="5" (
    echo You chose Modulus.
    goto :Modulus
) else if "%choice%"=="6" (
    echo Exiting Calculator...
    goto :eof
) else (
    echo Invalid choice. Please enter a valid choice.
    goto :menu
)


:Add
@REM Get User Input 1
:input1
set /p user_input1=Enter the first integer: 
set /a is_integer1=%user_input1% 2>nul
if not defined is_integer1 (
    echo Invalid input. Please enter a valid integer.
    goto input1
)

@REM Get User Input 2
:input2
set /p user_input2=Enter the second integer: 
set /a is_integer2=%user_input2% 2>nul
if not defined is_integer2 (
    echo Invalid input. Please enter a valid integer.
    goto input2
)

set /a sum=%user_input1% + %user_input2%
echo ==========================
echo The sum of %user_input1% and %user_input2% is: %sum%
echo ==========================

goto :menu


:Substract
@REM Get User Input 1
:input1
set /p user_input1=Enter the first integer: 
set /a is_integer1=%user_input1% 2>nul
if not defined is_integer1 (
    echo Invalid input. Please enter a valid integer.
    goto input1
)

@REM Get User Input 2
:input2
set /p user_input2=Enter the second integer: 
set /a is_integer2=%user_input2% 2>nul
if not defined is_integer2 (
    echo Invalid input. Please enter a valid integer.
    goto input2
)

set /a sum=%user_input1% - %user_input2%
echo ==========================
echo The sum of %user_input1% and %user_input2% is: %sum%
echo ==========================

goto :menu

:Multiply
@REM Get User Input 1
:input1
set /p user_input1=Enter the first integer: 
set /a is_integer1=%user_input1% 2>nul
if not defined is_integer1 (
    echo Invalid input. Please enter a valid integer.
    goto input1
)

@REM Get User Input 2
:input2
set /p user_input2=Enter the second integer: 
set /a is_integer2=%user_input2% 2>nul
if not defined is_integer2 (
    echo Invalid input. Please enter a valid integer.
    goto input2
)

set /a sum=%user_input1% * %user_input2%
echo The sum of %user_input1% and %user_input2% is: %sum%
goto :menu

:Divide
@REM Get User Input 1
:input1
set /p user_input1=Enter the first integer: 
set /a is_integer1=%user_input1% 2>nul
if not defined is_integer1 (
    echo Invalid input. Please enter a valid integer.
    goto input1
)

@REM Get User Input 2
:input2
set /p user_input2=Enter the second integer: 
set /a is_integer2=%user_input2% 2>nul
if not defined is_integer2 (
    echo Invalid input. Please enter a valid integer.
    goto input2
)

set /a sum=%user_input1% / %user_input2%
echo ==========================
echo The sum of %user_input1% and %user_input2% is: %sum%
echo ==========================

goto :menu

:Modulus
@REM Get User Input 1
:input1
set /p user_input1=Enter the first integer: 
set /a is_integer1=%user_input1% 2>nul
if not defined is_integer1 (
    echo Invalid input. Please enter a valid integer.
    goto input1
)

@REM Get User Input 2
:input2
set /p user_input2=Enter the second integer: 
set /a is_integer2=%user_input2% 2>nul
if not defined is_integer2 (
    echo Invalid input. Please enter a valid integer.
    goto input2
)

set /a sum=%user_input1% %% %user_input2%
echo ==========================
echo The sum of %user_input1% and %user_input2% 
echo ==========================
goto :menu
