source ~/dotfiles/setup/functions.sh

if ! command -v brew >/dev/null; then
  fancy_echo "Installing Homebrew ..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap caskroom/cask
  brew tap caskroom/versions
fi

if brew list | grep -Fq brew-cask; then
  fancy_echo "Uninstalling old Homebrew-Cask ..."
  brew uninstall --force brew-cask
fi

brew update && brew install `brew outdated`

fancy_echo "Installing CLI tools..."
brew install openssl
brew install zsh
brew install zsh-completions
brew install z
brew install watchman # needed for jest --watch
brew install git
brew install antigen

fancy_echo "Setting up Node with NVM..."
mkdir ~/.nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install node
nvm alias default node

fancy_echo "Setting up misc applications"
brew tap caskroom/cask
brew cask install google-chrome
brew cask install iterm2
brew cask install spectacle