alias g="cd ~/git"
alias t="cd ~/temp"

export LC_ALL=en_US.UTF-8

export PS1="\w "

alias gs="git status"
alias gaa="git add ."
alias gc="git commit"
alias gcb="git rev-parse --abbrev-ref HEAD | pbcopy"

# RUBY
# required by chruby
source /usr/local/share/chruby/chruby.sh
chruby 2.6.4

# NODE
# required by nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

