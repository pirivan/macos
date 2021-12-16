alias cat="bat -p"
alias gc-="git checkout -"
alias gcmn="git commit --amend --no-edit"
alias k=kubectl
alias ls=exa
alias m=micro
alias n=nnn
alias tree="exa --tree"

# tell the following script not to alias the ls command:
# /Users/$USER/.oh-my-zsh/lib/theme-and-appearance.zsh
export DISABLE_LS_COLORS="true"

# misc
export PAGER="bat -p"

# micro editor
export MICRO_TRUECOLOR=1

# nnn file manager
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG="j:autojump;p:preview-tui"
