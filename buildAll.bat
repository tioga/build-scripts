@echo off
cls

echo Building dev...
call gradle -q -p ../dev build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building CouchAce...
call gradle -q -p ../CouchAce build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building runners...
call gradle -q -p ../runners build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building lib...
call gradle -q -p ../lib build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building apis...
call gradle -q -p ../apis build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building app...
call gradle -q -p ../app build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building Push...
call gradle -q -p ../Push build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building Notify...
call gradle -q -p ../Notify build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building Jobs...
call gradle -q -p ../Jobs build
echo.
if errorlevel 1 ( GOTO:eof )

:eof
pause
