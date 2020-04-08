#!/bin/sh

########################
# nvidia drivers
########################
ubuntu-drivers devices
# check detection result OK?

# if ok, autoinstall or apt manual install?
sudo ubuntu-drivers autoinstall
# sudo apt install nvidia-xxx???

# reboot

# check install result
nvidia-smi

##############
# CUDA
##############



