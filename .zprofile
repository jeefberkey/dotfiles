# My path settings should be higher in priority to the systems
# See https://wiki.archlinux.org/index.php/zsh#Configuring_.24PATH

typeset -U path

export PYENV_ROOT="$HOME/.pyenv"
export TERMINAL=gnome-terminal
export GOPATH="$HOME/.go"
export EDITOR=nvim

# https://github.com/swaywm/sway/wiki/Running-programs-natively-under-Wayland
GDK_BACKEND=wayland
CLUTTER_BACKEND=wayland
QT_QPA_PLATFORM=wayland-egl
_JAVA_AWT_WM_NONREPARENTING=1

path=(~/.rbenv/bin ${PYENV_ROOT}/bin ~/bin ~/.go/bin $path[@])
PIPENV_PYTHON="$PYENV_ROOT/shims/python"

if [ -n "$DESKTOP_SESSION" ];then
  eval $(gnome-keyring-daemon --start)
  export SSH_AUTH_SOCK
fi

