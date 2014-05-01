#!/bin/bash

# Symlink .bash_profile and other profiles
echo "Making Terminal symlinks..."
cd ~; rm .bash_profile; ln -s ~/dotfiles/.bash_profile .bash_profile
#cd ~; rm .bash_ps1; ln -s ~/dotfiles/.bash_ps1 .bash_ps1

# config git stuff
cd ~/; rm .gitignore_global; cp ~/dotfiles/.gitignore_global .gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# config vim stuff
# echo "Config vim ..."
# cd ~; rm .vimrc; cp ~/dotfiles/.vimrc .vimrc

echo ""
echo "Finished!"
read -p "Press any key to exit."


#git clone https://github.com/jelera/vim-javascript-syntax.git ~/.vim/bundle/vim-javascript-syntax


