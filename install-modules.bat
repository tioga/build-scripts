@echo off
echo.
echo *** Installing Tioga Modules
echo *

echo * dev
call ../dev/gradlew -q -p ../dev install
if errorlevel 1 ( GOTO:eof )

echo * CouchAce
call ../CouchAce/gradlew -q -p ../CouchAce install
if errorlevel 1 ( GOTO:eof )

echo * lib
call ../lib/gradlew -q -p ../lib install
if errorlevel 1 ( GOTO:eof )

echo * apis
call ../apis/gradlew -q -p ../apis install
if errorlevel 1 ( GOTO:eof )

echo * app
call ../app/gradlew -q -p ../app install
if errorlevel 1 ( GOTO:eof )

echo * runners
call ../runners/gradlew -q -p ../runners install
if errorlevel 1 ( GOTO:eof )
