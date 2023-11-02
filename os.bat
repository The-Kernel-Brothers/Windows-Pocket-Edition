@echo off
echo ....Welcome to Windows Pocket Edition....
pause
cls

:start
echo ....Start List....
echo 1) Shutdown
echo 2) Programs list
echo 3) About WPE
set /p soption=Select an option from the Start List: 
if %soption%==1 call :sdown
if %soption%==2 call :plistcls
if %soption%==3 call :aboutwpe
echo.
goto start

:sdown
exit

:plistcls
cls
goto plist

:rstart
cls
goto start

:plist
echo 1) Notepad
echo 2) Task Manager
echo 3) Return to Start List
set /p poption=Select a program from the Programs List: 
if %poption%==1 call :notepadappcls
if %poption%==3 goto rstart
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

:aboutwpe
cls
echo Windows Pocket Edition - Version Alpha 0.0.1 (Build: A0) - Made by The Kernel Brothers
pause
cls
goto start

#Windows Pocket Edition - Version Alpha 0.0.1 (Build: A0) - Made by The Kernel Brothers
