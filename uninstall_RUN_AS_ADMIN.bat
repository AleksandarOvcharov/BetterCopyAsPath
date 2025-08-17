@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM Check if not installed
reg query "HKEY_CLASSES_ROOT\*\shell\BetterCopyAsPath" >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Better Copy as Path is not installed!
    pause
    exit /b
)

REM --- Remove for files ---
reg delete "HKEY_CLASSES_ROOT\*\shell\BetterCopyAsPath" /f

REM --- Remove for directories ---
reg delete "HKEY_CLASSES_ROOT\Directory\shell\BetterCopyAsPath" /f

echo.
echo Better Copy as Path has been uninstalled successfully!
pause
ENDLOCAL
