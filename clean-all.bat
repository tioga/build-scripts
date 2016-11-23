@echo off
cls



echo.
echo *** Cleaning Tioga Modules
echo *

echo * dev
call gradle -Dno-fail-version-conflict=true -q -p ../dev clean
if errorlevel 1 ( GOTO:eof )

echo * CouchAce
call gradle -Dno-fail-version-conflict=true -q -p ../CouchAce clean
if errorlevel 1 ( GOTO:eof )

echo * lib
call gradle -Dno-fail-version-conflict=true -q -p ../lib clean
if errorlevel 1 ( GOTO:eof )

echo * apis
call gradle -Dno-fail-version-conflict=true -q -p ../apis clean
if errorlevel 1 ( GOTO:eof )

echo * app
call gradle -Dno-fail-version-conflict=true -q -p ../app clean
if errorlevel 1 ( GOTO:eof )

echo * runners
call gradle -Dno-fail-version-conflict=true -q -p ../runners clean
if errorlevel 1 ( GOTO:eof )



echo.
echo *** Cleaning Tioga Applications
echo *


echo * Push Server
call gradle -Dno-fail-version-conflict=true -q -p ../Push clean
if errorlevel 1 ( GOTO:eof )

echo * Notify Server
call gradle -Dno-fail-version-conflict=true -q -p ../Notify clean
if errorlevel 1 ( GOTO:eof )

echo * Jobs Server
call gradle -Dno-fail-version-conflict=true -q -p ../Jobs clean
if errorlevel 1 ( GOTO:eof )

echo * Identity Server
call gradle -Dno-fail-version-conflict=true -q -p ../Identity clean
if errorlevel 1 ( GOTO:eof )

echo * Photolab
call gradle -Dno-fail-version-conflict=true -q -p ../Photolab clean
if errorlevel 1 ( GOTO:eof )

echo * Ack.IM
call gradle -Dno-fail-version-conflict=true -q -p ../ackim/web clean
if errorlevel 1 ( GOTO:eof )



:eof
echo.
pause
