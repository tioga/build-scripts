@echo off
echo.
echo *** Installing Tioga Applications
echo *

echo * Push
call gradle -q -p ../push install
if errorlevel 1 ( GOTO:eof )

echo * Notify
call gradle -q -p ../notify install
if errorlevel 1 ( GOTO:eof )

echo * Jobs
call gradle -q -p ../jobs install
if errorlevel 1 ( GOTO:eof )

echo * Identity
call gradle -q -p ../identity install
if errorlevel 1 ( GOTO:eof )

echo * Ack.IM
call gradle -q -p ../ackim/web install
if errorlevel 1 ( GOTO:eof )

echo * Skeleton
call gradle -q -p ../skeleton install
if errorlevel 1 ( GOTO:eof )

echo * PhotoLab
call gradle -q -p ../photolab install
if errorlevel 1 ( GOTO:eof )

:eof
