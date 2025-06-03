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
	git \
	libopengl0

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
sudo apt install -y valgrind

# Java
sudo apt install -y default-jdk

# nvm and nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install 22

# vim plugin manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# HomeBrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" \
# && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# # Clojure (language)
# # required dependencies: java, bash, curl, rlwrap, homebrew
# brew install clojure/tools/clojure
# brew upgrade clojure/tools/clojure

# ## Leiningen for clojure
# sudo apt install -y leiningen

# postgresql installation
sudo apt install postgresql

# tmux installation
sudo apt install -y tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# create tmux configuration file and populate it with basic settings
touch ~/.tmux.conf
echo """# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:

# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'""" > ~/.tmux.conf
