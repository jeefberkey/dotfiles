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
SPACESHIP_PROMPT_TRUNC=2  # Limit the folders to two
SPACESHIP_RUBY_SHOW=false # Disable the rbenv thing

# Tell antigen that you're done.
antigen apply

###############
# Environment #
###############
# For path settings, see ~/.zprofile
source ~/.zprofile
export TERMINAL=gnome-terminal
export GOPATH="$HOME/.go"
export EDITOR=nvim
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
alias rake="bundle exec rake"
function vssh () { vagrant ssh $1 -c 'sudo -i; cd' }

# rbenv jank
eval "$(rbenv init -)"

# wal jank
(wal -r &)

