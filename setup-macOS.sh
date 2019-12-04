#!/bin/sh

# make Dock pop out faster
defaults write com.apple.dock autohide-time-modifier -float 0.1
# make Dock come out with out delay
defaults write com.apple.dock autohide-delay -float 0
