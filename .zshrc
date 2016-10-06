#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

unsetopt CORRECT
setopt AUTO_PUSHD
setopt AUTO_CD
setopt PUSHD_TO_HOME
setopt ZLE
setopt NO_CLOBBER
setopt EXTENDED_GLOB

# go
export GOPATH="$HOME/.go"
export PATH="$PATH:$HOME/.go/bin"

# i3-sensible-terminal
export TERMINAL=gnome-terminal
export EDITOR=nvim

function vssh () {
  vagrant ssh $1 -c 'sudo -s; cd'
}

alias tree="tree -FC"
alias vim="nvim"

export PATH="$PATH:$HOME/bin" # add my bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
