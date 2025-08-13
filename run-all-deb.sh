#!/bin/bash
./setup-deps-deb.sh || exit 1
sudo docker load -i ollama-preloaded-v1.0.tar
sudo docker run -d -p 11434:11434 --name ollama ollama-preloaded:latest
python3 gramified_gui.py
