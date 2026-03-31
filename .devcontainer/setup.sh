#!/bin/bash
set -e

sudo apt-get update
sudo apt-get install -y gnupg tree nano vim

chmod +x scripts/*.sh || true
chmod +x .devcontainer/*.sh || true

mkdir -p workspace/alice workspace/bob workspace/preuves

echo "Environnement prêt."
gpg --version
