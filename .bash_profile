# WARNING: Do not replace with the original. Just append.

# Aliasing hub into git
eval "$(hub alias -s)"

# Docker

# Stop all containers
dsa() { docker stop $(docker ps -a -q); }

# Remove all containers
drma() { docker rm $(docker ps -a -q); }

