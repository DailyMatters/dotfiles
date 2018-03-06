#!/bin/bash
##############################
# vmStartup.sh
# This script will install everything needed to start working on a linux virtual machine
##############################

echo -en '\E[47;32m'"\033[1mStarting the execution\033[0m"

############# Updates
apt-get update

############# Productivity
apt-get install vim-gnome -y
apt-get install tmux -y
apt-get install htop -y
apt-get install exuberant-ctags -y

############# Working

# For php7
apt-get install python-software-properties software-properties-common
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
apt-get update

apt-get install php7.0 -y

# For composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Move it to the path to make it available through the 'Composer' command
mv composer.phar /usr/local/bin/composer

############### Adding git aliases
git config --global alias.aa "!git add -A && git status"
git config --global alias.st "status"
git config --global alias.l "log --oneline --decorate --all --graph"
git config --global alias.alias "config --get-regexp ^alias\."

############### Update all packages
apt-get update

echo -en '\E[47;32m'"\033[1mScript ended!\033[0m"
