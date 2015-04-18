@echo off
cls

echo Uploading archives for dev...
call gradle -Dno-fail-version-conflict=true -q -p ../dev uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for CouchAce...
call gradle -Dno-fail-version-conflict=true -q -p ../CouchAce uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for runners...
call gradle -Dno-fail-version-conflict=true -q -p ../runners uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for lib...
call gradle -Dno-fail-version-conflict=true -q -p ../lib uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for apis...
call gradle -Dno-fail-version-conflict=true -q -p ../apis uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for app...
call gradle -Dno-fail-version-conflict=true -q -p ../app uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Push...
call gradle -Dno-fail-version-conflict=true -q -p ../Push uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Notify...
call gradle -Dno-fail-version-conflict=true -q -p ../Notify uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

echo Uploading archives for Jobs...
call gradle -Dno-fail-version-conflict=true -q -p ../Jobs uploadArchives
echo.
if errorlevel 1 ( GOTO:eof )

:eof
pause
