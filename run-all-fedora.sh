#!/bin/bash
./setup-deps-fedora.sh || exit 1
sudo docker load -i ollama-preloaded.tar
sudo docker run -d -p 11434:11434 --name ollama ollama-preloaded:latest
python3 gramified_gui.py
