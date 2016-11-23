@echo off
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
