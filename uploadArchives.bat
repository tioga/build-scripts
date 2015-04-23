@echo off
cls

echo Uploading archives for dev...
call gradle -Dno-fail-version-conflict=true -q -p ../dev clean build uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for CouchAce...
call gradle -Dno-fail-version-conflict=true -q -p ../CouchAce clean build uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for runners...
call gradle -Dno-fail-version-conflict=true -q -p ../runners clean build uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for lib...
call gradle -Dno-fail-version-conflict=true -q -p ../lib clean build uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for apis...
call gradle -Dno-fail-version-conflict=true -q -p ../apis clean build uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for app...
call gradle -Dno-fail-version-conflict=true -q -p ../app clean build uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Push...
call gradle -Dno-fail-version-conflict=true -q -p ../Push clean build uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Notify...
call gradle -Dno-fail-version-conflict=true -q -p ../Notify clean build uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Jobs...
call gradle -Dno-fail-version-conflict=true -q -p ../Jobs clean build uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

:eof
pause
