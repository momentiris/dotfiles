source ~/dotfiles/setup/functions.sh

fancy_echo "Installing VSCode"
brew cask install visual-studio-code

fancy_echo "Symlinking VSCode settings"
ln -s ~/dotfiles/Code/User ~/Library/Application\ Support/Code/User

fancy_echo "Installing VSCode plugins"
code --install-extension bradlc.vscode-tailwindcss
code --install-extension chenglou92.rescript-vscode
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension elmTooling.elm-ls-vscode
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-close-tag
code --install-extension hbenl.vscode-test-explorer
code --install-extension Ionide.Ionide-FAKE
code --install-extension Ionide.Ionide-fsharp
code --install-extension Ionide.Ionide-Paket
code --install-extension johnpapa.vscode-peacock
code --install-extension kamikillerto.vscode-colorize
code --install-extension karigari.chat
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-dotnettools.csharp
code --install-extension ms-vscode.test-adapter-converter
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension octref.vetur
code --install-extension paolodellepiane.fantomas-fmt
code --install-extension sdras.night-owl
code --install-extension Shan.code-settings-sync
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension thedavej.night-owl-black