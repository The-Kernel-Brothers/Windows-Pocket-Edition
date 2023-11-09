@echo off
title Windows Pocket Edition - Version Alpha 0.0.3 (Build: AF)
echo ....Welcome to Windows Pocket Edition....
pause
cls

:start
echo ....Start List....
echo 1) Shutdown
echo 2) File Manager
echo 3) Programs list
echo 4) Tools
echo 5) Control Panel
echo 6) About WPE
set /p soption=Select an option from the Start List: 
if %soption%==1 call :sdown
if %soption%==3 call :plistcls
if %soption%==4 call :toolscls
if %soption%==5 call :cpanelcls
if %soption%==6 call :aboutwpe
if %soption%==2 call :explorer
echo.
goto start

:sdown
exit

:plistcls
cls
goto plist

:toolscls
cls
goto tools

:cpanelcls
cls
goto cpanel

:explorer
start fm.exe
cls
goto start

:tools
echo ....Tools....
echo 1) Ping a website
echo 2) Ping google.com
echo 3) DiskPart
echo 4) Command Prompt
echo 5) Registry Editor
echo 6) Go Back
set /p toption=Select a tool: 
if %toption%==1 call :pingsite
if %toption%==2 call :pingg
if %toption%==3 call :diskp
if %toption%==4 call :cmd
if %toption%==6 goto rstart
if %toption%==5 call :reg
goto tools

:cmd
cls
echo Make sure to type 'exit' when you are done!
pause
conhost
cls
goto tools

:reg
cls
regedit
goto tools

:pingsite
echo.
set /p toption=Enter the website you want to ping: 
ping %toption%
pause
cls
goto tools

:pingg
echo.
ping google.com
pause
cls
goto tools

:diskp
cls
diskpart
cls
goto tools

:cpanel
echo ....Control Panel....
echo Adjust your computer's settings.
echo.
echo 1) Change terminal colors
echo 2) Exit Control Panel
set /p coption=Choose a setting to change: 
if %coption%==1 call :scolor
if %coption%==2 goto rstart
goto cpanel

:scolor
cls
echo Color Change
echo.
echo 0 = Black        8 = Gray
echo 1 = Blue         9 = Light Blue
echo 2 = Green        A = Light Green
echo 3 = Aqua         B = Light Aqua
echo 4 = Red          C = Light Red
echo 5 = Purple       D = Light Purple
echo 6 = Yellow       E = Light Yellow
echo 7 = White        F = Bright White
echo.
set /p bcoption=Choose the Background color: 
echo.
set /p fgoption=Choose the Text color: 
color %bcoption%%fgoption%
cls
goto cpanel

:rstart
cls
goto start

:plist
echo 1) Notepad
echo 2) Task Manager
echo 3) Paint
echo 4) Games [DIR]
echo 5) Return to Start List
set /p poption=Select a program from the Programs List: 
if %poption%==1 call :notepadappcls
if %poption%==5 goto rstart
if %poption%==2 call :taskmgrcls
if %poption%==4 call :glist
if %poption%==3 call:paint
goto plist
exit /b

:paint
cls
mspaint
goto plist

:glist
echo.
echo Games [DIR]
echo 1) The Game Of Life
echo 2) Close folder
set /p goption=Select a game from the Games List: 
if %goption%==1 call :tgol
if %goption%==2 goto plistcls
goto glist

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

:tgol
cls
echo ....Game Of Life!....
echo.
echo Character 1: David
echo Character 2: Lisa
echo Character 3: Archie
set /p chargol=Enter the name of the character of your choice! 
if %chargol%==1 call :David
if %chargol%==2 call :Lisa
if %chargol%==3 call :Archie
cls
echo.
echo Please enter the name of the character of your choice.
goto tgol

:David
cls
echo Lady voice: David
pause
echo.
echo Lady voice: Daaaaaaviiiiiid
pause
echo.
echo Lady voice: Oh look he is waking up!
echo Man voice: Ah he is so handsome!
pause
cls
echo Doctor: (to you) Welcome to the world! (to the lady and man) Congratulations on your newborn baby!
echo Dad: Thank you very much doctor!
echo Doctor: You can be dismissed from the hospital anytime you want.
echo Mum: Thank you!
pause
cls

:aboutwpe
cls
echo Windows Pocket Edition - Version Alpha 0.0.3 (Build: AF) - Made by The Kernel Brothers
echo.
echo Credits: Tjari
pause
cls
goto start