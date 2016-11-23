@echo off
cls

echo Uploading archives for dev...
call gradle -q -p ../dev clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for CouchAce...
call gradle -q -p ../CouchAce clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for lib...
call gradle -q -p ../lib clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for apis...
call gradle -q -p ../apis clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for app...
call gradle -q -p ../app clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for runners...
call gradle -q -p ../runners clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Push...
call gradle -q -p ../Push clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Notify...
call gradle -q -p ../Notify clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Jobs...
call gradle -q -p ../Jobs clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Identity...
call gradle -q -p ../Identity clean install uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo *** SKIPPING Photolab ***

:eof
pause
