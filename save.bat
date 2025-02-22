@echo off
git status
set /p MESSAGE="Commit message: "

@ECHO OFF
:start
SET choice=
SET /p choice=Are you sure you want save your progress? (Y/[N]): 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
EXIT

:yes
git add .
git commit -m "%MESSAGE%"
echo Changes commited under the mesage: "%MESSAGE%"
PAUSE
EXIT