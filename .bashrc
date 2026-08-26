# check if running interactively
case $- in
    *i*) ;;
      # non-interactive shell
      *) return;;
esac


# alias
gcm() { git commit -m "$@"; }           # git commit -m "message"
gaa() { git add --all "$@"; }           # git add --all

cc()  { claude "$@"; }
cx()  { codex "$@"; }


# init
eval "$(starship init bash)"
if [ -n "$MSYSTEM" ]; then
  export PATH="$HOME/AppData/Local/mise/shims:$PATH"
else
  eval "$(mise activate bash)"
fi
