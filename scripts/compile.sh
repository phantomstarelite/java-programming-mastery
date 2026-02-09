#!/bin/bash

# Compile all Java source files into the bin directory

SRC_DIR="src"
BIN_DIR="bin"

echo "Compiling Java source files..."

mkdir -p "$BIN_DIR"

find "$SRC_DIR" -name "*.java" > sources.txt

if [ ! -s sources.txt ]; then
  echo "No Java source files found."
  rm -f sources.txt
  exit 1
fi

javac -d "$BIN_DIR" @sources.txt

if [ $? -eq 0 ]; then
  echo "Compilation successful."
else
  echo "Compilation failed."
fi

rm -f sources.txt
