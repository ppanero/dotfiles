# setup instructions
# 1. Install Oh-My-Zsh: https://ohmyz.sh/#install
# 2. ln -s $(pwd)/.zshrc ~/.zshrc
#
# For Python
# 1. brew update
# 3. brew install openssl readline xz pyenv
# 4. pyenv install 3.11.4
# 5. pyenv global 3.11.4
# 6. source or open a new terminal
#
# For psql client
# 1. brew install libpq
# 2. brew link --force libpq
#
# note: the previous python requirements will change
# depending on the version
# --------------------------------------------------

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="simple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  macos
  docker
  iterm2
)
source $ZSH/oh-my-zsh.sh

# User configuration

# Python version on OS X via pyenv
export PATH="$(pyenv root)/shims:/usr/local/sbin:$PATH"

# Virtualenvwrapper
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
# source /usr/local/bin/virtualenvwrapper.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# AWS
export AWS_ACCESS_KEY_ID="CHANGEME"
export AWS_SECRET_ACCESS_KEY="CHANGEME"
export AWS_SESSION_TOKEN="CHANGEME"

# psql client
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"

# Golang
# export GOPATH="/Users/ppanero/Workspace/go"

# Aliases

# Stop all containers
dsa() { docker stop $(docker ps -a -q); }

# Remove all containers
drma() { docker rm $(docker ps -a -q); }

# login into aws
aws_login() { aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin CHANGEME.dkr.ecr.eu-west-1.amazonaws.com }

# vs code
# install from vs code itself