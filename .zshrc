# Python version on OS X via pyenv
export PATH="$(pyenv root)/shims:/usr/local/sbin:$PATH"

# Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Cairo
# Requires brew install libsvg-cairo
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

# Aliasing hub into git
eval "$(hub alias -s)"

# Stop all containers
dsa() { docker stop $(docker ps -a -q); }

# Remove all containers
drma() { docker rm $(docker ps -a -q); }