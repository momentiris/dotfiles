zmodload zsh/zprof
source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle npm
antigen bundle fnm

# syntax
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

#apply
antigen apply

################################################################
# React-Native
################################################################
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=“$HOME/.fastlane/bin:./node_modules/.bin:$PATH”


#FNM
eval "$(fnm env)"

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
