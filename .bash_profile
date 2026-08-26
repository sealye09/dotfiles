# load bashrc
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# init mise shims
$(mise activate bash --shims)
