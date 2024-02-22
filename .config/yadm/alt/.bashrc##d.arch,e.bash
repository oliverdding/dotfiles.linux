[ -z "$PS1" ] && return

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

[[ -f /usr/share/fzf/key-bindings.bash ]] && source /usr/share/fzf/key-bindings.bash || echo "[$0] cannot find key-bindings.bash of fzf"

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
