@echo off
cls

echo Building dev...
call gradle -q -p ../dev clean build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building CouchAce...
call gradle -q -p ../CouchAce clean build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building runners...
call gradle -q -p ../runners clean build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building lib...
call gradle -q -p ../lib clean build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building apis...
call gradle -q -p ../apis clean build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building app...
call gradle -q -p ../app clean build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building Push...
call gradle -q -p ../Push clean build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building Notify...
call gradle -q -p ../Notify clean build
echo.
if errorlevel 1 ( GOTO:eof )

echo Building Jobs...
call gradle -q -p ../Jobs clean build
echo.
if errorlevel 1 ( GOTO:eof )

:eof
pause
