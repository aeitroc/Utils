#!/bin/bash

# MQL5 Compiler with Windows Drive Paths
clear

WINE_PREFIX="/Users/besi/Library/Application Support/net.metaquotes.wine.metatrader5"
FILENAME="$1"

if [ -z "$1" ]; then
    echo "Usage: $0 <relative_path>"
    exit 1
fi

echo "⌛ Compiling: $(basename "$FILENAME")"

# Set Wine environment
export WINEPREFIX="$WINE_PREFIX"
export WINEDEBUG=-all

# Use Windows C: drive paths
WIN_SOURCE="C:\\MT5\\MQL5\\$(echo "$FILENAME" | sed 's|/|\\|g')"
WIN_LOG="C:\\MT5\\MQL5\\winepath_compilation.log"

echo "🍷 Using Windows drive paths..."
echo "Source: $WIN_SOURCE"
echo "Log: $WIN_LOG"

# Method 1: Direct Wine call
wine "C:\\MT5\\metaeditor64.exe" /compile:"$WIN_SOURCE" /log:"$WIN_LOG"

# Check result
LOG_UNIX_PATH="/Users/besi/Library/Application Support/net.metaquotes.wine.metatrader5/drive_c/MT5/MQL5/winepath_compilation.log"

if [ -f "$LOG_UNIX_PATH" ] && [ -s "$LOG_UNIX_PATH" ]; then
    echo "✅ SUCCESS with Windows paths!"
    cat "$LOG_UNIX_PATH"
else
    echo "⚠️  Method 1 failed, trying Method 2..."
fi
