zmodload zsh/zprof
source $(brew --prefix)/share/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle npm
# antigen bundle fnm

# syntax
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

#apply
antigen apply


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

export PATH="/Users/andlundq/Library/Android/sdk/platform-tools/:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# fnm
# export PATH="/Users/andreaslundqvist/Library/Application Support/fnm:$PATH"
# eval "`fnm env`"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# opam configuration
[[ ! -r /Users/andreaslundqvist/.opam/opam-init/init.zsh ]] || source /Users/andreaslundqvist/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andlundq/Downloads/google-cloud-sdk 2/path.zsh.inc' ]; then . '/Users/andlundq/Downloads/google-cloud-sdk 2/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andlundq/Downloads/google-cloud-sdk 2/completion.zsh.inc' ]; then . '/Users/andlundq/Downloads/google-cloud-sdk 2/completion.zsh.inc'; fi

# bun completions
[ -s "/Users/andlundq/.bun/_bun" ] && source "/Users/andlundq/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# dune
source $HOME/.dune/env/env.zsh
