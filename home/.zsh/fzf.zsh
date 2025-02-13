source <(fzf --zsh)

export FZF_DEFAULT_COMMAND="fd"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND="fd --type d"

# Colorscheme = rose-pine
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"
 --color=fg:#e0def4,bg:#1f1d2e,hl:#6e6a86
 --color=fg+:#908caa,bg+:#191724,hl+:#908caa
 --color=info:#9ccfd8,prompt:#f6c177,pointer:#c4a7e7
 --color=marker:#ebbcba,spinner:#eb6f92,header:#ebbcba"

zstyle ':fzf-tab:*' show-group none

