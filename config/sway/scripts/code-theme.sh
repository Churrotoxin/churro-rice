#!/bin/bash

# Set variables
THEME_NAME="$1"
SETTINGS_FILE=~/.config/VSCodium/User/settings.json

# Check if the settings.json file exists
if [ ! -f "$SETTINGS_FILE" ]; then
  echo "Settings file not found at $SETTINGS_FILE."
  exit 1
fi

# Use sed to replace the theme line
sed -i.bak "/\"workbench.colorTheme\":/c\\\"workbench.colorTheme\": \"$THEME_NAME\"," "$SETTINGS_FILE"

# Check if the replacement was successful
if [ $? -eq 0 ]; then
  echo "Theme changed to '$THEME_NAME'. Backup created at 'settings.json.bak'."
else
  echo "Failed to update the theme."
fi
