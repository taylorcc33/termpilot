#!/bin/bash

# Define the source and target paths
SOURCE_DIR="$(pwd)"
TARGET_DIR="$HOME/bin/termpilot"

# Check if the target directory exists, if not, create it
if [ ! -d "$TARGET_DIR" ]; then
	echo "Creating $TARGET_DIR directory..."
	mkdir -p "$TARGET_DIR"
fi

# Copy the entire project to the target directory
echo "Installing termpilot to $TARGET_DIR..."
cp -r "$SOURCE_DIR"/* "$TARGET_DIR/"

# Ensure the main executable script is executable
chmod +x "$TARGET_DIR/bin/termpilot"

# Create a symlink in ~/bin for easier access
ln -sf "$TARGET_DIR/bin/termpilot" "$HOME/bin/termpilot"

# Add the target directory to the PATH in .bashrc or .zshrc if it's not already there
if [[ ":$PATH:" != *":$HOME/bin:"* ]]; then
	echo 'export PATH=$PATH:$HOME/bin' >>"$HOME/.bashrc"
	echo 'export PATH=$PATH:$HOME/bin' >>"$HOME/.zshrc"
	echo "$HOME/bin added to PATH. Please restart your terminal or run 'source ~/.bashrc' or 'source ~/.zshrc' to update your PATH."
else
	echo "$HOME/bin is already in your PATH."
fi

echo "Installation complete. You can now run 'termpilot' from anywhere in your terminal."
