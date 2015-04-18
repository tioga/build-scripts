@echo off
cls

echo Installing dev...
call gradle -q -p ../dev install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing CouchAce...
call gradle -q -p ../CouchAce install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing runners...
call gradle -q -p ../runners install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing lib...
call gradle -q -p ../lib install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing apis...
call gradle -q -p ../apis install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing app...
call gradle -q -p ../app install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing Push...
call gradle -q -p ../Push install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing Notify...
call gradle -q -p ../Notify install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing Jobs...
call gradle -q -p ../Jobs install
echo.
if errorlevel 1 ( GOTO:eof )

:eof
pause
