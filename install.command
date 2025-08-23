#!/bin/bash
# Sniper Techno Production System - macOS Installer
# Custom installation for Pihlonme
# Ableton Live 12 path: /Applications/Ableton Live 12.app

echo "🧠 SNIPER TECHNO PRODUCTION SYSTEM INSTALLER"
echo "=============================================="
echo "Installing consciousness-engineered templates..."
echo "Custom installation for: Pihlonme"
echo ""

# Check if Ableton Live 12 is installed at the specified path
if [ -d "/Applications/Ableton Live 12.app" ]; then
    echo "✅ Ableton Live 12 detected at: /Applications/Ableton Live 12.app"
else
    echo "❌ Ableton Live 12 not found at expected location"
    echo "Expected: /Applications/Ableton Live 12.app"
    echo "Please verify Ableton Live 12 installation path"
    exit 1
fi

# Set custom paths for user Pihlonme
USERNAME="Pihlonme"
USER_LIBRARY="/Users/Pihlonme/Music/Ableton/User Library"

echo "👤 Installing for user: $USERNAME"
echo "📁 Target directory: $USER_LIBRARY"
echo "🎛️ Ableton Live path: /Applications/Ableton Live 12.app"
echo ""

# Check if user library path exists, create if needed
if [ ! -d "$USER_LIBRARY" ]; then
    echo "📁 Creating Ableton User Library directory..."
    mkdir -p "$USER_LIBRARY"
fi

# Create directory structure for consciousness templates
echo "📁 Creating consciousness engineering directory structure..."
mkdir -p "$USER_LIBRARY/Templates"
mkdir -p "$USER_LIBRARY/Samples/Sniper Consciousness/Kicks"
mkdir -p "$USER_LIBRARY/Samples/Sniper Consciousness/Bass"  
mkdir -p "$USER_LIBRARY/Samples/Sniper Consciousness/Acid"
mkdir -p "$USER_LIBRARY/Samples/Sniper Consciousness/Percussion"
mkdir -p "$USER_LIBRARY/Samples/Sniper Consciousness/Atmosphere"
mkdir -p "$USER_LIBRARY/Presets/Audio Effects"
mkdir -p "$USER_LIBRARY/Max for Live"

# Install consciousness templates (if template files exist)
echo "🎛️ Installing 5 consciousness templates..."
if [ -d "templates" ]; then
    cp templates/*.als "$USER_LIBRARY/Templates/" 2>/dev/null && echo "✅ Templates installed successfully"
else
    echo "⚠️  Template files not found - you'll need to create them manually in Ableton Live 12"
    echo "📍 Templates should be saved to: $USER_LIBRARY/Templates/"
fi

# Install samples (if sample files exist)
echo "🔊 Installing consciousness-optimized samples..."
if [ -d "samples" ]; then
    cp -r samples/* "$USER_LIBRARY/Samples/Sniper Consciousness/" 2>/dev/null && echo "✅ Samples installed successfully"
else
    echo "⚠️  Sample files not found - sample folders created and ready for your content"
fi

# Install MIDI scripts (requires admin password)
echo "🎮 Installing MIDI controller scripts..."
MIDI_SCRIPTS_PATH="/Applications/Ableton Live 12.app/Contents/App-Resources/MIDI Remote Scripts"

if [ -d "midi-scripts" ]; then
    echo "Please enter your password to install MIDI scripts to Ableton Live 12:"
    sudo cp -r midi-scripts/* "$MIDI_SCRIPTS_PATH/" 2>/dev/null && echo "✅ MIDI scripts installed successfully"
else
    echo "⚠️  MIDI scripts not found - controllers will need manual setup"
    echo "📍 MIDI scripts should go to: $MIDI_SCRIPTS_PATH"
fi

# Install Max for Live devices  
echo "⚡ Installing Max for Live consciousness devices..."
if [ -d "max4live" ]; then
    cp max4live/*.amxd "$USER_LIBRARY/Max for Live/" 2>/dev/null && echo "✅ Max for Live devices installed successfully"
else
    echo "⚠️  Max for Live devices not found - folder created and ready for your devices"
    echo "📍 Max devices should go to: $USER_LIBRARY/Max for Live/"
fi

# Set proper permissions for Pihlonme
echo "🔧 Setting file permissions for user: Pihlonme..."
chown -R Pihlonme:staff "$USER_LIBRARY" 2>/dev/null
chmod -R 755 "$USER_LIBRARY/Templates" 2>/dev/null
chmod -R 755 "$USER_LIBRARY/Samples/Sniper Consciousness" 2>/dev/null
chmod -R 755 "$USER_LIBRARY/Max for Live" 2>/dev/null

echo ""
echo "✅ INSTALLATION COMPLETE FOR PIHLONME!"
echo "======================================="
echo ""
echo "📍 INSTALLATION SUMMARY:"
echo "• User: Pihlonme"
echo "• Ableton Live 12: /Applications/Ableton Live 12.app"
echo "• User Library: $USER_LIBRARY"
echo "• Templates: $USER_LIBRARY/Templates/"
echo "• Samples: $USER_LIBRARY/Samples/Sniper Consciousness/"
echo "• Max for Live: $USER_LIBRARY/Max for Live/"
echo ""
echo "🚀 NEXT STEPS:"
echo "1. Restart Ableton Live 12"
echo "2. Templates appear in: Browser > User Library > Templates"
echo "3. MIDI controllers available in: Live > Preferences > MIDI"
echo "4. Samples available in: Browser > User Library > Samples"
echo ""
echo "🧠 CONSCIOUSNESS TEMPLATES READY:"
echo "• Berlin Consciousness Inducer (145 BPM)"
echo "• Acid Consciousness Rewiring Protocol (147 BPM)"  
echo "• Swedish Precision Consciousness Engineering (142 BPM)"
echo "• Hardfloor Psychedelic Consciousness Protocol (148 BPM)"
echo "• Hardstyle Euphoria Consciousness Engine (150 BPM)"
echo ""
echo "🎯 Ready to engineer consciousness through sound!"
echo "The Sniper and Arrow Brothers Laboratory is now active for Pihlonme!"
echo ""

# Optional: Open Ableton Live 12
read -p "Open Ableton Live 12 now? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    open "/Applications/Ableton Live 12.app"
    echo "🎛️ Launching Ableton Live 12..."
fi

echo "🔥 Installation complete! Time to create some legendary techno! 🧠⚡"
