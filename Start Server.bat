@echo off
echo Starting Washington Anesthesia Partners local server...
echo.
echo Once started, open your browser and go to:
echo   http://localhost:3000
echo.
echo Close this window to stop the server.
echo.
powershell -ExecutionPolicy Bypass -NoExit -File "%~dp0start-server.ps1"
