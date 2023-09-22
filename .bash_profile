# Load systemd user environment variables
export $(run-parts /usr/lib/systemd/user-environment-generators | sed '/:$/d; /^$/d' | xargs)

[[ -f ~/.bashrc ]] && . ~/.bashrc
