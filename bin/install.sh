#!/bin/bash

# Define the source path of executable script
SOURCE_SCRIPT="bin/termpilot"

# Define the target directory
TARGET_DIR="$HOME/bin"

# Check if the target directory exists, and if not, create it
if [ ! -d "$TARGET_DIR" ]; then
	echo "Creating $TARGET_DIR directory..."
	mkdir -p "$TARGET_DIR"
fi

# Move or copy the script to the target directory
echo "Installing termpilot to $TARGET_DIR..."
cp "$SOURCE_SCRIPT" "$TARGET_DIR/termpilot"

# Ensure the script is executable
chmod +x "$TARGET_DIR/termpilot"

# Add the target directory to the PATH in .bashrc or .zshrc if it's not already there
if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
	echo 'export PATH=$PATH:$HOME/bin' >>"$HOME/.bashrc"
	echo 'expoet PATH=$PATH:$HOME/bin' >>"$HOME/.zshrc"
	echo "$TARGET_DIR added to PATH. Please restart your terminal or run 'source ~/.bashrc' or 'source ~/.zshrc'"
else
	echo "$TARGET_DIR is already in PATH."
fi

echo "Installation complete. You can now run 'termpilot' from anywhere in your terminal!"
