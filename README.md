# . my dotfiles 

![screenshot](i.ibb.co/fxbQ7Ky/2021-04-02-094903-3840x1080-scrot.png)

## Backup following [durdn's](https://www.atlassian.com/git/tutorials/dotfiles) method.
Storing dotfiles in a bare git repository a simple method that requires no symlinks. Files are tracked on github, different branches can be used for different computers and you can easily replicate your dotfiles on a new system.

The technique utilises a [bare](https://www.geeksforgeeks.org/bare-repositories-in-git/) repository in a backup directory such as $HOME/.cfg or $HOME/.dotfiles alongside an alias that allows us to run .git commands to our backup directory instead of the local directory.

## Contents
* [Setup](#Setup)
* [Backup](#Backup)

## Setup

To start enter these commands at the command line

* First we initiate a bare repository in our target directory
```git
git init --bare $HOME/.dotfiles
```
* This creates the alias essential for this method this can either be added to our bashrc manually
```bash
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
* or using the following command
```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```
* then hide files we are not explicitly tracking, this is so that only files we are interested in show up when we use commands like `config status` later.

## Backup
After completing these steps we are ready to version control our dotfiles using the aliase we created in setup.
```git
config status
config add .bashrc
config commit -m "add bashrc"
config push
```
