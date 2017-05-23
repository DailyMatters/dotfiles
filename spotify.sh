#!/bin/bash
##############################
# spotify.sh
# This script will install spotify on your linux system
##############################

################ For Spotify
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt-get update
apt-get install spotify-client
