@echo off
echo ....Welcome to Windows Pocket Edition....
pause
cls

:start
echo ....Start List....
echo 1) Shutdown
echo 2) Programs list
set /p soption=Select an option from the Start List: 
if %soption%==1 call :sdowncls
if %soption%==2 call :plistcls
echo.
goto start

:sdowncls
cls
goto sdown

:sdown
echo.
echo this works fine sdown
exit /b

:plistcls
cls
goto plist

:plist
echo.
echo 1) Notepad
echo 2) Return to Start List
set /p poption=Select a program from the Programs List: 
if %poption%==1 call :notepadappcls
if %poption%==2 exit /b
goto plist
exit /b

:notepadappcls
cls
goto notepadapp

:notepadapp
notepad.exe