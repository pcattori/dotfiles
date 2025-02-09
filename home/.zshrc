# zinit =======================================================================

# setup
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# plugins
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting

# completions
for completion in ~/.zsh/completions/*; do
    zinit ice as"completion"
    zinit snippet $completion
done
autoload -Uz compinit && compinit
zinit cdreplay -q

# .zsh ========================================================================

for file in ~/.zsh/*; do
    source "$file"
done

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
alias v="nvim"

# keybindings =================================================================

# emacs-style editing by default
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# vi-style editing with <CTRL-x><CTRL-e>
export EDITOR="nvim"
autoload edit-command-line; zle -N edit-command-line
bindkey "^X^E" edit-command-line

# history =====================================================================

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt sharehistory
setopt inc_append_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
