#!/bin/bash
sudo apt update && sudo apt upgrade

sudo apt install -y curl wget
sudo apt install -y git build-essential

################
# zsh
################
sudo apt install -y zsh
echo "your zsh version: $(zsh --version)"
echo "changing shell to zsh"
chsh -s $(which zsh)
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

ZSH_CUSTOM=~/.oh-my-zsh/custom
echo "installing zsh-autosuggestions to $ZSH_CUSTOM/plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

#################
# powerlevel10k
#################
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
sed -i 's|ZSH_THEME="robbyrussell"|ZSH_THEME="powerlevel10k/powerlevel10k"|g' ~/.zshrc

# fonts for powerlevel10k
echo go to https://github.com/romkatv/powerlevel10k#fonts to download and install fonts

# append source envs to .zshrc
echo "source ~/.dotfiles/zsh-ubuntu.sh" >> ~/.zshrc

###############
# GIT
###############
# remeber password
git config --global credential.helper store
git config --global user.name DaxChen
git config --global user.email dd@daxchen.com
git config --global push.default simple

#############
# python pip
#############
sudo apt install -y python3-pip

#############
# SpaceVim
#############
sudo apt remove -y vim-tiny
sudo apt install -y vim-gtk3
pip3 install --user pynvim

curl -sLf https://spacevim.org/install.sh | bash
rm -rf ~/.SpaceVim.d
ln -svf ~/.dotfiles/SpaceVim.d ~/.SpaceVim.d
ln -svf ~/.dotfiles/.wakatime.cfg ~/.wakatime.cfg

###########
# tmux
###########
sudo apt install -y tmux xclip
ln -svf ~/.dotfiles/tmux/tmux-ubuntu.conf ~/.tmux.conf


####################
# THEMES!!!
####################
# gnome-tweaks should already be there!
# sudo apt install gnome-tweaks
# themes
# sudo apt install arc-theme
# icons
# sudo apt install adwaita-icon-theme-full
# sudo add-apt-repository -u ppa:snwh/ppa
# sudo apt install paper-icon-theme
# dock: Dash to Dock?
# https://extensions.gnome.org/extension/307/dash-to-dock/

# MacBuntu?!
# https://www.noobslab.com/2018/08/macbuntu-1804-transformation-pack-ready.html



