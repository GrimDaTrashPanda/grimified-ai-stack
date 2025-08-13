#!/bin/bash

# Step 1: Start Ollama daemon
echo "[💡] Starting Ollama in background..."
ollama serve > /dev/null 2>&1 &

# Step 2: Wait a moment
sleep 2

# Step 3: Launch your chat UI
echo "[🚀] Launching Gramified Chat UI..."
python3 ~/gramified_gui.py
