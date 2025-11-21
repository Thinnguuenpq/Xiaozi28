#!/usr/bin/env bash
# Helper script to build locally (for users that have ESP-IDF installed)
set -e
idf.py set-target esp32s3
idf.py build
echo "Build completed. Artifacts in build/ directory."
