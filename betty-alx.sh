#!/usr/bin/env bash
# Installs ALXSEs betty C linter into the ~/programs directory
# The script assumes that ~/programs is in the PATH
cd ~/programs
git clone https://github.com/alx-tools/Betty.git
cd Betty
sudo ./install.sh

content='#!/bin/bash
# Simply a wrapper script to keep you from having to use betty-style
# and betty-doc separately on every item.
# Originally by Tim Britton (@wintermanc3r), multiargument added by
# Larry Madeo (@hillmonkey)

BIN_PATH="/usr/local/bin"
BETTY_STYLE="betty-style"
BETTY_DOC="betty-doc"

if [ "$#" = "0" ]; then
    echo "No arguments passed."
    exit 1
fi

for argument in "$@" ; do
    echo -e "\n========== $argument =========="
    ${BIN_PATH}/${BETTY_STYLE} "$argument"
    ${BIN_PATH}/${BETTY_DOC} "$argument"
done'

touch betty
echo "$content" > betty
sudo chmod +x betty
# copy to the root level of programs directory
sudo cp betty ..
