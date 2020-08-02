# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/jacquesvisser/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# BASH
mc ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}
export PS1="> "

# HEALTHFORCE
alias hf="cd ~/git/healthforce"
alias hfstart="overmind start -p 3000 -f ~/git/healthforce/Procfile.dev"

# stop Vim from moaning about the locale
export LC_ALL=en_US.UTF-8

# RUBY
source /usr/local/share/chruby/chruby.sh
chruby 2.6.6

# NODE
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

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

# .NET
export PATH="$PATH:/Users/jacquesvisser/.dotnet/tools"

# ADA
export PATH="$PATH:/Users/jacquesvisser/opt/GNAT/2020/bin"

# GIT ALIASES
alias gs="git status"
alias gaa="git add ."
alias gc="git commit"
alias gcb="git rev-parse --abbrev-ref HEAD | pbcopy"
alias gco="git branch | fzf | xargs | git checkout"
alias gdb="git branch | fzf | xargs | git branch -D"

# OTHER ALIASES
alias g="cd ~/git"
alias dc="cd ~/OneDrive/Documents && code ."
alias p="PAGER='vim -R -' psql"
