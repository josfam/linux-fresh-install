#!/usr/bin/env bash
# Installs homebrew
sudo apt update
sudo apt install -y build-essential curl git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
