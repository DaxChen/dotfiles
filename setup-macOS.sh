#!/bin/sh

##################
# APPs I use
##################
# Alfred
# better snap tool
# Dato

###################
# macOS tweaks
###################

# make Dock pop out faster
defaults write com.apple.dock autohide-time-modifier -float 0.1
# make Dock come out with out delay
defaults write com.apple.dock autohide-delay -float 0
# restart Dock
killall Dock

# enable key repeat
defaults write -g ApplePressAndHoldEnabled -bool false


################
# shell
################
# default shell
chsh -s /bin/zsh
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
ZSH_CUSTOM=~/.oh-my-zsh/custom
echo "installing zsh-autosuggestions to $ZSH_CUSTOM/plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
sed -i '' 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

# p10k
# install iterm2 before p10k for auto font installation
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i '' 's|ZSH_THEME="robbyrussell"|ZSH_THEME="powerlevel10k/powerlevel10k"|g' ~/.zshrc

# append source envs to .zshrc
echo "source ~/.dotfiles/zsh-mac.sh" >> ~/.zshrc
# source ~/.zshrc

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# NVM?
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# brew install yarn

###########
# GIT
###########
git config --global credential.helper osxkeychain

############
# tmux
############
# brew install tmux
ln -svf ~/.dotfiles/tmux/tmux-mac.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Press prefix + I (capital i) to fetch the plugin.
# use prefix + ctrl-s to save session in tmux-resurrect

