@echo off
cls



echo.
echo *** Cleaning Tioga Modules
echo *

echo * dev
call ../dev/gradlew -Dno-fail-version-conflict=true -q -p ../dev clean
if errorlevel 1 ( GOTO:eof )

echo * CouchAce
call ../CouchAce/gradlew -Dno-fail-version-conflict=true -q -p ../CouchAce clean
if errorlevel 1 ( GOTO:eof )

echo * lib
call ../lib/gradlew -Dno-fail-version-conflict=true -q -p ../lib clean
if errorlevel 1 ( GOTO:eof )

echo * apis
call ../apis/gradlew -Dno-fail-version-conflict=true -q -p ../apis clean
if errorlevel 1 ( GOTO:eof )

echo * app
call ../app/gradlew -Dno-fail-version-conflict=true -q -p ../app clean
if errorlevel 1 ( GOTO:eof )

echo * runners
call ../runners/gradlew -Dno-fail-version-conflict=true -q -p ../runners clean
if errorlevel 1 ( GOTO:eof )



echo.
echo *** Cleaning Tioga Applications
echo *


echo * Push Server
call ../Push/gradlew -Dno-fail-version-conflict=true -q -p ../Push clean
if errorlevel 1 ( GOTO:eof )

echo * Notify Server
call ../Notify/gradlew -Dno-fail-version-conflict=true -q -p ../Notify clean
if errorlevel 1 ( GOTO:eof )

echo * Jobs Server
call ../Jobs/gradlew -Dno-fail-version-conflict=true -q -p ../Jobs clean
if errorlevel 1 ( GOTO:eof )

echo * Identity Server
call ../Identity/gradlew -Dno-fail-version-conflict=true -q -p ../Identity clean
if errorlevel 1 ( GOTO:eof )

echo * Photolab
call ../Photolab/gradlew -Dno-fail-version-conflict=true -q -p ../Photolab clean
if errorlevel 1 ( GOTO:eof )

echo * Ack.IM
call ../ackim/web/gradlew -Dno-fail-version-conflict=true -q -p ../ackim/web clean
if errorlevel 1 ( GOTO:eof )

echo * Skeleton
call ../skeleton/gradlew -Dno-fail-version-conflict=true -q -p ../skeleton clean
if errorlevel 1 ( GOTO:eof )



:eof
echo.
pause
