source ~/src/antigen/antigen.zsh

# automatically find new commands from $PATH
zstyle ':completion:*' rehash true

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
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

# Load the theme.
#antigen theme bira
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
SPACESHIP_PROMPT_TRUNC=2  # Limit the folders to two
SPACESHIP_RUBY_SHOW=false # Disable the rbenv thing

# Tell antigen that you're done.
antigen apply

export TERMINAL=gnome-terminal
export GOPATH="$HOME/.go"
export EDITOR=nvim
# for path settings, see ~/.zprofile

# squid i guess? not sure yet
export http_proxy="http://localhost:3128"

function vssh () { vagrant ssh $1 -c 'sudo -i; cd' }

alias tree="tree -FC"
alias vim="nvim"
alias rake="bundle exec rake"

# rbenv jank
eval "$(rbenv init -)"

