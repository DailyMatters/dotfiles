#!/bin/bash
##############################
# gitAlias.sh
# This script will install all the git aliases needed
##############################

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -p -1 HEAD'
git config --global alias.visual "!gitk"

git config --global alias.l "log --oneline --decorate --all --graph"
git config --global alias.alias "config --get-regexp ^alias\."

git config --global alias.aa "!git add -A && git status"

