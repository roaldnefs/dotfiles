# Enable starship, a cross-shell, minimal, blazing-fast, and infinitely
# customizable prompt. For more information see:
#  https://starship.rs/
eval "$(starship init zsh)"

source $HOME/.dockerfunc

# Golang
export GOPATH="$HOME/Go"
export PATH="$PATH:$GOPATH/bin"

# Python
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/python@3.8/lib"
export PKG_CONFIG_PATH="/usr/local/opt/python@3.8/lib/pkgconfig"
