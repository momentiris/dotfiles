source ~/dotfiles/setup/functions.sh

fancy_echo "Installing VSCode"
brew cask install visual-studio-code

fancy_echo "Symlinking VSCode settings"
ln -s ~/dotfiles/Code/User ~/Library/Application\ Support/Code/User

fancy_echo "Installing VSCode plugins"
code --install-extension alexkrechik.cucumberautocomplete
code --install-extension be5invis.vscode-custom-css
code --install-extension christian-kohler.path-intellisense
code --install-extension cmstead.jsrefactor
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension Dart-Code.dart-code
code --install-extension Dart-Code.flutter
code --install-extension daylerees.rainglow
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.githistory
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension file-icons.file-icons
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension GitHub.vscode-pull-request-github
code --install-extension johnpapa.vscode-peacock
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension karigari.chat
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension mikestead.dotenv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension naumovs.color-highlight
code --install-extension octref.vetur
code --install-extension sleistner.vscode-fileutils
code --install-extension techer.open-in-browser
code --install-extension vincaslt.highlight-matching-tag
code --install-extension vscode-icons-team.vscode-icons
code --install-extension wesbos.theme-cobalt2
code --install-extension wix.vscode-import-cost