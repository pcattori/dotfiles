export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

# completion
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/ripgrep", from:oh-my-zsh
zplug "Aloxaf/fzf-tab", from:github, defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2 # fish-style auto-suggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=242"

# other
zplug "plugins/wd", from:oh-my-zsh # new `jump`
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
