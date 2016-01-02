#!/bin/bash
echo "start backup and symbol linking..."

echo "making backup directory ~/.dotbackup..."
rm -r ~/.dotbackup
mkdir ~/.dotbackup

echo "move existing files to ~/.dotbackup..."
mv ~/.jshintrc ~/.dotbackup/ 2> /dev/null
mv ~/.jsbeautifyrc ~/.dotbackup/ 2> /dev/null
mv ~/.tern-project ~/.dotbackup/ 2> /dev/null
mv ~/.proxychains ~/.dotbackup/ 2> /dev/null

echo "start linking..."
ln -s ~/dotfiles/.jshintrc ~/.jshintrc
ln -s ~/dotfiles/.jsbeautifyrc ~/.jsbeautifyrc
ln -s ~/dotfiles/.tern-project ~/.tern-project

mkdir -p ~/.proxychains
ln -s ~/dotfiles/proxychains.conf ~/.proxychains/proxychains.conf

echo "done."
