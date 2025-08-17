@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM Path to the src folder (relative to this bat file)
SET "SCRIPT_DIR=%~dp0src"

REM Check if already installed
reg query "HKEY_CLASSES_ROOT\*\shell\BetterCopyAsPath" >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    echo Better Copy as Path is already installed!
    pause
    exit /b
)

REM --- Install for files ---
reg add "HKEY_CLASSES_ROOT\*\shell\BetterCopyAsPath" /ve /d "Better Copy as Path" /f
reg add "HKEY_CLASSES_ROOT\*\shell\BetterCopyAsPath" /v Icon /d "imageres.dll,-5302" /f
reg add "HKEY_CLASSES_ROOT\*\shell\BetterCopyAsPath\command" /ve /d "wscript.exe \"%SCRIPT_DIR%\BetterCopyPath.vbs\" \"%%1\"" /f

REM --- Install for directories ---
reg add "HKEY_CLASSES_ROOT\Directory\shell\BetterCopyAsPath" /ve /d "Better Copy as Path" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\BetterCopyAsPath" /v Icon /d "imageres.dll,-5302" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\BetterCopyAsPath\command" /ve /d "wscript.exe \"%SCRIPT_DIR%\BetterCopyPath.vbs\" \"%%1\"" /f

echo.
echo Better Copy as Path has been installed successfully!
echo (If you don't see it, restart Explorer or log off/on)
pause
ENDLOCAL
