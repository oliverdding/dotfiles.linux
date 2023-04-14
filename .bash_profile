# Load systemd user environment variables
export $(run-parts /usr/lib/systemd/user-environment-generators | xargs)

[[ -f ~/.bashrc ]] && . ~/.bashrc
