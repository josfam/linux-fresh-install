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
	git-lfs \
	libopengl0 \
	python3-dev

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

# Niceties
sudo apt install -y \
	trash-cli

# postgresql
sudo apt install -y \
	libpq-dev \
	postgresql \
	postgresql-contrib
## start and enable postgresql
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Valgrind
sudo apt install -y valgrind

# Java
sudo apt install -y default-jdk

# nvm and nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
nvm install 24

# vim plugin manager
# note: remember to run :PlugInstall when you next open vim
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

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
cat > ~/.tmux.conf << 'EOF'
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plutin 'tmux-plugins/tmux-continuum'

## Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'github_username/plugin_name#branch'
# set -g @plugin 'git@github.com:user/plugin'
# set -g @plugin 'git@bitbucket.com:user/plugin'

# tmux-resurrect settings
set -g @resurrect-strategy-vim 'session'
set -g @resurrect-capture-pane-contents 'on'

# tmux-continuum settings
set -g @continuum-restore 'on'
set -g @continuum-save-interval '5'

# mouse settings
set -g mouse on

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
EOF
