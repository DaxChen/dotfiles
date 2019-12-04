#!/bin/sh
# WIP. again, a ripoff from @nicknisi 's awesome dotfiles
if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

# zsh
# brew install zsh
# brew install zsh-syntax-highlighting
# brew install zsh-autosuggestions

# https://github.com/sindresorhus/quick-look-plugins
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo

