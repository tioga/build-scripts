@echo off
echo.
echo *** Installing Tioga Clients
echo *

echo * Push
call ../push/gradlew -q -p ../push/tioga-push-client install
if errorlevel 1 ( GOTO:eof )

echo * Notify Client
call ../notify/gradlew -q -p ../notify/tioga-notify-client install
if errorlevel 1 ( GOTO:eof )

echo * Notify Notifier
call ../notify/gradlew -q -p ../notify/tioga-notify-notifier install
if errorlevel 1 ( GOTO:eof )

echo * Jobs
call ../jobs/gradlew -q -p ../jobs/tioga-jobs-client install
if errorlevel 1 ( GOTO:eof )

echo * Identity
call ../identity/gradlew -q -p ../identity/tioga-identity-client install
if errorlevel 1 ( GOTO:eof )

echo * Ack.IM
call ../ackim/web/gradlew -q -p ../ackim/web/tioga-ackim-client install
if errorlevel 1 ( GOTO:eof )

echo * Skeleton
call ../skeleton/gradlew -q -p ../skeleton/tioga-skeleton-pub install
if errorlevel 1 ( GOTO:eof )
