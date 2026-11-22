# antidote =====================================================================

source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh

# prompt =======================================================================

if [[ -n "$SSH_CLIENT" || -n "$SSH_TTY" ]]; then
    PROMPT="ssh@%m ❯ "
else
    PROMPT="❯ "
fi

# aliases ======================================================================

alias grep='grep --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -GFh' # macOS only
alias g='git'

# history ======================================================================

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE

setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# keybindings ==================================================================

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

# completions ==================================================================

eval "$(antidote bundle 'zsh-users/zsh-completions path:src kind:fpath')"

fpath=(~/.zsh/completions $fpath)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

autoload -Uz compinit
compinit

# tools ========================================================================

eval "$(~/.local/bin/mise activate zsh)"

for file in ~/.zsh/*.zsh(N); do
    source "$file"
done

# plugins ======================================================================

eval "$(antidote bundle zsh-users/zsh-autosuggestions)"
eval "$(antidote bundle zsh-users/zsh-syntax-highlighting)"

# that's all folks! =============================================================

return # ignore anything tools append below this line
