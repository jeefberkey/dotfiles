
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export TERMINAL=gnome-terminal

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

WAY=$(ps -aux | head -n -1 | grep "/usr/libexec/gdm-wayland-session sway")

if [ -z "$WAY" ]; then
  echo X11
else
  export GDK_BACKEND=wayland
  export CLUTTER_BACKEND=wayland
fi
