@echo off
cls

call install-modules.bat
if errorlevel 1 ( GOTO:eof )


call install-clients.bat
if errorlevel 1 ( GOTO:eof )


call install-apps.bat
if errorlevel 1 ( GOTO:eof )


:eof
echo.
pause
