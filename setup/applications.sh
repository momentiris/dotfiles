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

fancy_echo "Installing fnm..."
curl -fsSL https://fnm.vercel.app/install | bash

fancy_echo "Installing development applications and tools..."
brew install openssl
brew install zsh
brew install z
brew install antigen
brew install dotnet
brew install iterm2
brew install tableplus
brew install spectacle
brew install ripgrep
brew install libpq


fancy_echo "Setting up misc applications"
brew tap caskroom/cask
brew install google-chrome
brew install spotify
brew install telegram
brew install signal
brew install slack
brew install discord
