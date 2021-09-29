source ~/dotfiles/setup/functions.sh

fancy_echo "Installing VSCode"
brew cask install visual-studio-code

fancy_echo "Symlinking VSCode settings"
ln -s ~/dotfiles/Code/User ~/Library/Application\ Support/Code/User

fancy_echo "Installing VSCode plugins"
code --install-extension bradlc.vscode-tailwindcss
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.vscode-eslint
code --install-extension dracula-theme.theme-dracula
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension elmTooling.elm-ls-vscode
code --install-extension enkia.tokyo-night
code --install-extension EQuimper.react-native-react-redux
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-close-tag
code --install-extension GitHub.github-vscode-theme
code --install-extension hbenl.vscode-test-explorer
code --install-extension jaredly.reason-vscode
code --install-extension johnpapa.vscode-peacock
code --install-extension kamikillerto.vscode-colorize
code --install-extension karigari.chat
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension marnix.tokyo-night-pro
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-dotnettools.csharp
code --install-extension ms-vscode.test-adapter-converter
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension octref.vetur
code --install-extension sdras.night-owl
code --install-extension thedavej.night-owl-black