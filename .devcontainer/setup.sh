#!/usr/bin/env bash
set -e

echo "🔧 Installing system dependencies..."
sudo apt update
sudo apt install -y \
  pandoc \
  python3-pip \
  libcairo2 \
  libpango-1.0-0 \
  libpangocairo-1.0-0 \
  libgdk-pixbuf2.0-0 \
  libffi-dev

echo "🐍 Installing WeasyPrint..."
pip install --user weasyprint

echo "✅ Setup complete"
