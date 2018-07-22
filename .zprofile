# My path settings should be higher in priority to the systems
# See https://wiki.archlinux.org/index.php/zsh#Configuring_.24PATH

typeset -U path

export PYENV_ROOT="$HOME/.pyenv"
export TERMINAL=gnome-terminal
export GOPATH="$HOME/.go"
export EDITOR=nvim
#export GDK_SCALE=2
#export GDK_DPI_SCALE=05

path=(~/.rbenv/bin ${PYENV_ROOT}/bin ~/bin ~/.go/bin $path[@])

if [ -n "$DESKTOP_SESSION" ];then
  eval $(gnome-keyring-daemon --start)
  export SSH_AUTH_SOCK
fi

