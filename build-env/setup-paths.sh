#!/bin/bash

echo "=== Mapping Project Amber Tool Environment Variables ==="

# 1. Establish path markers pointing to the PowerPC compiler architectures
export DEVKITPRO=/opt/devkitpro
export DEVKITPPC=$DEVKITPRO/devkitPPC
export PATH=$DEVKITPPC/bin:$PATH

# 2. Configure target environment paths for build outputs
export AMBER_BUILD_DIR=$(pwd)/build
export AMBER_OUTPUT_DIR=$(pwd)/output

mkdir -p "$AMBER_BUILD_DIR"
mkdir -p "$AMBER_OUTPUT_DIR"

echo "✔ Cross-compiler system mappings locked in and ready."

