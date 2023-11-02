@echo off
echo ....Welcome to Windows Pocket Edition....
pause
cls

:start
echo ....Start List....
echo 1) Shutdown
echo 2) Programs list
set /p soption=Select an option from the Start List: 
if %soption%==1 call :sdown
if %soption%==2 call :plistcls
echo.
goto start

:sdown
exit

:plistcls
cls
goto plist

:plist
echo.
echo 1) Notepad
echo 2) Task Manager
echo 3) Return to Start List
set /p poption=Select a program from the Programs List: 
if %poption%==1 call :notepadappcls
if %poption%==3 exit /b
if %poption%==2 call :taskmgrcls
goto plist
exit /b

:notepadappcls
cls
goto notepadapp

:notepadapp
notepad.exe
goto plist

:taskmgrcls
cls
goto taskmgr

:taskmgr
taskmgr
goto plist