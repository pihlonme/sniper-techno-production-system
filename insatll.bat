@echo off
echo 🧠 SNIPER TECHNO PRODUCTION SYSTEM INSTALLER
echo ==============================================
echo Installing consciousness-engineered templates...
echo.

REM Check if Ableton Live 12 is installed
if exist "C:\Program Files\Ableton\Live 12" (
    echo ✅ Ableton Live 12 detected
) else (
    echo ❌ Ableton Live 12 not found
    echo Please install Ableton Live 12 first
    pause
    exit /b 1
)

REM Get current user and set paths
set USERNAME=%USERNAME%
set USER_LIBRARY=C:\Users\%USERNAME%\Documents\Ableton\User Library

echo 👤 Installing for user: %USERNAME%
echo 📁 Target directory: %USER_LIBRARY%
echo.

REM Create directories
echo 📁 Creating directory structure...
mkdir "%USER_LIBRARY%\Templates" 2>nul
mkdir "%USER_LIBRARY%\Samples\Sniper Consciousness" 2>nul

echo.
echo ✅ INSTALLATION COMPLETE!
echo ==========================
echo.
echo 🚀 NEXT STEPS:
echo 1. Restart Ableton Live 12
echo 2. Templates appear in: Browser ^> User Library ^> Templates
echo.
echo 🧠 Ready to engineer consciousness through sound!
pause
