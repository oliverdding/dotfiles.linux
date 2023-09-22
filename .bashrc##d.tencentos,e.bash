[ -z "$PS1" ] && return

[[ -f $HOME/.config/fzf/key-bindings.bash ]] && source $HOME/.config/fzf/key-bindings.bash || warning "[$0] cannot find key-bindings.bash of fzf"

eval "$(zoxide init bash)"
eval "$(direnv hook bash)"
eval "$(starship init bash)"
