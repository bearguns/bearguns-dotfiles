#!/bin/bash

# Github SSH Key Generation
echo "Generating SSH Key for Github."
echo "What email should be used for this key?"

read github_email

ssh-keygen -t rsa -b 4096 -C "$github_email"
ssh-add ~/.ssh/id_rsa

echo "Copy this key and paste it into your Github settings:"
echo "https://github.com/account/ssh \n"
cat ~/.ssh/id_rsa.pub
read -p "Press [return] when you're ready to continue."

# Symlink dotfiles from downloaded repo
cd ~
ln -s ~/bearguns-dotfiles/.gitignore_global

# Git Setup
echo "What name are you using for Git?"
read full_name

git config --global user.email "$github_email"
git config --global user.name "$full_name"
git config --global core.excludesfile ~/.gitignore_global

echo "Installing packages from Pacman."
my_packages=("git" "emacs-git" "fish" "python3" "google-chrome" "firefox-developer-edition" "obs-studio" "wine-staging" "lutris" "steam" "dxvk-bin")


