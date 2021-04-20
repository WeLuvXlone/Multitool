@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
color 4
title LoginProgram [%date%]
:start1
cls 
echo.
echo                                        ██▓     ▒█████    ▄████  ██▓ ███▄    █ 
echo                                       ▓██▒    ▒██▒  ██▒ ██▒ ▀█▒▓██▒ ██ ▀█   █ 
echo                                       ▒██░    ▒██░  ██▒▒██░▄▄▄░▒██▒▓██  ▀█ ██▒
echo                                       ▒██░    ▒██   ██░░▓█  ██▓░██░▓██▒  ▐▌██▒
echo                                       ░██████▒░ ████▓▒░░▒▓███▀▒░██░▒██░   ▓██░
echo                                       ░ ▒░▓  ░░ ▒░▒░▒░  ░▒   ▒ ░▓  ░ ▒░   ▒ ▒ 
echo                                       ░ ░ ▒  ░  ░ ▒ ▒░   ░   ░  ▒ ░░ ░░   ░ ▒░
echo                                         ░ ░   ░ ░ ░ ▒  ░ ░   ░  ▒ ░   ░   ░ ░ 
echo                                           ░  ░    ░ ░        ░  ░           ░
echo.
echo                                             _            _
echo                                             1 Login      2 Create Account
echo.
set /p loginx1="..."
if not %loginx1% leq 2 goto start1
if %loginx1% equ 1 goto login
echo What do you want your username to be?
set /p username1=">>> "
set v1f=0
 
:findspaces
set x=!v1f!
set Letter%v1f%=!username1:~%x%,1!
if "!Letter%v1f%!" equ " " (
echo.
echo.
echo Sorry, no spaces allowed in your username...
pause >nul
goto start1
)
if NOT "!Letter%v1f%!" equ "" (
set /a v1f=%v1f%+1
goto findspaces
)
echo What do you want your password to be?
set /p password1=">>> "
goto save
 
:login
cls
set /p name1=Username:
if not exist "_\%name1%.bat" (
echo Invalid Username...
pause >nul
goto start1
)
set /p pass1=Password:
call _\%name1%.bat
if not %password1% equ %pass1% (
echo Invalid Password
pause >nul
goto start1
)
goto menu
 
:save
(
echo set username1=%username1%
echo set password1=%password1%
)>_\%username1%.bat
goto start1
 
:menu
echo Logged in!
pause >nul
:again
cls
color 4
title Xlone Multitool [%date%]
echo.
echo                                █     █░▓█████  ██▓     ▄████▄   ▒█████   ███▄ ▄███▓▓█████ 
color 1
color 2
echo                               ▓█░ █ ░█░▓█   ▀ ▓██▒    ▒██▀ ▀█  ▒██▒  ██▒▓██▒▀█▀ ██▒▓█   ▀ 
color 2
color 3
echo                               ▒█░ █ ░█ ▒███   ▒██░    ▒▓█    ▄ ▒██░  ██▒▓██    ▓██░▒███   
color 3
color 4
echo                               ░█░ █ ░█ ▒▓█  ▄ ▒██░    ▒▓▓▄ ▄██▒▒██   ██░▒██    ▒██ ▒▓█  ▄ 
color 4
color 5
echo                               ░░██▒██▓ ░▒████▒░██████▒▒ ▓███▀ ░░ ████▓▒░▒██▒   ░██▒░▒████▒
color 5
color 6
echo                               ░ ▓░▒ ▒  ░░ ▒░ ░░ ▒░▓  ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ░  ░░░ ▒░ ░
color 6
color 7
echo                                ▒ ░ ░   ░ ░  ░░ ░ ▒  ░  ░  ▒     ░ ▒ ▒░ ░  ░      ░ ░ ░  ░
color 7
color 8
echo                                 ░   ░     ░     ░ ░   ░        ░ ░ ░ ▒  ░      ░      ░   
color 8
color 9
echo                                   ░       ░  ░    ░  ░░ ░          ░ ░         ░      ░  ░
color 1
color 4
echo                                                      ░  
echo.
echo                                                        Loading
echo.  
timeout 1 >nul                                         
goto main
:main
Title Welcome[%USERNAME%][%date%]
cls
echo.
echo     
echo                                                         ░      ░   ░                                   
echo                                                        ░ 
echo.
echo                               _                _                   _               __
echo                               1 Pingers        4 Free Stressers    7 PortScanner   10 Spoofer
echo                               _                _                   _               __
echo                               2 IpLookUp       5 Games             8 SpamBot       11 Discord
echo                               _                _                   _               __
echo                               3 PingOfDeath    6 ChangeIP          9 PcCleaner     12 Youtube
echo                                                          _ 
echo                                                          0 Page2
:mainlogo
set /p main=[Root@%USERNAME%]:
if %main% == 1 start _\Pingers\PP.bat
if %main% == 2 start _\IpLookUp\IPLookUp.bat
if %main% == 3 start _\PingOfDeath\PingOfDeath.bat
if %main% == 4 start _\Stressers\Stressers.bat
if %main% == 5 start _\Games\Games.bat
if %main% == 11 start https://discord.gg/cjMuuTjk
if %main% == 12 start https://www.youtube.com/channel/UCWekDbjOPATNRwv3-z65rOA
if %main% == 6 start _\ipchange.lnk
if %main% == 7 start _\Pscan.exe
if %main% == 8 start _\spam.vbs
if %main% == 9 start _\PcCleanUp.bat
if %main% == 10 start _\BatchSpoofer\BatchSpoofer.lnk
if %main% == 0 goto Page2
goto main
:Page2
cls
echo.
echo     ██ ▄█▀ ▒█████   ▄▄▄██▀▀▀▄▄▄       ██ ▄█▀ ███▄ ▄███▓ █    ██  ██▓  ▄▄▄█████▓ ██▓▄▄▄█████▓ ▒█████   ▒█████   ██▓  
color 1
color 2  
echo     ██▄█▒ ▒██▒  ██▒   ▒██  ▒████▄     ██▄█▒ ▓██▒▀█▀ ██▒ ██  ▓██▒▓██▒  ▓  ██▒ ▓▒▓██▒▓  ██▒ ▓▒▒██▒  ██▒▒██▒  ██▒▓██▒ 
color 2
color 3   
echo    ▓███▄░ ▒██░  ██▒   ░██  ▒██  ▀█▄  ▓███▄░ ▓██    ▓██░▓██  ▒██░▒██░  ▒ ▓██░ ▒░▒██▒▒ ▓██░ ▒░▒██░  ██▒▒██░  ██▒▒██░   
color 3
color 4 
echo    ▓██ █▄ ▒██   ██░▓██▄██▓ ░██▄▄▄▄██ ▓██ █▄ ▒██    ▒██ ▓▓█  ░██░▒██░  ░ ▓██▓ ░ ░██░░ ▓██▓ ░ ▒██   ██░▒██   ██░▒██░    
color 4
color 5
echo    ▒██▒ █▄░ ████▓▒░ ▓███▒   ▓█   ▓██▒▒██▒ █▄▒██▒   ░██▒▒▒█████▓ ░██████▒▒██▒ ░ ░██░  ▒██▒ ░ ░ ████▓▒░░ ████▓▒░░██████▒
color 5
color 6
echo    ▒ ▒▒ ▓▒░ ▒░▒░▒░  ▒▓▒▒░   ▒▒   ▓▒█░▒ ▒▒ ▓▒░ ▒░   ░  ░░▒▓▒ ▒ ▒ ░ ▒░▓  ░▒ ░░   ░▓    ▒ ░░   ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░▓  ░
color 6
color 7
echo    ░ ░▒ ▒░  ░ ▒ ▒░  ▒ ░▒░    ▒   ▒▒ ░░ ░▒ ▒░░  ░      ░░░▒░ ░ ░ ░ ░ ▒  ░  ░     ▒ ░    ░      ░ ▒ ▒░   ░ ▒ ▒░ ░ ░ ▒  ░
color 7
color 8
echo    ░ ░░ ░ ░ ░ ░ ▒   ░ ░ ░    ░   ▒   ░ ░░ ░ ░      ░    ░░░ ░ ░   ░ ░   ░       ▒ ░  ░      ░ ░ ░ ▒  ░ ░ ░ ▒    ░ ░   
color 8
color 9
echo    ░  ░       ░ ░   ░   ░        ░  ░░  ░          ░      ░         ░  ░        ░               ░ ░      ░ ░      ░  ░
color 1
color 2
echo                                                   ██▒   █▓    ██▓ ██▓
color 2
color 3
echo                                                   ▓██░   █▒   ▓██▒▓██▒
color 3
color 4
echo                                                    ▓██  █▒░   ▒██▒▒██▒
color 4
color 5
echo                                                     ▒██ █░░   ░██░░██░
color 5
color 6
echo                                                      ▒▀█░     ░██░░██░
color 7
color 8
echo                                                      ░ ▐░     ░▓  ░▓  
color 8
color 9
echo                                                      ░ ░░      ▒ ░ ▒ ░
color 1
color 2
echo                                                        ░░      ▒ ░ ▒ ░
color 2
color 3
echo                                                         ░      ░   ░     
color 3
color 4                              
echo                                                        ░ 
echo.                                           
echo                                     _                   _                   _
echo                                     1 RarCracker        4 TempVPS           7 CMD
echo                                     _                   _                   _  
echo                                     2 TimerRez          5 Grabify           8 IP's
echo                                     _                   _                   _
echo                                     3 WhoIs             6 LANC              9 BatchPaint
echo                                                         _
echo                                                         0 Back
set /p tt=[Root@%USERNAME%]:
if %tt% == 0 goto main
if %tt% == 1 start _\craker.bat
if %tt% == 2 start _\TimerResolution.exe
if %tt% == 3 start https://who.is
if %tt% == 4 start https://www.cloudways.com/en/?id=702374
if %tt% == 5 start https://grabify.link/
if %tt% == 6 start _\LANC\LANCRemastered.exe
if %tt% == 7 start cmd
if %tt% == 8 start _\Home\ooo.bat
if %tt% == 9 start _\Paint.bat
goto Page2
