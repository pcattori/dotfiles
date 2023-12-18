# zplug =======================================================================

export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/ripgrep", from:oh-my-zsh
zplug "Aloxaf/fzf-tab", from:github, defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2 # fish-style auto-suggestions
zplug "mfaerevaag/wd", as:command, use:"wd.sh", hook-load:"wd() { . $ZPLUG_REPOS/mfaerevaag/wd/wd.sh }"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load

# prompt ======================================================================

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    PROMPT="ssh@%m ❯ " # %m = host
else
    PROMPT="❯ "
fi

# aliases =====================================================================

alias grep='grep --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -GFh' # MacOS only
alias x="trash"
alias g="git"
alias v="NVIM_APPNAME=nvim-pcattori nvim"

# keybindings =================================================================

# emacs-style editing by default
bindkey -e

# vi-style editing with <CTRL-x><CTRL-e>
autoload edit-command-line; zle -N edit-command-line
bindkey "^X^E" edit-command-line

# history =====================================================================

export HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt inc_append_history
setopt hist_ignore_space
setopt hist_ignore_all_dups

# .zsh ========================================================================

for file in ~/.zsh/*; do
    source "$file"
done
