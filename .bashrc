#!/bin/bash

# Don't do anything when not running interactively.
case $- in
  *i*) ;;
  *) return;;
esac

# Make bash check its window size after a process completes.
shopt -s checkwinsize

# Set colored prompt when supported.
case "$TERM" in
  xterm-color) color_prompt=yes;;
  xterm-256color) color_prompt=yes;;
esac

# Set the primary prompt based upon the color support.
if [ "$color_prompt" = yes ]; then
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='\u@\h:\w\$ '
fi
unset color_prompt

# Enable programmable completion features.
if ! shopt -oq posix; then
  if [[ -f /usr/local/etc/bash_completion ]]; then
    source /usr/local/etc/bash_completion
  fi
fi

# Include additional configuration files.
for file in ~/.{aliases,dockerfunc}; do
  if [[ -r "$file" ]] && [[ -f "$file" ]]; then
    source "$file"
  fi
done
unset file

# Suppress deprecation warning in macOS about the default interactive shell is
# now zsh.
export BASH_SILENCE_DEPRECATION_WARNING=1

# Append to the Bash history file rather than overwriting it.
shopt -s histappend

# Autocorrect typos in path names when using 'cd'.
shopt -s cdspell

