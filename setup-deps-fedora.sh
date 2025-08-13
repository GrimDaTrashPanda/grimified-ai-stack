#!/bin/bash
echo "📦 Installing system dependencies..."
sudo dnf install -y python3 python3-pip docker

echo "📦 Installing Python packages..."
pip3 install --user tk tkhtmlview duckduckgo-search ollama

echo "✅ Done. You can now run gramified_gui.py or launch_gramified.sh"
