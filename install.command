#!/bin/bash

# Sniper Techno Production System - macOS Installer
set -e

USERNAME=$(whoami)
INSTALL_DIR="/Users/$USERNAME/SniperSystem"

echo "========================================"
echo " Sniper Techno Production System"
echo " macOS Installer"
echo "========================================"
echo ""
echo "Installing for user: $USERNAME"
echo "Install directory: $INSTALL_DIR"
echo ""

# Check for Homebrew
if ! command -v brew &> /dev/null; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew found. Updating..."
  brew update
fi

# Check for Node.js
if ! command -v node &> /dev/null; then
  echo "Node.js not found. Installing via Homebrew..."
  brew install node
else
  echo "Node.js found: $(node -v)"
fi

# Check for Python3
if ! command -v python3 &> /dev/null; then
  echo "Python3 not found. Installing via Homebrew..."
  brew install python
else
  echo "Python3 found: $(python3 --version)"
fi

# Create install directory
mkdir -p "$INSTALL_DIR"
echo "Created directory: $INSTALL_DIR"

# Clone or update the repository
if [ -d "$INSTALL_DIR/.git" ]; then
  echo "Repository already exists. Pulling latest changes..."
  cd "$INSTALL_DIR"
  git pull
else
  echo "Cloning Sniper Techno Production System..."
  git clone https://github.com/pihlonme/sniper-techno-production-system.git "$INSTALL_DIR"
  cd "$INSTALL_DIR"
fi

# Install npm dependencies if package.json exists
if [ -f "package.json" ]; then
  echo "Installing Node.js dependencies..."
  npm install
fi

# Install Python dependencies if requirements.txt exists
if [ -f "requirements.txt" ]; then
  echo "Installing Python dependencies..."
  pip3 install -r requirements.txt
fi

echo ""
echo "========================================"
echo " Installation Complete!"
echo " Sniper Techno Production System"
echo " is installed at: $INSTALL_DIR"
echo "========================================"
echo ""
