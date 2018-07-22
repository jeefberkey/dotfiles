# Source the package manager
source ~/src/antigen/antigen.zsh

#####################
# Zsh Configuration #
#####################
# Automatically find new commands from $PATH
zstyle ':completion:*' rehash true

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
  dnf
  gem
  colored-man-pages
  web-search
  desyncr/vagrant-zsh-completion
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-autosuggestions
  zsh-users/zsh-completions
  chrissicool/zsh-256color
  supercrabtree/k
  hlissner/zsh-autopair
EOBUNDLES

###########
# Theming #
###########
#antigen theme bira
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
SPACESHIP_DIR_TRUNC=2  # Limit the folders to two
SPACESHIP_TIME_12HR=true

# Tell antigen that you're done.
antigen apply

###############
# Environment #
###############
# For path settings, see ~/.zprofile
source ~/.zprofile
#export GDK_SCALE=2
#export GDK_DPI_SCALE=05

# Squid can be used as a local proxy to speed up testing/builds
#export http_proxy="http://localhost:3128"

#######################
# Alias and Functions #
#######################
alias gti="git"
alias s="git status -s"
alias tree="tree -FC"
alias vim="nvim"
alias atom="atom-beta"
alias apm="apm-beta"
alias rake="bundle exec rake"
function vssh () { vagrant ssh $1 -c 'sudo -i; cd' }

# GCE completion
source /opt/google-cloud-sdk/completion.zsh.inc

# rbenv jank
eval "$(rbenv init -)"
rbenv shell 2.4.4

# pyenv jank
eval "$(pyenv init -)"

# wal jank
#cat ~/.cache/wal/sequences
#source ~/.cache/wal/colors-tty.sh

# gpg jank
gpg-connect-agent /bye
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# kube jank
source <(kubectl completion zsh)
