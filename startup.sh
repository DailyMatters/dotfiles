#!/bin/bash
##############################
# startup.sh
# This script will install everything needed to start working on a fresh linux install
##############################

echo -en '\E[47;32m'"\033[1mStarting the execution\033[0m"

############# Updates
apt-get update

############# Productivity
apt-get install vim-gnome -y
apt-get install tmux -y
apt-get install htop -y
apt-get install exuberant-ctags -y
apt-get install gitk -y

############# Working

# For php7
apt-get install python-software-properties software-properties-common

sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.1

# Some phpunit for good measure
apt-get install phpunit -y

# For composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"


# Move it to the path to make it available through the 'Composer' command
mv composer.phar /usr/local/bin/composer

# Install latest version of phpunit
wget https://phar.phpunit.de/phpunit-6.5.phar
$ chmod +x phpunit-6.5.phar
$ sudo mv phpunit-6.5.phar /usr/local/bin/phpunit

# Install php-c-fixer for better Vim code
wget http://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -O php-cs-fixer
chmod a+x php-cs-fixer
mv php-cs-fixer /usr/local/bin/php-cs-fixer

################ Fun and funsies
apt-get install weechat -y
apt-get install lynx -y

############### Adding git configuration
git config --global user.name "Claudio Ribeiro"
git config --global user.email "claudio.santos.ribeiro@gmail.com"
git config --global core.editor vim
git config --global merge.tool vimdiff

git config --global color.auto auto
git config --global color.branch auto
git config --global color.interactive auto
git config --global color.diff auto

chmod +x gitAlias.sh
source gitAlias.sh

############### Setting up Vundle
#  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

############### Update all packages
apt-get update

echo -en '\E[47;32m'"\033[1mScript ended!\033[0m"
