#!/bin/bash

# Run a compiled Java class from bin directory
# Usage: ./run.sh packageName.ClassName

BIN_DIR="bin"

if [ -z "$1" ]; then
  echo "Usage: ./run.sh packageName.ClassName"
  exit 1
fi

java -cp "$BIN_DIR" "$1"
