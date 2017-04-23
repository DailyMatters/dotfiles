#!/bin/bash
##############################
# startup.sh
# This script will install everything needed to start working on a fresh linux install
##############################


############# Updates
apt-get update

############# Productivity
apt-get install vim -y
apt-get install tmux -y

############# Working

# For php7
apt-get install python-software-properties software-properties-common
LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
apt-get update

apt-get install php7.0

# For composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Move it to the path to make it available through the 'Composer' command
mv composer.phar /usr/local/bin/composer

# For git
apt-get install git -y

################ Fun and funsies
apt-get install weechat -y
apt-get install lynx -y

############### Update all packages
apt-get update