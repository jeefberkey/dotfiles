# Startup script

# Terminal colors
#cat ~/.cache/wal/sequences

# rbenv
#status --is-interactive; and source (rbenv init -|psub)

# pyenv
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source

#systemctl --user set-environment GDK_BACKEND=wayland
#systemctl --user set-environment CLUTTER_BACKEND=wayland
#systemctl --user set-environment QT_QPA_PLATFORM=wayland-egl
#systemctl --user set-environment _JAVA_AWT_WM_NONREPARENTING=1
#systemctl --user set-environment XDG_CURRENT_DESKTOP=Unity

gpg-connect-agent /bye
set -x SSH_AUTH_SOCK 'gpgconf --list-dirs agent-ssh-socket'

set -gx SSH_AUTH_SOCK (gnome-keyring-daemon --start | grep "^SSH_AUTH_SOCK" | awk -F "=" '{print $2}')

