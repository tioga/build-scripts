@echo off
cls



echo.
echo *** Updating Wrapers for Tioga Modules
echo *

echo * dev
call gradle -Dno-fail-version-conflict=true -q -p ../dev wrapper
if errorlevel 1 ( GOTO:eof )

echo * CouchAce
call gradle -Dno-fail-version-conflict=true -q -p ../CouchAce wrapper
if errorlevel 1 ( GOTO:eof )

echo * lib
call gradle -Dno-fail-version-conflict=true -q -p ../lib wrapper
if errorlevel 1 ( GOTO:eof )

echo * apis
call gradle -Dno-fail-version-conflict=true -q -p ../apis wrapper
if errorlevel 1 ( GOTO:eof )

echo * app
call gradle -Dno-fail-version-conflict=true -q -p ../app wrapper
if errorlevel 1 ( GOTO:eof )

echo * runners
call gradle -Dno-fail-version-conflict=true -q -p ../runners wrapper
if errorlevel 1 ( GOTO:eof )



echo.
echo *** Updating Wrapers for Tioga Applications
echo *


echo * Push Server
call gradle -Dno-fail-version-conflict=true -q -p ../Push wrapper
if errorlevel 1 ( GOTO:eof )

echo * Notify Server
call gradle -Dno-fail-version-conflict=true -q -p ../Notify wrapper
if errorlevel 1 ( GOTO:eof )

echo * Jobs Server
call gradle -Dno-fail-version-conflict=true -q -p ../Jobs wrapper
if errorlevel 1 ( GOTO:eof )

echo * Identity Server
call gradle -Dno-fail-version-conflict=true -q -p ../Identity wrapper
if errorlevel 1 ( GOTO:eof )

echo * Photolab
call gradle -Dno-fail-version-conflict=true -q -p ../Photolab wrapper
if errorlevel 1 ( GOTO:eof )

echo * Ack.IM
call gradle -Dno-fail-version-conflict=true -q -p ../ackim/web wrapper
if errorlevel 1 ( GOTO:eof )

echo * Skeleton
call gradle -Dno-fail-version-conflict=true -q -p ../skeleton wrapper
if errorlevel 1 ( GOTO:eof )



:eof
echo.
pause
