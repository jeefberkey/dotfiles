# Startup script

# install fisher if it's not installed
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

# Terminal colors
#cat ~/.cache/wal/sequences

# pyenv
# status --is-interactive; and pyenv init - | source
# status --is-interactive; and pyenv virtualenv-init - | source

#set -Ux _JAVA_AWT_WM_NONREPARENTING 1
#set -Ux CLUTTER_BACKEND wayland
#set -Ux ECORE_EVAS_ENGINE wayland_egl
#set -Ux ELM_ENGINE wayland_egl
#set -Ux MOZ_ENABLE_WAYLAND 1
## packer/vbox has issues with this
##set -Ux QT_QPA_PLATFORM wayland-egl
#set -Ux XDG_CURRENT_DESKTOP sway
## electron has problems with this
##set -Ux GDK_BACKEND wayland

# gpg-connect-agent /bye
#set -x SSH_AUTH_SOCK 'gpgconf --list-dirs agent-ssh-socket'
#set -gx SSH_AUTH_SOCK (gnome-keyring-daemon --start | grep "^SSH_AUTH_SOCK" | awk -F "=" '{print $2}')
#if test -n "$DESKTOP_SESSION"
#  set (gnome-keyring-daemon --start | string split "=")
#end

eval (ssh-agent -c)

# set theme using starship https://starship.rs
eval (starship init fish)


