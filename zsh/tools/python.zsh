# pyenv
#######

# https://github.com/pyenv/pyenv#installation
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# poetry
########

# https://poetry.eustace.io/docs/#installation
export PATH=$HOME/.poetry/bin:$PATH

alias prp="poetry run python"

# invoke
########

alias pri="poetry run invoke"
