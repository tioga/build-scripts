@echo off
echo.
echo *** Installing Tioga Applications
echo *

echo * Push
call ../push/gradlew -q -p --parallel ../push install
if errorlevel 1 ( GOTO:eof )

echo * Notify
call ../notify/gradlew -q -p ../notify install
if errorlevel 1 ( GOTO:eof )

echo * Jobs
call ../jobs/gradlew -q -p ../jobs install
if errorlevel 1 ( GOTO:eof )

echo * Identity
call ../identity/gradlew -q -p ../identity install
if errorlevel 1 ( GOTO:eof )

echo * PhotoLab
call ../photolab/gradlew -q -p ../photolab install
if errorlevel 1 ( GOTO:eof )

echo * Ack.IM
call ../ackim/web/gradlew -q -p ../ackim/web install
if errorlevel 1 ( GOTO:eof )

echo * Skeleton
call ../skeleton/gradlew -q -p ../skeleton install
if errorlevel 1 ( GOTO:eof )

:eof
