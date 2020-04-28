#!/bin/bash

########
# common 
########
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev python3-pip
# # python3.7
# sudo apt install -y software-properties-common
# sudo add-apt-repository ppa:deadsnakes/ppa
# sudo apt install python3.7
# python3.7 --version


################
# zsh
################
echo "your zsh version: $(zsh --version)"
# chsh -s $(which zsh)
echo "changing shell to zsh using sudo"
sudo chsh -s $(which zsh) $(whoami)
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

ZSH_CUSTOM=~/.oh-my-zsh/custom
echo "installing zsh-autosuggestions to $ZSH_CUSTOM/plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

# p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's|ZSH_THEME="robbyrussell"|ZSH_THEME="powerlevel10k/powerlevel10k"|g' ~/.zshrc


# append source envs to .zshrc
echo "source ~/.dotfiles/zsh-ubuntu.sh" >> ~/.zshrc
source ~/.zshrc

###############
# GIT
###############
# remeber password
git config --global credential.helper store
git config --global user.name DaxChen
git config --global user.email dd@daxchen.com
git config --global push.default simple

#############
# SpaceVim
#############
curl -sLf https://spacevim.org/install.sh | bash
rm -rf ~/.SpaceVim.d
ln -svf ~/.dotfiles/SpaceVim.d ~/.SpaceVim.d
# pynvim
pip3 install --user pynvim
# list installed vim
apt list --installed | grep vim
# new fat vim version?
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim-gtk3


###########
# tmux
###########
ln -svf ~/.dotfiles/tmux/tmux-ubuntu.conf ~/.tmux.conf
