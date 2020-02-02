#####################
# Zsh Configuration #
#####################
# Automatically find new commands from $PATH
zstyle ':completion:*' rehash true

# Source the package manager
source ~/src/antigen/antigen.zsh

# Keybinding made easy
zmodload zsh/terminfo

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

###########
# Bundles #
###########
antigen bundles <<EOBUNDLES
  git
  pip
  colored-man-pages
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-autosuggestions
  zsh-users/zsh-completions
  chrissicool/zsh-256color
EOBUNDLES

###########
# Theming #
###########
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
SPACESHIP_DIR_TRUNC=2  # Limit the folders to two
SPACESHIP_TIME_12HR=true
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_KUBECONTEXT_SHOW=false

# Tell antigen that you're done.
antigen apply

###############
# Environment #
###############
# For path settings, see ~/.zprofile
source ~/.zprofile

#######################
# Alias and Functions #
#######################
alias gti="git"
alias s="git status -s"
alias tree="tree -FC"
alias vim="nvim"
#alias atom="atom-beta"
#alias apm="apm-beta"
alias rake="bundle exec rake"
alias ruby="bundle exec ruby"
alias rspec="bundle exec rspec"
function vssh () { vagrant ssh $1 -c 'sudo -i; cd' }
#function atom () { atom-beta $@ --enable-gpu-rasterization }

################
# Integrations #
################

# gcloud jank
#source /opt/google-cloud-sdk/completion.zsh.inc
#source /opt/google-cloud-sdk/path.zsh.inc

# rbenv jank
eval "$(rbenv init -)"
# ignore any .ruby_version files
rbenv shell 2.4.4

# pyenv jank
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# # wal jank
# cat ~/.cache/wal/sequences
# source ~/.cache/wal/colors-tty.sh

# gpg jank
gpg-connect-agent /bye
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# kube jank
#source <(kubectl completion zsh) || true

# terraform jank
#autoload -U +X bashcompinit && bashcompinit
#complete -o nospace -C /home/nick/bin/terraform terraform

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /home/nick/bin/vault vault

source /home/nick/.config/broot/launcher/bash/br
