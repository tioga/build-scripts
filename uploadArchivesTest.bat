@echo off
cls

echo Checking Dependencies for dev...
call gradle -Dno-fail-version-conflict=true -q -p ../dev uploadArchivesTest
echo.
if errorlevel 1 ( GOTO:eof )

echo Checking Dependencies for CouchAce...
call gradle -Dno-fail-version-conflict=true -q -p ../CouchAce uploadArchivesTest
echo.
if errorlevel 1 ( GOTO:eof )

echo Checking Dependencies for lib...
call gradle -Dno-fail-version-conflict=true -q -p ../lib uploadArchivesTest
echo.
if errorlevel 1 ( GOTO:eof )

echo Checking Dependencies for apis...
call gradle -Dno-fail-version-conflict=true -q -p ../apis uploadArchivesTest
echo.
if errorlevel 1 ( GOTO:eof )

echo Checking Dependencies for app...
call gradle -Dno-fail-version-conflict=true -q -p ../app uploadArchivesTest
echo.
if errorlevel 1 ( GOTO:eof )

echo Checking Dependencies for runners...
call gradle -Dno-fail-version-conflict=true -q -p ../runners uploadArchivesTest
echo.
if errorlevel 1 ( GOTO:eof )

echo Checking Dependencies for Push...
call gradle -Dno-fail-version-conflict=true -q -p ../Push uploadArchivesTest
echo.
if errorlevel 1 ( GOTO:eof )

echo Checking Dependencies for Notify...
call gradle -Dno-fail-version-conflict=true -q -p ../Notify uploadArchivesTest
echo.
if errorlevel 1 ( GOTO:eof )

echo Checking Dependencies for Jobs...
call gradle -Dno-fail-version-conflict=true -q -p ../Jobs uploadArchivesTest
echo.
if errorlevel 1 ( GOTO:eof )

echo Checking Dependencies for Photolab...
call gradle -Dno-fail-version-conflict=true -q -p ../Photolab uploadArchivesTest
echo.
if errorlevel 1 ( GOTO:eof )

:eof
pause
