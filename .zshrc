# Python version on OS X via pyenv
export PATH="$(pyenv root)/shims:/usr/local/sbin:$PATH"

# Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh