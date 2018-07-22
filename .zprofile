# My path settings should be higher in priority to the systems
# See https://wiki.archlinux.org/index.php/zsh#Configuring_.24PATH

typeset -U path
path=(~/.rbenv/bin ~/bin ~/.go/bin $path[@])

if [ -n "$DESKTOP_SESSION" ];then
  eval $(gnome-keyring-daemon --start)
  export SSH_AUTH_SOCK
fi

