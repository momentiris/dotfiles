source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle npm
antigen bundle lukechilds/zsh-nvm

# syntax
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

#apply
antigen apply


# NVM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Flutter
export PATH="$PATH:`pwd`/flutter/bin"

#Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

################################################################
# React-Native
################################################################
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=“$HOME/.fastlane/bin:./node_modules/.bin:$PATH”

function chpwd {
  set_fnm_version
}

function set_fnm_version {
  CWD=$(pwd)
  NVM_FILE="$CWD/.nvmrc"

  if [ -e "$NVM_FILE" ]; then
    NODE_VERSION=$(cat $NVM_FILE)
    eval "fnm use $NODE_VERSION"
    EXIT_CODE=$?

    if [ $EXIT_CODE -eq 3 ]; then
      eval "fnm install $NODE_VERSION"
    fi
  fi
}

set_fnm_version

# Rupa Z

if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi


source $HOME/.aliases

# added by travis gem
[ -f /Users/andreaslundqvist/.travis/travis.sh ] && source /Users/andreaslundqvist/.travis/travis.sh

# fnm
eval "$(fnm env --multi)"
