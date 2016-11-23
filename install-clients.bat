@echo off
echo.
echo *** Installing Tioga Clients
echo *

echo * Push
call gradle -q -p ../push/tioga-push-client install
if errorlevel 1 ( GOTO:eof )


echo * Notify Client
call gradle -q -p ../notify/tioga-notify-client install
if errorlevel 1 ( GOTO:eof )

echo * Notify Notifier
call gradle -q -p ../notify/tioga-notify-notifier install
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

echo * Skeleton
call gradle -q -p ../skeleton/tioga-skeleton-pub install
if errorlevel 1 ( GOTO:eof )
