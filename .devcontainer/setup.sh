#!/usr/bin/env bash
set -e

echo "🔧 Installing system dependencies..."
sudo apt update
sudo apt install -y \
  pandoc \
  python3-full \
  libcairo2 \
  libpango-1.0-0 \
  libpangocairo-1.0-0 \
  libgdk-pixbuf2.0-0 \
  libffi-dev

echo "🐍 Creating virtual environment..."
python3 -m venv .venv

echo "🐍 Installing WeasyPrint in venv..."
. .venv/bin/activate
pip install --upgrade pip
pip install weasyprint

echo "🔗 Enabling automatic venv activation..."

cat <<'EOF' >> ~/.bashrc

# Auto-activate project virtual environment
if [ -f ".venv/bin/activate" ]; then
  source .venv/bin/activate
fi
EOF

echo "✅ Setup complete"

