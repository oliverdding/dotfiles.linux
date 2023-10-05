[ -z "$PS1" ] && return

[[ -f $HOME/.config/fzf/key-bindings.bash ]] && source $HOME/.config/fzf/key-bindings.bash || warning "[$0] cannot find key-bindings.bash of fzf"

eval "$(zoxide init bash)"
eval "$(direnv hook bash)"
eval "$(starship init bash)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/data/home/oliverdding/.local/share/sdkman"
[[ -s "/data/home/oliverdding/.local/share/sdkman/bin/sdkman-init.sh" ]] && source "/data/home/oliverdding/.local/share/sdkman/bin/sdkman-init.sh"
