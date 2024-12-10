# Startup script

# install fisher if it's not installed
if not functions -q fisher; and status is-interactive
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
end

# Terminal colors
#cat ~/.cache/wal/sequences

# if this doesn't work
# https://major.io/2022/08/05/use-gnome-keyring-with-sway/
set -gx SSH_AUTH_SOCK /run/user/(id -u)/keyring/ssh

# set theme using starship https://starship.rs
eval (starship init fish)

# 1pass plugins
if test -d ~/.config/op;
  source ~/.config/op/plugins.sh
end

mise activate fish | source
