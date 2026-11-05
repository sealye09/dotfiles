# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


# alias
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

gcm() { git commit -m "$@"; }           # git commit -m "message"
gaa() { git add --all "$@"; }           # git add --all

cc() { claude "$@"; }
cx() { codex "$@"; }


# init
eval "$(starship init bash)"
eval "$(mise activate bash)"
