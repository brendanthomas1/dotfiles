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
source /usr/local/share/chruby/auto.sh
# set to ruby 2.4 by default
# chruby 2.4
echo 'ruby-2.4.4' > ~/.ruby-version

ZSH_THEME="dracula"

# Plugins can be found in ~/.oh-my-zsh/plugins/*
plugins=(git chruby asdf docker)

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
alias gitbat="git status --porcelain | cut -c4- | grep '\.rb' | xargs bat"
alias default_ruby="~/scripts/default_ruby.sh"
alias httpcb="http -a operator@test.com:testing!"
alias gcod="git checkout db/schema.rb"

# ssh to envs
alias spc1="ssh mitspc1n1.cmmint.net"
alias spc2="ssh mitspc2n1.cmmint.net"
alias spc3="ssh mitspc3n1.cmmint.net"
alias spc4="ssh mitspc4n1.cmmint.net"
alias spc5="ssh mitspc5n1.cmmint.net"
alias spc6="ssh mitspc6n1.cmmint.net"
alias spc7="ssh mitspc7n1.cmmint.net"
alias spc8="ssh mitspc8n1.cmmint.net"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm use 6.9.1
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
