[ -z "$PS1" ] && return

[[ -f $HOME/.config/fzf/key-bindings.bash ]] && source $HOME/.config/fzf/key-bindings.bash || echo "[$0] cannot find key-bindings.bash of fzf"

function ya() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

eval "$(zoxide init bash)"
eval "$(direnv hook bash)"
eval "$(starship init bash)"
