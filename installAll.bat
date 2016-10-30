@echo off
cls



echo.
echo *** Installing Tioga Modules
echo *

echo * dev
call gradle -q -p ../dev install
if errorlevel 1 ( GOTO:eof )

echo * CouchAce
call gradle -q -p ../CouchAce install
if errorlevel 1 ( GOTO:eof )

echo * lib
call gradle -q -p ../lib install
if errorlevel 1 ( GOTO:eof )

echo * apis
call gradle -q -p ../apis install
if errorlevel 1 ( GOTO:eof )

echo * app
call gradle -q -p ../app install
if errorlevel 1 ( GOTO:eof )

echo * runners
call gradle -q -p ../runners install
if errorlevel 1 ( GOTO:eof )



echo.
echo *** Installing Tioga Clients
echo *

echo * Push
call gradle -q -p ../push/tioga-push-client install
if errorlevel 1 ( GOTO:eof )

echo * Notify
call gradle -q -p ../notify/tioga-notify-client install
if errorlevel 1 ( GOTO:eof )

echo * Jobs
call gradle -q -p ../jobs/tioga-jobs-client install
if errorlevel 1 ( GOTO:eof )

echo * Identity
call gradle -q -p ../identity/tioga-identity-client install
if errorlevel 1 ( GOTO:eof )

echo * Ack.IM
call gradle -q -p ../ackim/web/tioga-ackim-client install
if errorlevel 1 ( GOTO:eof )



echo.
echo *** Installing Tioga Applications
echo *

echo * Push
call gradle -q -p ../push install
if errorlevel 1 ( GOTO:eof )

echo * Notify
call gradle -q -p ../notify install
if errorlevel 1 ( GOTO:eof )

echo * Jobs
call gradle -q -p ../jobs install
if errorlevel 1 ( GOTO:eof )

echo * Identity
call gradle -q -p ../identity install
if errorlevel 1 ( GOTO:eof )

echo * PhotoLab
call gradle -q -p ../photolab install
if errorlevel 1 ( GOTO:eof )

echo * Ack.IM
call gradle -q -p ../ackim/web install
if errorlevel 1 ( GOTO:eof )



:eof
echo.
pause
