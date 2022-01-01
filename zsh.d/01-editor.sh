#!/usr/bin/env zsh

if [ -x "$(command -v nvim)" ]; then
    alias vim=nvim
    export EDITOR=nvim
else
    export EDITOR=vim
fi
