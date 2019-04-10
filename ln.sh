#!/bin/sh
##################
# NOTE this is currently just a note, don't run it as any script yet
##################

# zsh
##############
# @sindresorhus's pure theme: https://github.com/sindresorhus/pure
# first create folders if needed
mkdir -p ~/.oh-my-zsh/custom/themes
# symlink the theme file
ln -s ~/.dotfiles/node_modules/pure-prompt/pure.zsh ~/.oh-my-zsh/custom/themes/pure.zsh-theme
# finally, now you can set `ZSH_THEME="pure"` in the `~/.zshrc` file


# # nvim (start nvim with `nvim + PlugInstall`)
# ln -s ~/.dotfiles/config/nvim ~/.config/nvim
# # vim
# ln -s ~/.config/nvim/init.vim ~/.vimrc
# SpaceVim
ln -sf ~/.dotfiles/SpaceVim.d ~/.SpaceVim.d


# tmux
ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf


# karabiner config file
ln -s ~/.dotfiles/karabiner/karabiner.json ~/.karabiner.d/configuration/karabiner.json
