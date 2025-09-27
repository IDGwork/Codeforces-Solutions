#!/bin/zsh
TARGET=$1
INPUT=$2

if [ -z "$TARGET" ]; then
    echo "Usage: ./test.sh <TargetName> [InputFile]"
    exit 1
fi

# Build everything first
./build.sh >/dev/null 2>&1

# If no input provided, guess path from target
if [ -z "$INPUT" ]; then
    REL_PATH=$(echo $TARGET | sed 's/_/\//g')
    INPUT="contests/$REL_PATH/input.txt"
fi

# Fix common typo: "Practise" → "Practice"
INPUT=$(echo $INPUT | sed 's/Practise/Practice/g')
TARGET=$(echo $TARGET | sed 's/Practise/Practice/g')

# Run the program
if [ -f "$INPUT" ]; then
    ./cmake-build-debug-system/$TARGET < $INPUT
else
    ./cmake-build-debug-system/$TARGET
fi
