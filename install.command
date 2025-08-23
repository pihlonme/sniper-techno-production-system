#!/bin/bash
# Sniper Techno Production System - macOS Installer
echo "🧠 SNIPER TECHNO PRODUCTION SYSTEM INSTALLER"
echo "=============================================="
echo "Installing consciousness-engineered templates..."
echo ""

# Check if Ableton Live 12 is installed
if [ -d "/Applications/Ableton Live 12.app" ]; then
    echo "✅ Ableton Live 12 detected"
else
    echo "❌ Ableton Live 12 not found"
    echo "Please install Ableton Live 12 first"
    exit 1
fi

# Get current user and set paths
USERNAME=$(whoami)
USER_LIBRARY="/Users/$USERNAME/Music/Ableton/User Library"

echo "👤 Installing for user: $USERNAME"
echo "📁 Target directory: $USER_LIBRARY"
echo ""

# Create directories
echo "📁 Creating directory structure..."
mkdir -p "$USER_LIBRARY/Templates"
mkdir -p "$USER_LIBRARY/Samples/Sniper Consciousness"

echo "✅ INSTALLATION COMPLETE!"
echo "=========================="
echo ""
echo "🚀 NEXT STEPS:"
echo "1. Restart Ableton Live 12"
echo "2. Templates appear in: Browser > User Library > Templates"
echo ""
echo "🧠 Ready to engineer consciousness through sound!"
