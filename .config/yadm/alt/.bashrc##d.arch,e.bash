[ -z "$PS1" ] && return

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

[[ -f /usr/share/fzf/key-bindings.bash ]] && source /usr/share/fzf/key-bindings.bash || warning "[$0] cannot find key-bindings.bash of fzf"

eval "$(zoxide init bash)"
eval "$(direnv hook bash)"
eval "$(starship init bash)"
