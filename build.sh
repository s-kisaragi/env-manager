#!/bin/bash
set -e

echo "Building env-manager with Nuitka..."

uv run --group dev python -m nuitka \
    --onefile \
    --output-filename=env-manager \
    --assume-yes-for-downloads \
    env_manager.py

echo ""
echo "Build complete: ./env-manager"
