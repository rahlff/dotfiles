#!/bin/bash
############################
# create_symlinks.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Original idea from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
############################

########## Variables

dir=~/dotfiles                    		# dotfiles directory
olddir=~/dotfiles_old             		# old dotfiles backup directory
files_in_home_dir="zshrc tmux.conf"    	# list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files_in_home_dir; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# Special cases
if [ -f $dir/init.vim ]; then
	ln -s $dir/init.vim ~/.config/nvim/init.vim
fi
