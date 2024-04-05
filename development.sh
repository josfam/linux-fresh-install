#!/usr/bin/env bash
# For software-development/coding tools

sudo apt update

# General
sudo apt install -y \
	build-essential \
	cmake \
	bash \
	curl \
	rlwrap \
	vim \
	git

# Adds dependencies that are usually required when building Python from source
sudo apt install -y \
		 pkg-config \
		 python3-tk \
		 libsqlite3-dev \
		 libncurses5-dev \
		 libgdbm-dev \
		 libbz2-dev \
		 libdb-dev \
		 uuid-dev \
		 libffi-dev \
		 liblzma-dev \
		 libreadline-dev \
		 libssl-dev \
		 tk-dev \
		 zlib1g-dev

# Valgrind
sudo apt install valgrind

# Java
sudo apt install -y default-jdk

# HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Clojure (language)
brew install clojure/tools/clojure
brew upgrade clojure/tools/clojure
