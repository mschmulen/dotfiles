#!/bin/bash

# Symlink .bash_profile and other profiles
echo "Making Terminal symlinks..."
cd ~; rm .bash_profile; ln -s ~/dotfiles/.bash_profile .bash_profile
#cd ~; rm .bash_ps1; ln -s ~/dotfiles/.bash_ps1 .bash_ps1

echo ""
echo "Finished!"
read -p "Press any key to exit."

