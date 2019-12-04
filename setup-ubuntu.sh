#!/bin/bash

################
# zsh
################
echo "your zsh version: $(zsh --version)"
# chsh -s $(which zsh)
echo "changing shell to zsh using sudo"
sudo chsh -s $(which zsh) $(whoami)
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_CUSTOM=~/.oh-my-zsh/custom
echo "installing zsh-autosuggestions to $ZSH_CUSTOM/plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

###############
# GIT
###############
# remeber password
git config --global credential.helper store
git config --global user.name DaxChen
git config --global user.email dd@daxchen.com

#############
# SpaceVim
#############
curl -sLf https://spacevim.org/install.sh | bash
rm -rf ~/.SpaceVim.d
ln -svf ~/.dotfiles/SpaceVim.d ~/.SpaceVim.d
