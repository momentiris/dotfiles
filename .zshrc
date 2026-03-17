zmodload zsh/zprof
source $(brew --prefix)/share/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle npm

# syntax
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

#apply
antigen apply

# Show full user-relative dir path in prompt 
export PROMPT=${PROMPT//\%c/\%~}

#FNM
eval "$(fnm env --use-on-cd --version-file-strategy=recursive)"

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

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/andlundq/Downloads/google-cloud-sdk 2/path.zsh.inc' ]; then . '/Users/andlundq/Downloads/google-cloud-sdk 2/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/andlundq/Downloads/google-cloud-sdk 2/completion.zsh.inc' ]; then . '/Users/andlundq/Downloads/google-cloud-sdk 2/completion.zsh.inc'; fi

# bun completions
[ -s "/Users/andlundq/.bun/_bun" ] && source "/Users/andlundq/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# dune
source $HOME/.local/share/dune/env/env.zsh


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/andlundq/.opam/opam-init/init.zsh' ]] || source '/Users/andlundq/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

# pnpm
export PNPM_HOME="/Users/andlundq/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export DYLD_FALLBACK_LIBRARY_PATH=/opt/homebrew/lib

export JAVA_HOME="$(brew --prefix openjdk@21)/libexec/openjdk.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"
