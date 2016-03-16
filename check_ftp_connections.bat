@echo off

for /f "delims=" %%i in ('netstat -b ^| find "coresrvr.exe" ^| find /c /v ""') do set output=%%i

IF %output% GEQ 10 GOTO crit
IF %output% GEQ 7 GOTO warn
IF %output% GEQ 0 GOTO ok
GOTO unknown

:crit
echo CRITICAL: %output% connections
exit /B 2

:crit
echo WARN: %output% connections
exit /B 1

:crit
echo OK: %output% connections
exit /B 0

:crit
echo UNKNOWN: something went wrong
exit /B 3

