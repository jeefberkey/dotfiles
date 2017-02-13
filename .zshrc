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
alias rake="bundle exec rake"

export PATH="$PATH:$HOME/bin" # add my bin

# wrap for hub
eval "$(hub alias -s)"

# prezto prompt
autoload -Uz promptinit
promptinit
prompt paradox

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# squid i guess? not sure yet
export http_proxy="http://localhost:3128"

