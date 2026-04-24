@echo off
echo SNIPER TECHNO PRODUCTION SYSTEM INSTALLER
echo ==============================================
echo Installing consciousness-engineered templates...
echo.

REM Check if Ableton Live 12 is installed
if exist "C:\Program Files\Ableton\Live 12" (
    echo Ableton Live 12 detected
) else (
    echo Ableton Live 12 not found
    echo Please install Ableton Live 12 first
    pause
    exit /b 1
)

REM Get current user and set paths
set USER_LIBRARY=%USERPROFILE%\Documents\Ableton\User Library
echo Installing for user: %USERNAME%
echo Target directory: %USER_LIBRARY%
echo.

REM Create directory structure
echo Creating consciousness engineering directory structure...
mkdir "%USER_LIBRARY%\Templates" 2>nul
mkdir "%USER_LIBRARY%\Samples\Sniper Consciousness\Kicks" 2>nul
mkdir "%USER_LIBRARY%\Samples\Sniper Consciousness\Bass" 2>nul
mkdir "%USER_LIBRARY%\Samples\Sniper Consciousness\Acid" 2>nul
mkdir "%USER_LIBRARY%\Samples\Sniper Consciousness\Percussion" 2>nul
mkdir "%USER_LIBRARY%\Samples\Sniper Consciousness\Atmosphere" 2>nul
mkdir "%USER_LIBRARY%\Presets\Audio Effects" 2>nul
mkdir "%USER_LIBRARY%\Max for Live" 2>nul

REM Install consciousness templates (if template files exist)
echo Installing 5 consciousness templates...
if exist "templates\" (
    xcopy /s /y "templates\*.als" "%USER_LIBRARY%\Templates\" 2>nul && echo Templates installed successfully
) else (
    echo WARNING: Template files not found - create them manually in Ableton Live 12
    echo Templates should be saved to: %USER_LIBRARY%\Templates\
)

REM Install samples (if sample files exist)
echo Installing consciousness-optimized samples...
if exist "samples\" (
    xcopy /s /y "samples\*" "%USER_LIBRARY%\Samples\Sniper Consciousness\" 2>nul && echo Samples installed successfully
) else (
    echo WARNING: Sample files not found - folders created and ready for your content
)

REM Install Max for Live devices
echo Installing Max for Live consciousness devices...
if exist "max4live\" (
    xcopy /s /y "max4live\*.amxd" "%USER_LIBRARY%\Max for Live\" 2>nul && echo Max for Live devices installed successfully
) else (
    echo WARNING: Max for Live devices not found - folder created and ready
    echo Max devices should go to: %USER_LIBRARY%\Max for Live\
)

echo.
echo INSTALLATION COMPLETE!
echo ==========================
echo.
echo INSTALLATION SUMMARY:
echo * User: %USERNAME%
echo * User Library: %USER_LIBRARY%
echo * Templates: %USER_LIBRARY%\Templates\
echo * Samples: %USER_LIBRARY%\Samples\Sniper Consciousness\
echo * Max for Live: %USER_LIBRARY%\Max for Live\
echo.
echo NEXT STEPS:
echo 1. Restart Ableton Live 12
echo 2. Templates appear in: Browser ^> User Library ^> Templates
echo 3. Samples available in: Browser ^> User Library ^> Samples
echo.
echo CONSCIOUSNESS TEMPLATES READY:
echo * Berlin Consciousness Inducer (145 BPM)
echo * Acid Consciousness Rewiring Protocol (147 BPM)
echo * Swedish Precision Consciousness Engineering (142 BPM)
echo * Hardfloor Psychedelic Consciousness Protocol (148 BPM)
echo * Hardstyle Euphoria Consciousness Engine (150 BPM)
echo.
echo Ready to engineer consciousness through sound!
pause
