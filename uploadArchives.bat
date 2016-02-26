@echo off
cls

echo Uploading archives for dev...
call gradle -Dno-fail-version-conflict=true -q -p ../dev clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for CouchAce...
call gradle -Dno-fail-version-conflict=true -q -p ../CouchAce clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for runners...
call gradle -Dno-fail-version-conflict=true -q -p ../runners clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for lib...
call gradle -Dno-fail-version-conflict=true -q -p ../lib clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for apis...
call gradle -Dno-fail-version-conflict=true -q -p ../apis clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for app...
call gradle -Dno-fail-version-conflict=true -q -p ../app clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Push...
call gradle -Dno-fail-version-conflict=true -q -p ../Push clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Notify...
call gradle -Dno-fail-version-conflict=true -q -p ../Notify clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Jobs...
call gradle -Dno-fail-version-conflict=true -q -p ../Jobs clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

:eof
pause
