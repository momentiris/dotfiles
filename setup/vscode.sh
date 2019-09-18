source ~/dotfiles/setup/functions.sh

fancy_echo "Installing VSCode"
brew cask install visual-studio-code

fancy_echo "Symlinking VSCode settings"
ln -s ~/dotfiles/Code/User ~/Library/Application\ Support/Code/User

fancy_echo "Installing VSCode plugins"
code --install-extension christian-kohler.path-intellisense
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension Dart-Code.dart-code
code --install-extension Dart-Code.flutter
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension freebroccolo.reasonml
code --install-extension ipedrazas.kubernetes-snippets
code --install-extension jaredly.reason-vscode
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension mikestead.dotenv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension naumovs.color-highlight
code --install-extension redhat.vscode-yaml
code --install-extension vincaslt.highlight-matching-tag
code --install-extension vscode-icons-team.vscode-icons