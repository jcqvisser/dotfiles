alias g="cd ~/git"
alias t="cd ~/temp"
export LC_ALL=en_US.UTF-8

export PS1="> "

alias gs="git status"
alias gaa="git add ."
alias gc="git commit"
alias gcb="git rev-parse --abbrev-ref HEAD | pbcopy"

alias sourceenv="set -o allexport; source .env; set +o allexport"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


alias pp="cd ~/git/power-pulse"
alias gn="cd ~/git/gnius"


# ruby
# source /usr/local/opt/chruby/share/chruby/chruby.sh
# source /usr/local/opt/chruby/share/chruby/auto.sh

# display pwd as title
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

# HISTORY
alias h="vim \"+ normal G $\" ~/.zsh_history"
# Add timestamp to history
# setopt EXTENDED_HISTORY
# setopt INC_APPEND_HISTORY

# heroku autocomplete setup
# HEROKU_AC_ZSH_SETUP_PATH=/Users/jcqvisser/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# chruby
# source /usr/local/share/chruby/chruby.sh
# chruby ruby-3.0.2

# android
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# flutter
# export PATH="$PATH:/Users/jcqvisser/Development/flutter/bin"

# dotnet
# export PATH="$PATH:/Users/jcqvisser/.dotnet/tools"
