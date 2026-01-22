#!/usr/bin/env bash

mkdir ~/programs
cd ~/programs
wget https://www.python.org/ftp/python/3.10.19/Python-3.10.19.tar.xz
cd Python-3.10.19
./configure
make
sudo make altinstall
python3.10 --version
