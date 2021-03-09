# Enable starship, a cross-shell, minimal, blazing-fast, and infinitely
# customizable prompt. For more information see:
# https://starship.rs/
eval "$(starship init zsh)"

# Enable zsh-autosuggestions, for more information see:
# https://github.com/zsh-users/zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source $HOME/.dockerfunc

# Golang
export GOPATH="$HOME/Go"
export PATH="$PATH:$GOPATH/bin"

export TERM=xterm-256color

