alias g="cd ~/git"
alias t="cd ~/temp"

export LC_ALL=en_US.UTF-8

export PS1="> "

alias gs="git status"
alias gaa="git add ."
alias gc="git commit"
alias gcb="git rev-parse --abbrev-ref HEAD | pbcopy"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


alias pp="cd ~/git/power-pulse"
alias gn="cd ~/git/gnius"


# ruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# display pwd as title
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}
