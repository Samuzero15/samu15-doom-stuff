@echo off
:start
SET choice=
SET /p choice=Are you sure to rollback your changes (up to the last change made)? (Y/[N]): 
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
git reset HEAD~
echo Rollback done.
PAUSE
EXIT
