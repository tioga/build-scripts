@echo off
cls

echo Cleaning dev...
call gradle -Dno-fail-version-conflict=true -q -p ../dev clean
echo.
if errorlevel 1 ( GOTO:eof )

echo Cleaning CouchAce...
call gradle -Dno-fail-version-conflict=true -q -p ../CouchAce clean
echo.
if errorlevel 1 ( GOTO:eof )

echo Cleaning runners...
call gradle -Dno-fail-version-conflict=true -q -p ../runners clean
echo.
if errorlevel 1 ( GOTO:eof )

echo Cleaning lib...
call gradle -Dno-fail-version-conflict=true -q -p ../lib clean
echo.
if errorlevel 1 ( GOTO:eof )

echo Cleaning apis...
call gradle -Dno-fail-version-conflict=true -q -p ../apis clean
echo.
if errorlevel 1 ( GOTO:eof )

echo Cleaning app...
call gradle -Dno-fail-version-conflict=true -q -p ../app clean
echo.
if errorlevel 1 ( GOTO:eof )

echo Cleaning Push...
call gradle -Dno-fail-version-conflict=true -q -p ../Push clean
echo.
if errorlevel 1 ( GOTO:eof )

echo Cleaning Notify...
call gradle -Dno-fail-version-conflict=true -q -p ../Notify clean
echo.
if errorlevel 1 ( GOTO:eof )

echo Cleaning Jobs...
call gradle -Dno-fail-version-conflict=true -q -p ../Jobs clean
echo.
if errorlevel 1 ( GOTO:eof )

:eof
pause
