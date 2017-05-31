#!/bin/bash
##############################
# flex.sh
# This script will install everything needed to run Symfony Flex. This means PHP7.1 and Composer will be installed.
##############################

echo -en '\E[47;32m'"\033[1mStarting the execution\033[0m"

############# Updates
apt-get update

# For php7.1
add-apt-repository ppa:ondrej/php
apt-get update
apt-get install php7.1

# For composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Move it to the path to make it available through the 'Composer' command
mv composer.phar /usr/local/bin/composer

############### Install Symfony Skeleton
mkdir demo
cd demo
composer create-project "symfony/skeleton" api
cd api

composer req webserver
composer req cli

#composer req admin
#composer req api  #this is fucked!

echo -en '\E[47;32m'"\033[1mScript ended!\033[0m"
echo -en '\E[47;32m'"\033[1mMore Information:\033[0m"
echo -en '\E[47;32m'"\033[1mhttps://medium.com/@fabpot/symfony-4-a-quick-demo-da7d32be323\033[0m"
echo -en '\E[47;32m'"\033[1mhttps://github.com/symfony/flex/\033[0m"
