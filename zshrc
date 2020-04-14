# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jacquesvisser/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# expected aliases
alias g="cd ~/git"
alias t="cd ~/temp"

# HEALTHFORCE
alias hf="cd ~/git/healthforce"
alias burnitall="rails db:drop db:create db:migrate db:seed:policies import:v1:edl_medication_import import:v1:edl_medication_lookup"
alias itall="rails consent_documents:create_defaults db_views:create db:seed:development"
# then:
# Flipper[:videomed].enable; Flipper.enable(:nurse_review); Flipper.enable(:doctor_review); Views::MedicalAidOption.create
alias cclimate="docker run \
  --interactive --tty --rm \
  --env CODECLIMATE_CODE="$PWD" \
  --volume "$PWD":/code \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  --volume /tmp/cc:/tmp/cc \
  codeclimate/codeclimate analyze"

alias hfstart="overmind start -p 3000 -f ~/git/healthforce/Procfile.dev"

# stop Vim from moaning about the locale
export LC_ALL=en_US.UTF-8

export PS1="> "

# GIT aliases

alias gs="git status"
alias gaa="git add ."
alias gc="git commit"
alias gcb="git rev-parse --abbrev-ref HEAD | pbcopy"
alias gco="git branch | fzf | xargs | git checkout"
alias gdb="git branch | fzf | xargs | git branch -D"

# RUBY
source /usr/local/share/chruby/chruby.sh
chruby 2.6.6

# NODE
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# PSQL
alias p="PAGER='vim -R -' psql"

# RAILS
alias rs="bundle exec rspec"
alias qr="bin/rails db:environment:set RAILS_ENV=development db:drop db:create db:migrate"

# JENV
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# UTF8 Support for Tmux
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


# GOLANG
[[ -s "/Users/jacquesvisser/.gvm/scripts/gvm" ]] && source "/Users/jacquesvisser/.gvm/scripts/gvm"
gvm use go 1.13.6

# FLUTTER
export PATH="$PATH:/Users/jacquesvisser/flutter/bin"

