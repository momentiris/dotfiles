source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle autojump
antigen bundle npm
antigen bundle lukechilds/zsh-nvm

# syntax
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme robbyrussell

#apply
antigen apply

## User configuration

# NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Flutter
export PATH="$PATH:`pwd`/flutter/bin"

function chpwd {
  set_nvm_version
}

function set_nvm_version {
  CWD=$(pwd)
  NVM_FILE="$CWD/.nvmrc"

  if [ -e "$NVM_FILE" ]; then
    NODE_VERSION=$(cat $NVM_FILE)
    eval "nvm use $NODE_VERSION"
    EXIT_CODE=$?

    if [ $EXIT_CODE -eq 3 ]; then
      eval "nvm install $NODE_VERSION"
    fi
  fi
}

set_nvm_version

# Rupa Z

if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi


alias dockerkillall='docker kill $(docker ps -q)'
source $HOME/.aliases
