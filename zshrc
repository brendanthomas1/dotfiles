# load system-specific customization
source ~/.custom_dotfiles/.zshrc

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Auto update ohmyzsh
DISABLE_UPDATE_PROMPT=true

# set editor to vim
export EDITOR='vim'

# use chruby for ruby versions
source /usr/local/share/chruby/chruby.sh
# set to ruby 2.3 by default
chruby 2.3

ZSH_THEME="robbyrussell"

# Plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(git)

source $ZSH/oh-my-zsh.sh

# source tmuxinator
source ~/.bin/tmuxinator.zsh

# make autojump work (brew install)
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias be="bundle exec"
alias dj="python manage.py" # for Django commands
alias migrate="bin/rake db:migrate"
alias migrate:reset="bin/rake db:migrate:reset"
alias seed="bin/rake db:seed"
alias krs1="git status --porcelain | cut -c4- | grep '\.rb' | xargs bundle exec rubocop"
