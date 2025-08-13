# 📦 Ollama Kit v1.0 — Docker Deployment + Gramified GUI 🚀

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)


🧠 **Author:** Grim  
📅 **Created:** Aug 13th, 2025  
📁 **Version:** 1.0 (Docker-based)

---

## 🛠 Requirements

* Linux (Fedora, Debian, or Ubuntu)
* Docker installed and running
* Python 3.10+ with Tkinter installed
* Internet connection for initial setup and model pulls

---

## 📦 Step 1: Install Dependencies

**Fedora:**
```bash
./setup-deps-fedora.sh
````

**Debian/Ubuntu:**

```bash
./setup-deps-deb.sh
```

-----

## 🐳 Step 2: Start Ollama Container

For the first-time start, this command creates a fresh Ollama container without models:

```bash
sudo docker run -d \
  -p 11434:11434 \
  --name ollama \
  ollama/ollama:0.11.4
```

-----

## 📥 Step 3: Pull Models

**Examples:**

```bash
sudo docker exec -it ollama ollama pull mistral
sudo docker exec -it ollama ollama pull llama3
```

Repeat this command for all desired models.

-----

## 🚀 Step 4: Launch the Gramified GUI

1.  **Activate virtual environment:**
    ```bash
    python3 -m venv ~/.venvs/gramified
    source ~/.venvs/gramified/bin/activate
    pip install -r requirements.txt
    ```
2.  **Start GUI:**
    ```bash
    python bin/gramified_gui.py
    ```

-----

## 📂 Folder Contents

  * `gramified_gui.py` → GUI front end
  * `setup-deps-fedora.sh` → Fedora dependency installer
  * `setup-deps-deb.sh` → Debian/Ubuntu dependency installer
  * `launch_from_scratch.sh` → One-command start script (optional)
  * `requirements.txt` → Python dependencies

-----

## 📴 Notes

  * This version runs in **Docker**, not Podman.
  * Models are stored inside the Docker container unless mounted externally.
  * To update Ollama: stop and remove the existing container, pull the new image, and then recreate the container.

<!-- end list -->

```
```
