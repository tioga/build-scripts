@echo off
cls

echo Installing dev...
call gradle -q -p ../dev clean build install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing CouchAce...
call gradle -q -p ../CouchAce clean build install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing lib...
call gradle -q -p ../lib clean build install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing apis...
call gradle -q -p ../apis clean build install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing app...
call gradle -q -p ../app clean build install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing runners...
call gradle -q -p ../runners clean build install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing Push...
call gradle -q -p ../Push clean build install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing Notify...
call gradle -q -p ../Notify clean build install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing Jobs...
call gradle -q -p ../Jobs clean build install
echo.
if errorlevel 1 ( GOTO:eof )

echo Installing Photolab...
call gradle -q -p ../Photolab clean build install
echo.
if errorlevel 1 ( GOTO:eof )

:eof
pause
