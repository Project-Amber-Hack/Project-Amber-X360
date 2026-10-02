#!/bin/bash
set -e

echo "=== Commencing Project Amber Production Build Pipeline ==="

# 1. Compile source assets via multi-file Makefile orchestration
make clean
make

echo "=== Converting Target Layer to Executable Xbox 360 Format ==="
# 2. Package the compiled PowerPC ELF target into a cryptographically signed default.xex
xextool -c u -e u -o default.xex build/project_amber.elf

echo "✔ Successfully exported production-ready 'default.xex' for deployment!"

