# check if running interactively
case $- in
    *i*) ;;
      # non-interactive: in vscode's tools、agents
      # add mise shims to PATH
      # https://mise.jdx.dev/dev-tools/shims.html#mise-activate-shims

      # do nothing
      *) return;;
esac


# alias
gcm() { git commit -m "$@"; }           # git commit -m "message"
gaa() { git add --all "$@"; }           # git add --all

cc() { claude "$@"; }
cx() { codex "$@"; }


# init
eval "$(starship init bash)"

# in Windows
if [ -n "$MSYSTEM" ]; then
  # eval "$(mise activate bash)"
  export PATH="$HOME/AppData/Local/mise/shims:$PATH"
else
  eval "$(mise activate bash)"
fi
